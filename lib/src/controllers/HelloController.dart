import 'package:rpc/rpc.dart';

class MyResponse
{
    String result;

    MyResponse(this.result);
}

@ApiClass(name: 'hello', version: 'v1')
class HelloController
{
    @ApiMethod(path: 'action')
    MyResponse action()
    {
        return new MyResponse('Method hello \ action action');
    }
}