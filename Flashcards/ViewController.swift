//
//  ViewController.swift
//  Flashcards
//
//  Created by Hiwot belay Tadesse on 2/17/20.
//  Copyright © 2020 Hiwot Belay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        frontLabel.isHidden = false
        backLabel.isHidden = true
    }
    func updateFlashcard(question:String, answers:String)  {
        frontLabel.text=question
        backLabel.text=answers
    }

    @IBAction func didTaponFlashcard(_ sender: Any) {
        if(frontLabel.isHidden){
            frontLabel.isHidden = false
            backLabel.isHidden = true
        }
        else{
            backLabel.isHidden=false
            frontLabel.isHidden = true 
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! creationviewcontrollerViewController
        creationController.flashcardsController = self
        
    }
    

    }

 
