//
//  NaviController.swift
//  0703 Rock Paper Scissors
//
//  Created by mac on 2022/7/3.
//  Copyright © 2022 mac. All rights reserved.
//

import UIKit

class NaviController: UINavigationController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        (topViewController?..supportedInterfaceOrientations.all)!
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
