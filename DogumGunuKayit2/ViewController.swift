//
//  ViewController.swift
//  DogumGunuKayit2
//
//  Created by KAAN YİĞİT on 31.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtBirthday: UITextField!
    
    
    override func viewDidLoad() {
        print("hello1")
        print("hello2")
        
        
        super.viewDidLoad()
        let isimKaydet = UserDefaults.standard.object(forKey: "name")
        let dogumGunuKaydet = UserDefaults.standard.object(forKey: "birthday")
        
        if let kayitliIsim =  isimKaydet as? String {
            lblName.text = kayitliIsim
        }
        
        if let kayitliDogumGunu = dogumGunuKaydet as? String {
            lblBirthday.text = kayitliDogumGunu
        }
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSave(_ sender: UIButton) {
        UserDefaults.standard.setValue(txtName.text, forKey: "name")
        UserDefaults.standard.setValue(txtBirthday.text, forKey: "birthday")
        
        lblName.text = "İsim : \(txtName.text!)"
        lblBirthday.text = "Doğum Tarihi : \(txtBirthday.text!)"
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        let isimKAydet = UserDefaults.standard.object(forKey: "name")
        let dogumGunuKaydet = UserDefaults.standard.object(forKey: "birthday")
        
        if (isimKAydet as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            lblName.text = " "
        }
        
        if (dogumGunuKaydet as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            lblBirthday.text = " "
        }
        
        
     
        
        
    }
    
}

