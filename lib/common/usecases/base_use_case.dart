import 'dart:async';

import 'package:template/common/models/resource_state.dart';

abstract class BaseUseCase<REQ, RES> {
  FutureOr<ResourceState<RES>> invoke(REQ request);
}
