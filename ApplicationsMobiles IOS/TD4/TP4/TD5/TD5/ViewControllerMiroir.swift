//
//  ViewControllerMiroir.swift
//  TD5
//
//  Created by David Baldo on 28/11/2024.
//

import UIKit

class ViewControllerMiroir: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var input: UITextField!
    

    @IBAction func buton(_ sender: Any) {
        var text: String = input.text ?? "";
        input.text = String(text.reversed())
        }
    }
