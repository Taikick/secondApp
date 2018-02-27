//
//  LeftViewController.swift
//  secondApp
//
//  Created by 加藤　大起 on 2018/02/20.
//  Copyright © 2018年 Taiki Kato. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import FontAwesome_swift


class LeftViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    
    
    var moveList = ["Top","予定","ユーザー名","Q & A","設定"]
    
    var selectedPage = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moveList.count
    }
    
    //セルに表示する文字列の決定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pagesCell = tableView.dequeueReusableCell(withIdentifier: "leftCell", for:indexPath)
        pagesCell.textLabel?.text = moveList[indexPath.row]
        return pagesCell
    }
    
    //セルをタップしたら発動するメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)が行目、\(moveList[indexPath.row])がタップされました")
        //セグウェを使って移動する時に値を渡す
        
        selectedPage = indexPath.row
        if selectedPage == 0 {
            changeViewController("Main")
        } else if selectedPage == 1 {
            changeViewController("Plans")
            
        } else if selectedPage == 2{
            changeViewController("Users")
        } else if selectedPage == 3{
            changeViewController("Questions")
        }
        else {
            changeViewController("Settings")
        }
        
    }
    
    func changeViewController(_ code:String) {
        switch code {
        case "Main":
            let ProVCS = storyboard?.instantiateViewController(withIdentifier: "Main")
            
            let ProVC = UINavigationController(rootViewController: ProVCS!)
            self.slideMenuController()?.changeMainViewController(ProVC, close: true)
            
        case "Plans":
            let ProVCS = storyboard?.instantiateViewController(withIdentifier: "Plans")
            
            let ProVC = UINavigationController(rootViewController: ProVCS!)
            self.slideMenuController()?.changeMainViewController(ProVC, close: true)
            
        case "Users":
            print("Users")
            let ProVCS = storyboard?.instantiateViewController(withIdentifier: "Users")
            
            let ProVC = UINavigationController(rootViewController: ProVCS!)
            self.slideMenuController()?.changeMainViewController(ProVC, close: true)
            
        case "Questions":
            print("Questions")
            let ProVCS = storyboard?.instantiateViewController(withIdentifier: "Questions")
            
            let ProVC = UINavigationController(rootViewController: ProVCS!)
            self.slideMenuController()?.changeMainViewController(ProVC, close: true)
        case "Settings":
            print("Settings")
            let ProVCS = storyboard?.instantiateViewController(withIdentifier: "Settings")
            
            let ProVC = UINavigationController(rootViewController: ProVCS!)
            self.slideMenuController()?.changeMainViewController(ProVC, close: true)
            
        default:
            print("aaa")
        }
    }
}




/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
}
*/


