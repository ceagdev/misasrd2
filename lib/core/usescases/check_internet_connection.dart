import '../entities/network_info.dart';

abstract class CheckInternetConnection {
  Future<bool> call();
}

class CheckInternetConnectionImpl implements CheckInternetConnection {
  final NetworkInfo networkInfo;

  CheckInternetConnectionImpl(this.networkInfo);

  @override
  Future<bool> call() async {
    return networkInfo.isConnected;
  }
}