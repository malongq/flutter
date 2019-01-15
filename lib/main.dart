import 'package:flutter/material.dart';
import 'package:flutter_app/Mylist.dart';

void main() => runApp(MyApp());

/************************* 第 十 三 天--> 卡片组件布局 ******************/
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text('河北省邯郸市',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('邯山区河北工程大学 电话：188 8888 8888'),
            leading: new Icon(Icons.accessible,color: Colors.lightBlue),
          ),
          new Divider(color: Colors.redAccent),
          ListTile(
            title: new Text('北京市海淀区',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('鼎好大厦5层 电话：199 9999 9999'),
            leading: new Icon(Icons.accessibility,color: Colors.green),
          ),
          new Divider(color: Colors.redAccent),
          ListTile(
            title: new Text('河北省保定市',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('邯山区河北大学 电话：177 7777 7777'),
            leading: new Icon(Icons.accessible,color: Colors.lightBlue),
          ),
          new Divider(color: Colors.redAccent),
          ListTile(
            title: new Text('北京市丰台区',style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('丰台科技园 电话：166 6666 6666'),
            leading: new Icon(Icons.accessibility,color: Colors.green),
          ),
          new Divider(color: Colors.redAccent)

        ],
      ),
    );


    return new MaterialApp(
      title: '卡片组件布局',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('卡片组件布局'),
        ),
        body: Center(child: card),
      ),
    );
  }

}

/************************* 第 十 二 天--> Stack 层叠布局 ******************/
/*class MyApp extends StatelessWidget {
  //使用Positioned
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg'),
          radius: 100.0,
        ),
        new Positioned(child: new Text('马龙',style: TextStyle(color: Colors.red,fontSize: 25.0)), top: 10.0, left: 80.0),
        new Positioned(child: new Text('刘若银',style: TextStyle(color: Colors.amber,fontSize: 25.0)), bottom: 10.0, right: 80.0)
      ],
    );

    return new MaterialApp(
      title: '层叠组件Stack',
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('层叠组件Stack--使用Positioned'),
          ),
          body: Center(child: stack)),
    );
  }

//没有使用Positioned
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    var stack = new Stack(
//      alignment: const FractionalOffset(0.5, 0.8),//FractionalOffset表示上层控件在下层的偏移
//          children: <Widget>[
//            new CircleAvatar(
//              backgroundImage: new NetworkImage(
//                  'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg'),
//              radius: 100.0,
//            ),
//            new Container(
//              decoration: new BoxDecoration(color: Colors.redAccent),
//              padding: EdgeInsets.all(2.0),
//              child: new Text('马龙'),
//            )
//          ]
//    );
//
//    return new MaterialApp(
//      title: 'Stack层叠布局',
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('Stack层叠布局'),
//        ),
//      body: Center(child: stack),
//      ),
//    );
//  }
}*/

/************************* 第 十 一 天--> Column 竖直布局 灵活与不灵活 ******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Column竖直布局',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Column竖直排列'),
        ),
        body: new Column(
//            CrossAxisAlignment.star：居左对齐。
//            CrossAxisAlignment.end：居右对齐。
//            CrossAxisAlignment.center：居中对齐。
          crossAxisAlignment:CrossAxisAlignment.center,

//        在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式
//          main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴
//          cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[//这时候你会发现文字是以最长的一段文字居中对齐的，看起来很别扭。那如果想让文字以左边开始对齐，只需要加入一个对齐属性

            Center(child: Text('马龙')),
            Text('不是居中的'),
            Expanded(child: Center(child: Text('你好你好'))),
            RaisedButton(onPressed: (){},color: Colors.blue,child: new Text('蓝色')),
            RaisedButton(onPressed: (){},color: Colors.green,child: new Text('青色'))


//            Center(child: new Text('我是好人')),
//            Center(child: new Text('我是一个大好人')),
//            Center(child: new Text('我真的是一个大好人')),

            //这样不会水平居中，上面会居中
//            Text('我是好人'),
//            Text('我是一个大好人'),
//            Text('我真的是一个大好人'),
//            Text('请你们相信我，好不好')
          ],
        ),
      ),

//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('Column灵活与不灵活混合竖直排列'),
//        ),
//        body: new Column(
//          children: <Widget>[
//            RaisedButton(
//                onPressed: () {}, color: Colors.green, child: new Text('绿色')),
//            Expanded(
//                child: new RaisedButton(
//                    onPressed: () {},
//                    color: Colors.blue,
//                    child: new Text('蓝色'))),
//            RaisedButton(
//                onPressed: () {}, color: Colors.red, child: new Text('红色'))
//          ],
//        ),
//      ),

//      title: 'Column竖直布局',
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('Column灵活竖直排列'),
//        ),
//        body: new Column(
//          children: <Widget>[
//            Expanded(
//                child: new RaisedButton(
//                    onPressed: () {},
//                    color: Colors.green,
//                    child: new Text('绿色'))),
//            Expanded(
//                child: new RaisedButton(
//                    onPressed: () {},
//                    color: Colors.blue,
//                    child: new Text('蓝色'))),
//            Expanded(
//                child: new RaisedButton(
//                    onPressed: () {},
//                    color: Colors.red,
//                    child: new Text('红色')))
//          ],
//        ),
//      ),

//      title: '不灵活竖直布局',
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('Column竖直布局'),
//        ),
//        body: new Column(
//          children: <Widget>[
//            RaisedButton(
//              onPressed: () {},
//              color: Colors.blue,
//              child: new Text('蓝色'),
//            ),
//            RaisedButton(
//              onPressed: () {},
//              color: Colors.amber,
//              child: new Text('黄色'),
//            ),
//            RaisedButton(
//              onPressed: () {},
//              color: Colors.green,
//              child: new Text('绿色'),
//            )
//          ],
//        ),
//      ),
    );
  }
}*/

