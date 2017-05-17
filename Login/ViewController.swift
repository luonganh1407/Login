//
//  ViewController.swift
//  Login
//
//  Created by techmaster on 5/10/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_password: UITextField!
    @IBOutlet weak var tf_user: UITextField!
    
    var users = ["aaa":"123" , "bbb":"456"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var cout = 1                                //Nut thuc hien
    
    
                                                //Dang nhap
    @IBOutlet weak var lbl_show: UILabel!
    @IBAction func acc_Login(_ sender: Any) {
        if let password = users[tf_user.text!] {
            if password ==  tf_password.text {
                
                lbl_show.text = "Success"
            }else{
                
                lbl_show.text = "Fail"
            }
            
        }else{
            
                lbl_show.text = "Not User"
        }
       
        }
    
                                                //Show danh sach
    @IBAction func acc_show(_ sender: Any) {
    
        var show = ""
        
    for (user,pass) in users{
        show += "\(user): \(pass) "
        lbl_show.text = "List: \(show)"
    
        }
    }
                                                //Dang ki moi
    
    @IBAction func acc_add(_ sender: Any) {
        if let pass = users[tf_user.text!]{
            lbl_show.text = "User da ton tai"
            
        } else if (tf_user.text == "") {
            lbl_show.text = "Nhap user"
}
        else if (tf_password.text == ""){
            lbl_show.text = " Nhap pass"
        }else{
            users[tf_user.text!] = tf_password.text
            lbl_show.text = " Success"
        }
}
                                                //Sua thong tin
    @IBAction func acc_sua(_ sender: Any) {
        if (cout == 0){
            if let pass = users[tf_user.text!]{
                if pass == tf_password.text {
                    lbl_show.text = "Nhap pass"
                cout = 1
                }else{
                    lbl_show.text = "Sai pass"
                }
                }else{
                    lbl_show.text = "Not user"
                }
        }else if (cout == 1){
                users[tf_user.text!] = tf_password.text
                lbl_show.text = "Success"
        }
        
    }
                                                //Xoa thong tin
    @IBAction func acc_del(_ sender: Any) {
        if (cout == 0) {
            if let pass = users[tf_user.text!]{
                lbl_show.text = " User ton tai.Co muon xoa"
                if pass == tf_password.text {
            cout = 1
                }else{
                    lbl_show.text = "Sai pass"
                }
                }else{
                    lbl_show.text = "Not user"
                }
        }else if (cout == 1){
            let delete = tf_user.text
            users.removeValue(forKey: delete!)
                lbl_show.text = " Success"
        }
    }
}






