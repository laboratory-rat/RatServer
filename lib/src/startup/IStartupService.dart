import '../core/RatServer.dart';
import 'dart:async';

abstract class IStartupService
{
    Future configure(RatServer server);
}