//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 山本優也 on 2021/01/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //resultview を取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //入力されたテキストを渡す
        resultViewController.name = textField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        textField.text = ""
    }
}

