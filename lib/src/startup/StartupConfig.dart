import '../core/RatServer.dart';
import 'IStartupService.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class StartupConfig implements IStartupService
{
    
    @override
    Future configure(RatServer server) async{
        var files = new Directory('lib\\configs').listSync(recursive: true).where((test) => test is File && test.path.endsWith('.json'));

        for(var file in files)
        {
            var key = file.path.split('\\').last.replaceAll('.json', '').toLowerCase();
            var value = JSON.decode((file as File).readAsStringSync());

            if(!server.config.containsKey(key))
                server.config[key] = value;
        }

    }
}