//
//  RegisterViewController.swift
//  UserSignin
//
//  Created by Student on 10/4/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
  
    
  
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
      @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
      @IBOutlet weak var retypePassword: UITextField!
    
  
    
  let APP_ID = "02B36973-F0B3-31E4-FF8E-A5EEC2B42400"
    let API_KEY = "B3645247-04C3-34E3-FFD1-0072A1536B00"
     var backendless = Backendless.sharedInstance()
   
    override func viewDidLoad() {
        super.viewDidLoad()
     backendless?.initApp(APP_ID, apiKey: API_KEY)
      
    }
    
    func registerUser() {
        
        Types.tryblock({ () -> Void in
            
            let user = BackendlessUser()
            user.setProperty("FirstName", object: String(describing: self.firstName.text!))
            user.setProperty("LastName", object: String(describing: self.lastName.text!))
             user.setProperty("email", object:String(describing: self.email.text!))
            //user.email = String(describing: self.self.email) as NSString
            if(String(describing: self.password.text!) as NSString == String(describing: self.retypePassword.text!) as NSString){
                user.password = String(describing: self.password.text!) as NSString
                print(String(self.password.text!))
                print(String(self.retypePassword.text!))
            }else{
                self.display(title: "password didn't match")
            }
            
            user.password = String(describing: self.password.text!) as NSString
            

            
            let registeredUser = self.backendless?.userService.register(user)
            print("User has been registered (SYNC): \(String(describing: registeredUser))")
        },
                  
                       catchblock: { (exception) -> Void in
                        print("Server reported an error: \(exception as! Fault)")
        })
    }
    
    func registerUserAsync() {
        let user = BackendlessUser()
        user.setProperty("FirstName", object: String(describing: firstName))
        user.setProperty("LirstName", object: String(describing: lastName))
    user.setProperty("email", object:String(describing: self.email.text!))
        if(String(describing: self.password.text!) as NSString == String(describing: self.retypePassword.text!) as NSString){
            print(String(self.password.text!))
            print(String(self.retypePassword.text!))
           user.password = String(describing: self.password.text!) as NSString
        }else{
            display(title: "password didn't match")
        }
        
        backendless?.userService.register(user,
                                            response: { ( registeredUser : BackendlessUser!) -> () in
                                                print("User has been registered (ASYNC): \(String(describing: registeredUser))")
        },
                                            error: { (fault : Fault!) -> () in
                                                print("Server reported an error: \(String(describing: fault))")
        }
        )
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "done"{
            registerUser()
            registerUserAsync()
        }
    }
    func display(title:String){
        
        let alert = UIAlertController(title: title, message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
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
