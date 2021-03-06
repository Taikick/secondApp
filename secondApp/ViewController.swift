//
//  ViewController.swift
//  secondApp
//
//  Created by 加藤　大起 on 2018/01/24.
//  Copyright © 2018年 Taiki Kato. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import FontAwesome_swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //NavigationBarが半透明かどうか
        navigationController?.navigationBar.isTranslucent = false
        //NavigationBarの色を変更します
        navigationController?.navigationBar.barTintColor = UIColor.blue
        //NavigationBarに乗っている部品の色を変更します
        navigationController?.navigationBar.tintColor = UIColor.white
        //バーの左側にボタンを配置します(ライブラリ特有)
        addLeftBarButtonWithImage(UIImage.fontAwesomeIcon(name: .user, textColor: .blue, size: CGSize(width: 40.0, height: 40.0)))
        self.navigationItem.title = "Top"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

