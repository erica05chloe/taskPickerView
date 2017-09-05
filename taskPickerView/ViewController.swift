//
//  ViewController.swift
//  taskPickerView
//
//  Created by erica chloe on 2017/09/05.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    myPicker.dataSource = self
    myPicker.delegate = self
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
    
        
        let alert = UIAlertController(title:"本当に", message: "\(teaList[row])飲みたい？", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "もちろん！", style: .default, handler: nil))
        
        present(alert,animated: true,completion: nil)
        
        return teaList[row]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

