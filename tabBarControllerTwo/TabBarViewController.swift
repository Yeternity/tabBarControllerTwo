//
//  TabBarViewController.swift
//  tabBarControllerTwo
//
//  Created by seirra on 2017/4/23.
//  Copyright © 2017年 seirra. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        let firstView = FirstViewController();
        firstView.title = "Chats"
        let secondView = SecondViewController();
        secondView.title = "Contacts"
        let thirdView = ThirdViewController();
        thirdView.title = "Discover"
        let fourthView = FourthViewController();
        fourthView.title = "Me"
        
        let first = UINavigationController(rootViewController: firstView);
        first.tabBarItem.image = UIImage(named: "ala")
        let second = UINavigationController(rootViewController: secondView);
        second.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        let third = UINavigationController(rootViewController: thirdView);
        third.tabBarItem.image = UIImage(named: "alc")
        let fourth = UINavigationController(rootViewController: fourthView);
        fourth.tabBarItem.image = UIImage(named: "ale")
        
        self.viewControllers = [first, second, third, fourth]
        self.selectedIndex = 0
        // Do any additional setup after loading the view.
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
