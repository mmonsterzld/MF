//
//  MFRootTabBarController.swift
//  MF
//
//  Created by 戴良忠 on 2017/1/18.
//  Copyright © 2017年 Monster.Z. All rights reserved.
//

import UIKit

class MFRootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.creatTabBarViewController()
    
    }

    func creatTabBarViewController() {
        
//        // Tabitem的标题字体
//        [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithHexString:SSNavigationBarTextColor], NSForegroundColorAttributeName,[UIFont fontWithName:HelveticaNeueFontName size:0.0], NSFontAttributeName,nil]forState:UIControlStateSelected];
        
//        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary.dictionaryWithValues(forKeys: UIColor ), for: <#T##UIControlState#>)
        
        
        //首页
        let mainVC = MFMainVC()
        let item1 : UITabBarItem = UITabBarItem (title: "首页", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        let mainNc = UINavigationController(rootViewController: mainVC)
        mainNc.tabBarItem = item1
        
        //意向
        let purposeVC = MFPurposeVC()
        let item2 : UITabBarItem = UITabBarItem (title: "意向", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        let purposeNc = UINavigationController(rootViewController: purposeVC)
        purposeNc.tabBarItem = item2
        
        //社区
        let communityVC = MFCommunityVC()
        let item3 : UITabBarItem = UITabBarItem (title: "社区", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        let communityNc = UINavigationController(rootViewController: communityVC)
        communityNc.tabBarItem = item3
        
        //我的
        let meVC = MFMeVC()
        let item4 : UITabBarItem = UITabBarItem (title: "我的", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        let meNc = UINavigationController(rootViewController: meVC)
        meNc.tabBarItem = item4
        
        let tabBarArr = [mainNc,purposeNc,communityNc,meNc];
        
        self.viewControllers = tabBarArr;
        
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
