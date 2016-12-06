//
//  ViewController.swift
//  CheckTest-1207
//
//  Created by ShinokiRyosei on 2016/12/06.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - ViewController

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    let userDefaults: UserDefaults = UserDefaults.standard
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.delegate = self
    }
    
    @IBAction func selectSave(_ sender: UIButton) {
        
        // unwrap textField.text type String? to String
        // textField.textをString? から Stringへアンラップ
        
        userDefaults.set(textField.text!, forKey: "text")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        // unwrap userDefaults.string(forKey:) type String? to String
        // userDefaults.string(forKey:)をString? から Stringへアンラップ
        
        self.setOnLabel(withContentsOf: userDefaults.string(forKey: "text"))
    }
    
    func setOnLabel(withContentsOf str: String) {
        
        label.text = str
    }
    
    // Close keyboard if return key is tapped.
    // Returキーでキーボードを閉じる
}