/************************* 第 十 天--> Row 水平布局 灵活与不灵活 ******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '灵活与不灵活混用',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('水平布局Row的使用'),
        ),
        body: new Row(
          children: <Widget>[
            RaisedButton(
                onPressed: () {}, color: Colors.teal, child: new Text('茶色')),
            Expanded(
                child: new RaisedButton(
              onPressed: () {},
              color: Colors.amber,
              child: new Text('橘黄'),
            )),
            RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: new Text('藏蓝'),
            )
          ],
        ),
      ),

//      title: '灵活水平或竖直布局',
//      //解决上面有空隙的问题，可以使用 Expanded来进行解决，也就是我们说的灵活布局。我们在按钮的外边加入Expanded就可以了
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('水平布局Row的使用'),
//        ),
//        body: new Row(
//          children: <Widget>[
//            Expanded(
//                child: new RaisedButton(
//              onPressed: () {},
//              color: Colors.deepOrange,
//              child: new Text('深橘'),
//            )),
//            Expanded(
//                child: new RaisedButton(
//              onPressed: () {},
//              color: Colors.amber,
//              child: new Text('正黄'),
//            )),
//            Expanded(
//                child: new RaisedButton(
//              onPressed: () {},
//              color: Colors.green,
//              child: new Text('绿色'),
//            ))
//          ],
//        ),
//      ),

//      title: '不灵活水平布局',//不灵活就是根据Row子元素的大小，进行布局。如果子元素不足，它会留有空隙，如果子元素超出，它会警告
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text('水平布局Row的使用'),
//        ),
//        body: new Row(
//          children: <Widget>[
//            new RaisedButton(
//              onPressed: () {},
//              color: Colors.redAccent,
//              child: new Text('红色按钮'),
//            ),
//            new RaisedButton(
//              onPressed: () {},
//              child: new Text('绿色按钮'),
//              color: Colors.green,
//            ),
//            new RaisedButton(
//              onPressed: () {},
//              color: Colors.blue,
//              child: new Text('蓝色按钮'),
//            )
//          ],
//        ),
//      ),
    );
  }
}*/

/*************************第 九 天-->GridView模拟网络请求动态列表******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '8',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('GridView网格列表组件'),
        ),

        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, //每行显示几个
            childAspectRatio: 0.7, //图片宽高比例
            crossAxisSpacing: 2.0, //左右边距
            mainAxisSpacing: 2.0, //上下边距
          ),
          children: <Widget>[
            new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),

        */ /**文字做的网格，不太直观**/ /*
//        body: GridView.count(
//          padding: const EdgeInsets.all(10.0),//表示内边距，这个小伙伴们应该很熟悉
//          crossAxisSpacing: 20.0,//网格间的空当，相当于每个网格之间的间距
//          crossAxisCount: 4 //每行显示几个
//          // ignore: expected_token
//          children: <Widget>[
//            const Text('我的小玛瑙1'),
//            const Text('我的小玛瑙2'),
//            const Text('我的小玛瑙3'),
//            const Text('我的小玛瑙4'),
//            const Text('我的小玛瑙5'),
//            const Text('我的小玛瑙6'),
//          ],
//      ),
      ),
    );
  }
}*/

/*************************第 八 天-->ListView模拟网络请求动态列表******************/
//void main() => runApp(MyApp(items: new List<String>.generate(20, (i) => "Item $i")));//第 八 天使用
/*class MyApp extends StatelessWidget {
  final List<String> items;
  const MyApp({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '这是哪里',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView模拟网络请求动态列表'),
        ),

        body: Center(
          child: Container(
            child: new ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return new ListTile(
                    title: new Text('${items[index]}'),
                  );
                }),
          ),
        ),
      ),
    );
  }

}*/

/*************************第 七 天-->ListView图片列表的优化代码******************/
/*class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '不知道哪里的title',

      home: Scaffold(
        appBar: new AppBar(
          title: new Text('我'),
        ),

        body: Center(

          child: Container(
            height: 180.0,
            child: MyList(),
          ),
        ),
      ),
    );
  }

}*/

