//
//  ViewController.swift
//  TP1_Exercice1
//
//  Created by David Baldo on 07/11/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!;
    
    @IBAction func button(_ sender: Any) {
        label.text="Au revoir";
    }
    
}

