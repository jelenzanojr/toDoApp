import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/presentation/core/core.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._productRepository,
    // this._env,
  ) : super(const _Loading()) {
    on<_LoadData>(
      _onLoadData,
      transformer: restartable(),
    );

    on<_Load>(
      _onLoading,
      transformer: restartable(),
    );

    on<_Delete>(
      _onDelete,
      transformer: restartable(),
    );
  }

  final ProductRepository _productRepository;
  int _currentPage = 0;
  final int _limit = 7;
  List<ProductEntityData> contractsG = <ProductEntityData>[];
  String lastSearch = '';

  Future<void> _onLoading(
    _Load event,
    Emitter<HomeState> emit,
  ) async {
    emit(const _Loading());
  }

  Future<void> _onLoadData(
    _LoadData event,
    Emitter<HomeState> emit,
  ) async {
    _Done st;

    if (state is _Done) {
      st = state as _Done;
    }
    emit(const _Loading());

    if (event.search != null) lastSearch = event.search!;

    final result = await _productRepository.findAll(
      event.search ?? '',
      _limit,
      0,
    );

    result.when(
      success: (products) {
        contractsG
          ..clear()
          ..addAll(products);
        lastSearch = event.search ?? '';
        _currentPage = 0;
        emit(
          _Done(contractsG),
        );
      },
      error: (error) => emit(
        _Done(
          contractsG,
          error: error,
        ),
      ),
    );
  }

  Future<void> _onDelete(
    _Delete event,
    Emitter<HomeState> emit,
  ) async {
    _Done st;

    if (state is _Done) {
      st = state as _Done;
      emit(
        st.copyWith(
          loading: true,
          error: null,
          message: null,
        ),
      );
    }

    final result = await _productRepository.delete(event.product);

    result.when(
      success: (sol) {
        var message = 'Eliminado correctamente';
        if (!sol) {
          message = 'Error al eliminar';
        } else {
          add(const HomeEvent.loadData(null));
        }
        emit(
          _Done(contractsG, message: message),
        );
        add(const HomeEvent.loadData(''));
      },
      error: (error) => emit(
        _Done(
          contractsG,
          error: error,
        ),
      ),
    );
  }

  Future<List<ProductEntityData>> cargarDatos() async {
    final contractI = <ProductEntityData>[];

    final result = await _productRepository.findAll(
      lastSearch,
      _limit,
      _currentPage * _limit,
    );

    result.when(
      success: (contracts) {
        contractsG.addAll(contracts);
        contractI.addAll(contracts);
        _currentPage++;
      },
      error: (error) {},
    );
    return contractI;
  }
}