/*************************第 六 天-->ListView水平图片列表的使用******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '马龙',
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('小马龙'),
          ),

          body: Center(//Center组件，作用是让我们的横向列表可以居中到屏幕的中间位置
            child: Container(
              height: 230.0, //注销掉就相当于matach_parent
              child: new ListView(
                scrollDirection: Axis.horizontal, //水平滚动
//              scrollDirection: Axis.vertical,//垂直滚动
                children: <Widget>[
                  new Container(
                    width: 100.0,
                    color: Colors.lightBlue,
                  ),
                  new Container(
                    width: 130.0,
                    color: Colors.amber,
                  ),
                  new Container(
                    width: 160.0,
                    color: Colors.purple,
                  ),
                  new Container(
                    width: 190.0,
                    color: Colors.greenAccent,
                  ),
                  new Container(
                    width: 220.0,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          )),
    );
  }
}*/

/*************************第 五 天-->ListView垂直网络图片列表的使用******************/
/*class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '马龙',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('大马龙')
        ),

        body: new ListView(
          children: <Widget>[
            new Image.network(
              'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'
            ),
            new Image.network(
              'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'
            ),
            new Image.network(
              'http://jspang.com/static/myimg/typescript_banner.jpg'
            ),
            new Image.network(
              'http://jspang.com/static/myimg/smile-vue.jpg'
            )
          ],
        ),
      ),
    );
  }

}*/

/*************************第 四 天-->ListView******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '你好',
      home: Scaffold(
        
        appBar: new AppBar(
          title: new Text('ListView'),
        ),
        
        body:new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.accessible),
              title: new Text('蹲坑儿'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text('雪花'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('闹钟'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.accessibility),
              title: new Text('拥抱'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance),
              title: new Text('神庙'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance_wallet),
              title: new Text('钱包'),
            ),
            new Divider(
              color: Colors.amber,
            ),
            new ListTile(
              leading: new Icon(Icons.adb),
              title: new Text('adb'),
            ),
          ],
        ),
      ),
    );
  }

}*/

/*************************第 三 天-->图片属性参数******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '马龙',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'http://b162.photo.store.qq.com/psb?/V13CFjk11EpMt2/QCcmxWwEGIP0bD5TNzMdQjYpRQEEvolvSBFDJut*xBU!/b/dKIAAAAAAAAA&bo=OAScBQAAAAARF4U!&rf=viewer_4',
//              'http://jspang.com/static/myimg/blogtouxiang.jpg',
              scale: 1.0, //比例
              repeat: ImageRepeat.repeat, //repeat图片重复

              //图片的混合模式
//              color: Colors.white70,//color：是要混合的颜色，如果你只设置color是没有意义的
//              colorBlendMode: BlendMode.color,//colorBlendMode:是混合模式，相当于我们如何混合
            ),
            width: 400.0,
            height: 400.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}*/

/*************************第 二 天-->布局属性参数******************/
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ABC',
      home: Scaffold(
        appBar: AppBar(title: Text('马龙')),


        body: Center(
            child: Container(
          child: Text(
            '今天是2018年12月24日，西方的平安夜，我集齐了2套卡片，以为可以召唤神龙实现愿望，谁知道只是两个🍎，另外这是第一个Flutter_App,I Want Say: Hello~ Hello World! \n今天是2018年12月24日',
            textAlign: TextAlign.center, //TextAlign属性就是文本的对齐方式

            maxLines: 5, //maxLines属性就是设置最多显示的行数

            overflow: TextOverflow.ellipsis, //overflow属性就是用来设置文本溢出时，如何处理
            //1.clip：直接切断，剩下的文字就没有了，感觉不太友好，体验性不好
            //2.ellipsis:在后边显示省略号，体验性较好，这个在工作中经常使用
            //3.fade: 溢出的部分会进行一个渐变消失的效果，是上下的渐变，不是左右的

            //文字设置集合：大小，颜色等
            style: TextStyle(
              fontSize: 23.0,
              color: Color.fromARGB(255, 255, 150, 150),
            ),
          ),

          alignment: Alignment.center,
          //子控件位置
          width: 500.0,
          //子控件宽
          height: 200.0,
          //子控件高

//              color: Colors.lightBlueAccent, //控件背景，但是要是有设置 decoration 中的color,这个就要删掉，否则会报错！！！
//              padding: const EdgeInsets.fromLTRB(20.0,1.0,30.0,40.0),//内边距 padding
//              margin: const EdgeInsets.fromLTRB(5.0, 1.0, 15.0, 20.0),//外边距 margin

          //子控件综合描述：背景颜色，边框宽度，边框颜色等
          decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.lightBlue,
                Colors.greenAccent,
                Colors.purple
              ]),
              border: Border.all(width: 8, color: Colors.amber)),
        )

//          child:Container(
//            child: new Text('你好，你的名字是？',style: TextStyle(fontSize: 20.0),),
//            alignment: Alignment.topCenter,
//          )

            ),
      ),
    );
  }
}*/

/*************************第 一 天-->Hello World******************/
/*//主函数（入口函数）
void main() => runApp(MyApp());

//声明MyApp类
class MyApp extends StatelessWidget {
  // 重写build方法
  @override
  Widget build(BuildContext context) {
    //返回一个MaterialApp风格的组件
    return MaterialApp(
      //标题栏
      title: 'ABC',

      //标题栏颜色
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Welcome to MaLong' + '`s ' + 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
