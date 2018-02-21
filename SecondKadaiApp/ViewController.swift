//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by USER on 2018/02/21.
//  Copyright © 2018年 shuuhei-sutou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言している
        // TextFieldから文字を取得
        resultViewController.textFieldString = name.text!
        
    }
    
    @IBAction func unwind(_ seque: UIStoryboardSegue) {
    }


}

