//
//  SettingTableViewController.swift
//  UserSignin
//
//  Created by Rana,Sumnima on 10/21/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var hours: UILabel!
}
class SettingTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func addNewRestaurant(_ segue:UIStoryboardSegue){}
    @IBAction func cancelNewRestaurant(_ segue:UIStoryboardSegue){}
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
        return SettingDetail.settingdetail.numOfsettings()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomTableViewCell
        let setting = SettingDetail.settingdetail[indexPath.row]
        
        article.name?.text = setting.name
        
        //article.hours?.text = String(format:"Hours: %d - %d",restuarant.openingTime,restuarant.closingTime)
        //article.imageView?.image = UIImage(names:" ")
        return article
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SettingDetail.settingdetail.setSelectedSettingIndex(indexPath.row)
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "menu_items"{
     let menuItemsTVC = segue.destination as! MenuItemsTableViewController
     menuItemsTVC.restaurant = FoodCourt.foodCourt[tableView.indexPathForSelectedRow!.row]
     }
     else{
     
     }
     }
     }*/
    
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
