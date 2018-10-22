//
//  SettingsDetailTableViewController.swift
//  UserSignin
//
//  Created by Rana,Sumnima on 10/21/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class SettingsDetailTableViewController: UITableViewController {

        var setting:Settings!
        
        override func viewWillAppear(_ animated: Bool) {
            setting = SettingDetail.settingdetail.selectedSetting()
            navigationItem.title = setting.name
            tableView.reloadData()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
        
        @IBAction func addNewMenuItem(_ segue:UIStoryboardSegue){}
        @IBAction func cancelNewMenuItem(_ segue:UIStoryboardSegue){}
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
            
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return setting.detail.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuItem_cell", for: indexPath)
            
            let item = setting.detail[indexPath.row]
            //setting first title text view
            cell.textLabel?.text = item.name
            
            return cell
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            /*if segue.identifier == "settingItemDetailVC"{
                let eachItemDetailsVC = segue.destination as! EachSettingViewController
                //AddmenuItemsVC.restaurant = FoodCourt.foodCourt[tableView.indexPathForSelectedRow!.row]
               eachItemDetailsVC.menuItem = setting.detail[tableView.indexPathForSelectedRow!.row]
            }*/
        }
        
        /*
         override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
         
         // Configure the cell...
         
         return cell
         }
         */
        
        /*
         // Override to support conditional editing of the table view.
         override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
         }
         */
        
        /*
         // Override to support editing the table view.
         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
         // Delete the row from the data source
         tableView.deleteRows(at: [indexPath], with: .fade)
         } else if editingStyle == .insert {
         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
         }
         }
         */
        
        /*
         // Override to support rearranging the table view.
         override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
         
         }
         */
        
        /*
         // Override to support conditional rearranging of the table view.
         override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
         }
         */
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

   
