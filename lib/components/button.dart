import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget primaryButton(String title) {
  return new Center(
child: new Material(
child: new Ink(
 //设置背景
    decoration: new BoxDecoration(
    color: Colors.purple,
    borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
    ),
    child: new InkResponse(
    borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
    //点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
    //highlightColor: Colors.yellowAccent,
    //点击或者toch控件高亮的shape形状
    highlightShape: BoxShape.rectangle,
    //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
    //水波纹的半径
    radius: 300.0,
    //水波纹的颜色
    splashColor: Colors.white10,
    //true表示要剪裁水波纹响应的界面 false不剪裁 如果控件是圆角不剪裁的话水波纹是矩形
    containedInkWell: true,
    //点击事件
    onTap: () {
     print("click");
    },
    child: new Container(
     //不能在InkResponse的child容器内部设置装饰器颜色，否则会遮盖住水波纹颜色的，containedInkWell设置为false就能看到是否是遮盖了。
     width: 300.0,
     height: 50.0,
     //设置child 居中
     alignment: Alignment(0, 0),
     child: Text("登录",style: TextStyle(color: Colors.white,fontSize: 16.0),),
    ),
 
    ),
   ),
   ),
  );
}