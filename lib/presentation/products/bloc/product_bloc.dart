import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/presentation/core/core.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(
    this._productRepository,
  ) : super(const _Loading()) {
    on<_LoadData>(
      _onLoadData,
      transformer: restartable(),
    );

    on<_Load>(
      _onLoading,
      transformer: restartable(),
    );
    on<_SelectItem>(
      _onSelectItem,
      transformer: restartable(),
    );
    on<_ImportData>(
      _onImportData,
      transformer: restartable(),
    );
  }

  final ProductRepository _productRepository;

  Future<void> _onLoading(
    _Load event,
    Emitter<ProductState> emit,
  ) async {
    emit(const _Loading());
  }

  Future<void> _onLoadData(
    _LoadData event,
    Emitter<ProductState> emit,
  ) async {
    // if (state is _Error) {
    //   emit(const _Loading());
    // }

    _Done st;
    var products = <Product>[];
    if (state is _Done) {
      st = state as _Done;
      products = st.products;
      emit(
        st.copyWith(
          loading: true,
          error: null,
          message: null,
          successful: null,
        ),
      );
    }

    final result = await _productRepository.findAllApi();

    result.when(
      success: (routes) {
        emit(
          _Done(routes, message: 'Productos obtenidos', successful: true),
          // _Done(products: List.empty(), loading: false),
          // _InitProducts(),
        );
      },
      error: (error) => emit(_Done(products, error: error)),
    );
  }

  Future<void> _onImportData(
    _ImportData event,
    Emitter<ProductState> emit,
  ) async {
    // if (state is _Error) {
    //   emit(const _Loading());
    // }

    if (state is _Done) {
      final currentState = state as _Done;

      emit(
        currentState.copyWith(
          loading: true,
          error: null,
          message: null,
          successful: null,
        ),
      );

      final result = await _productRepository.insertProductFromApi(
        currentState.products,
      );

      result.when(
        success: (routes) {
          emit(
            currentState.copyWith(
              message: 'Productos importados',
              successful: true,
              error: null,
            ),
          );
        },
        error: (error) => emit(
          currentState.copyWith(
            error: error,
            successful: null,
            message: null,
          ),
        ),
      );
    }
  }

  Future<void> _onSelectItem(
    _SelectItem event,
    Emitter<ProductState> emit,
  ) async {
    if (state is _Done) {
      final currentState = state as _Done;
      final selectedItems = Set<String>.from(currentState.selectedItems);
      final products = <Product>[]..insertAll(0, currentState.products);
      var i = 0;
      for (i = 0; i < products.length; i++) {
        if (products[i].id == event.id) {
          break;
        }
      }

      final newProduct = products[i].copyWith(isSelect: event.isSelected);
      products
        ..removeAt(i)
        ..insert(i, newProduct);

      if (event.isSelected) {
        selectedItems.add(event.id);
      } else {
        selectedItems.remove(event.id);
      }

      emit(
        currentState.copyWith(
          products: products,
          selectedItems: selectedItems,
          error: null,
          successful: null,
          message: null,
        ),
      );
    }
  }
}
