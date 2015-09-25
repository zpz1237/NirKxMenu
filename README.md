# NirKxMenu
UI高度可定制化KxMenu弹出菜单

###效果如下：

![effect](https://github.com/zpz1237/NirKxMenu/blob/master/effect.gif)

与QQ自带弹出菜单对比：

![effect2](https://github.com/zpz1237/NirKxMenu/blob/master/effect2.png)

###用法：

####菜单内容设置

```
let menuArray = [KxMenuItem.init("扫一扫", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("加好友", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("创建讨论组", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("发送到电脑", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("面对面快传", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("收钱", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:")]
```

####菜单UI设置

```     
        //配置一：基础配置
        KxMenu.setTitleFont(UIFont(name: "HelveticaNeue", size: 15))
        
        //配置二：拓展配置
        let options = OptionalConfiguration(arrowSize: 9,  //指示箭头大小
            marginXSpacing: 7,  //MenuItem左右边距
            marginYSpacing: 9,  //MenuItem上下边距
            intervalSpacing: 25,  //MenuItemImage与MenuItemTitle的间距
            menuCornerRadius: 6.5,  //菜单圆角半径
            maskToBackground: true,  //是否添加覆盖在原View上的半透明遮罩
            shadowOfMenu: false,  //是否添加菜单阴影
            hasSeperatorLine: true,  //是否设置分割线
            seperatorLineHasInsets: false,  //是否在分割线两侧留下Insets
            textColor: Color(R: 0, G: 0, B: 0),  //menuItem字体颜色
            menuBackgroundColor: Color(R: 1, G: 1, B: 1)  //菜单的底色
        )

```


####菜单弹出方法

```
KxMenu.showMenuInView(self.view, fromRect: sender.frame, menuItems: menuArray, withOptions: options)

```


