//
//  EachSettingViewController.swift
//  UserSignin
//
//  Created by Rana,Sumnima on 10/21/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class EachSettingViewController: UIViewController {
        var deatailItem:detailItem!
        var setting:Settings!
        
    @IBAction func addNewpayment(_ segue:UIStoryboardSegue){}
    @IBAction func cancelNewpayment(_ segue:UIStoryboardSegue){}
    override func viewWillAppear(_ animated: Bool) {
     setting = SettingDetail.settingdetail.selectedSetting()
            navigationItem.title = setting.name
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
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


