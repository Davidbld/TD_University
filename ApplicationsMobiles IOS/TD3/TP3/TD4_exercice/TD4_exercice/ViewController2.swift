//
//  ViewController2.swift
//  TD4_exercice
//
//  Created by Tess Masclef on 23/11/2023.
//

import UIKit

class ViewController2: UIViewController {
    var compteur = 0
    @IBOutlet weak var lab: UILabel!
    
    @IBAction func Clic(_ sender: Any) {
        lab.text = "Bravo"
        compteur += 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Le bouton suivant du deuxième écran a été cliqué.")
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let c = segue.destination as! ViewController3
        c.chaine="On a cliqué \(compteur) fois."
    }
    

}
