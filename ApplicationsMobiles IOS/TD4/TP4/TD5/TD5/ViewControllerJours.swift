//
//  ViewControllerJours.swift
//  TD5
//
//  Created by David Baldo on 28/11/2024.
//

import UIKit

class ViewControllerJours: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var label: UILabel!
    let jours = ["Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi", "Dimance"]
    
    @IBAction func butonEndroit(_ sender: Any) {
        for i in jours {
            label.text += i ;
        }
        label.text = "1, 2, 3, 4";
    }
    
    @IBAction func butonEnvers(_ sender: Any) {
        label.text = "4, 3, 2, 1";
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
