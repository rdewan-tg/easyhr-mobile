enum AdLoadStatus { initial, loading, loaded, failed }

class AdLoadState {
  const AdLoadState({this.status = AdLoadStatus.initial, this.errorMessage});

  final AdLoadStatus status;
  final String? errorMessage;

  bool get isLoaded => status == AdLoadStatus.loaded;
  bool get isLoading => status == AdLoadStatus.loading;

  AdLoadState copyWith({AdLoadStatus? status, String? errorMessage}) {
    return AdLoadState(
      status: status ?? this.status,
      errorMessage: errorMessage,
    );
  }
}
