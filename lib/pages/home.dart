import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/index.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 @override
  Widget build(BuildContext context) {
    // getHttp();
    TextEditingController typeController = TextEditingController();
    String showText = '欢迎';

    void _choiceAction(){
      print('开始选择你喜欢类型');
      if(typeController.text.toString() == '') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text('标题'),)
        );
      } else {
        getHttp().then((val){
          setState(() {
            showText = val;
          });
        });
      }
    }
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: typeController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0.0),
                  labelText: '美女类型',
                  helperText: '请输入你喜欢的类型'
                ),
                autofocus: false,
              ),
              RaisedButton(
                child: Text('选择'),
                onPressed: _choiceAction,
              ),
              Text(
                showText,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );

  }

  

  Future getHttp () async {
    try{
      Response response;
      response = await Dio().get(BASE_HOST,
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ1aWQiOjE3MDg2fQ.kMlHmMSCK3rvQ5j2f3EBaFqwxbVHi6x1NChtXjU-0tIQ_43BJTKXiKIFVMDBaoI7HjNCzLEI_EdCnB-4oxyufC-PpnXOcq6Bc1sdu90BgoHqLJ3oC79iKT5hcNG4YpIfGsfxjtC6A9djB8SSS6V4veIsn-I21QzHTfBPJtgRPGw'
      );
      return print(response);
    } catch(e){
      return print(e);
    }
  }
}
// class HomePage extends StatelessWidget {
 
// }