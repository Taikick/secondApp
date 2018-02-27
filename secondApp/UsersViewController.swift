//
//  UsersViewController.swift
//  secondApp
//
//  Created by 加藤　大起 on 2018/02/20.
//  Copyright © 2018年 Taiki Kato. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var UserTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //NavigationBarが半透明かどうか
        navigationController?.navigationBar.isTranslucent = false
        //NavigationBarの色を変更します
        navigationController?.navigationBar.barTintColor = UIColor.blue        //NavigationBarに乗っている部品の色を変更します
        navigationController?.navigationBar.tintColor = UIColor.white
        //バーの左側にボタンを配置します(ライブラリ特有)
        addLeftBarButtonWithImage(UIImage.fontAwesomeIcon(name: .user, textColor: .blue, size: CGSize(width: 40.0, height: 40.0)))
        self.navigationItem.title = "ユーザー名"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let UserCell = UserTableView.dequeueReusableCell(withIdentifier: "UserCell")
        return UserCell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
