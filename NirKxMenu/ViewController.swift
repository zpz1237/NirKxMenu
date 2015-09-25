//
//  ViewController.swift
//  NirKxMenu
//
//  Created by Nirvana on 9/25/15.
//  Copyright © 2015 NSNirvana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Clicked(sender: AnyObject) {
        
        //配置零：内容配置
        let menuArray = [KxMenuItem.init("扫一扫", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("加好友", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("创建讨论组", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("发送到电脑", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("面对面快传", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"),
            KxMenuItem.init("收钱", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:")]
        
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
        
        
        //菜单展示
        KxMenu.showMenuInView(self.view, fromRect: sender.frame, menuItems: menuArray, withOptions: options)
    }
    
    func respondOfMenu(sender: AnyObject) {
        
        print(sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

