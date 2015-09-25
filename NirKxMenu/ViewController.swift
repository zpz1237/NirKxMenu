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
        let menuArray = [KxMenuItem.init("扫一扫", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"), KxMenuItem.init("加好友", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"), KxMenuItem.init("创建讨论组", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"), KxMenuItem.init("发送到电脑", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"), KxMenuItem.init("面对面快传", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:"), KxMenuItem.init("收钱", image: UIImage(named: "Touch"), target: self, action: "respondOfMenu:")]
        
        //配置一：基础配置
        KxMenu.setTitleFont(UIFont(name: "HelveticaNeue", size: 15))
        
        //配置二：拓展配置
        let options = OptionalConfiguration(arrowSize: 9,
            marginXSpacing: 7,
            marginYSpacing: 9,
            intervalSpacing: 25,
            menuCornerRadius: 6.5,
            maskToBackground: true,
            shadowOfMenu: false,
            hasSeperatorLine: true,
            seperatorLineHasInsets: false,
            textColor: Color(R: 0, G: 0, B: 0),
            selectedColor: Color(R: 0.89, G: 0.89, B: 0.89),
            speratorColor: Color(R: 0.89, G: 0.89, B: 0.89),
            menuBackgroundColor: Color(R: 1, G: 1, B: 1)
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

