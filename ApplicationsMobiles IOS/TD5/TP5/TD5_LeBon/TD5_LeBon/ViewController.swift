//
//  ViewController.swift
//  TD5_LeBon
//
//  Created by David Baldo on 05/12/2024.
//

import UIKit

class ViewController: UIViewController {

    var numeroQuestion = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet var responses: [UILabel]!
    
    @IBAction func bresponses(_ sender: UIButton) {
        responses[0].textColor = UIColor.green;
        responses[1].textColor = UIColor.red;
        responses[2].textColor = UIColor.red;
        responses[3].textColor = UIColor.red;
    }
    
    @IBOutlet weak var suivant: UIButton!
    
    @IBAction func qsuivant(_ sender: Any) {
        numeroQuestion += 1;
        afficherQuestion();
    }
    
    func afficherQuestion() {
            switch numeroQuestion {
            case 1:
                responses[0].textColor = UIColor.black;
                responses[1].textColor = UIColor.black;
                responses[2].textColor = UIColor.black;
                responses[3].textColor = UIColor.black;
                question.text = "Qu'est ce qui pousse sur un arbre ?"
                img.image = UIImage(named: "LaFeuille")  // Remplacez avec le nom de l'image pour la question 1
                responses[0].text = "Une Feuille"
                responses[1].text = "De l'argent"
                responses[2].text = "La bourse de valentin mary"
                responses[3].text = "La carrière de Luka Baudrant"
            case 2:
                responses[0].textColor = UIColor.black;
                responses[1].textColor = UIColor.black;
                responses[2].textColor = UIColor.black;
                responses[3].textColor = UIColor.black;
                question.text = "Si un nuage pleure, est-ce qu'une table est une chaise ?"
                img.image = UIImage(named: "LeNuage")  // Remplacez avec l'image pour la question 2
                responses[0].text = "C'est quoi cette question ?"
                responses[1].text = "C'est ici l'accueil de l'ICOM ?"
                responses[2].text = "Oui, mais c'est logique"
                responses[3].text = "Non, faut demander au secrétariat"
            case 3:
                responses[0].textColor = UIColor.black;
                responses[1].textColor = UIColor.black;
                responses[2].textColor = UIColor.black;
                responses[3].textColor = UIColor.black;
                question.text = "Quelle est la plus grande planète du système solaire?"
                img.image = UIImage(named: "SophieLaGirafe")  // Remplacez avec l'image pour la question 3
                responses[0].text = "Jupiter"
                responses[1].text = "Saturne"
                responses[2].text = "Mars"
                responses[3].text = "Terre"
            default:
                responses[0].textColor = UIColor.black;
                responses[1].textColor = UIColor.black;
                responses[2].textColor = UIColor.black;
                responses[3].textColor = UIColor.black;
                // Si on dépasse le nombre de questions, peut-être revenir au début ou afficher un message
                question.text = "Fin du quiz!"
                img.image = nil
                for response in responses {
                    response.text = ""
                }
                suivant.isEnabled = false  // Désactiver le bouton suivant à la fin
            }
        }

}


