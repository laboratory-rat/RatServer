import 'dart:io';
import 'package:ratserver/ratserver.dart';

List<IStartupService> startUp = [
    new StartupConfig(),
    new StartupApi()
];

main() async
{
    
    var server = new RatServer();
    
    print('Configure startup services');
    await startUp.forEach((service) => service.configure(server));

    print('Start server');
    HttpServer http = await HttpServer.bind(InternetAddress.ANY_IP_V4, server.config['general']['port']);
    http.listen(server.apiServer.httpRequestHandler);

}