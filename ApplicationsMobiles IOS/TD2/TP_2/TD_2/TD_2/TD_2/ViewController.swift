//
//  ViewController.swift
//  TD_2
//
//  Created by David Baldo on 14/11/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var answer: UILabel!

    
    var mystere: Int = Int.random(in: 1..<1001);
    var cont: Int = 0;
    
    @IBAction func rejouer(_ sender: Any) {
        mystere = Int.random(in: 1..<1001);
        cont = 0;
    }
    
    @IBAction func confirmButton(_ sender: Any) {

        let inputInt: Int = Int(input.text ?? "0") ?? 0 ;
        // Supression de la valeur affiché
        input.text = "";

        
        if (inputInt == mystere) {
            cont += 1;
            answer.text = "Félicitations ! Vous avez trouvé le nombre mystère en en \(cont) essai.s";
        } else if (inputInt < mystere) {
            cont += 1;
            answer.text = "Le nombre mystère est plus grand que  \(inputInt). Le nombre d'essai est : \(cont)";
        } else {
            cont += 1;
            answer.text = "Le nombre mystère est plus petit que  \(inputInt). Le nombre d'essai est : \(cont)";
        }
    }
}

