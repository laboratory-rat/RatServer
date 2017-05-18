import '../controllers/HelloController.dart';
import '../core/RatServer.dart';
import 'IStartupService.dart';
import 'dart:async';

import 'package:rpc/rpc.dart';

class StartupApi implements IStartupService
{


    @override
    Future configure(RatServer server) async{
        server.apiServer = new ApiServer();
        server.apiServer.addApi(new HelloController());
    }
}