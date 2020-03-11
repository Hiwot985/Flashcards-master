//
//  creationviewcontrollerViewController.swift
//  Flashcards
//
//  Created by Hiwot belay Tadesse on 3/6/20.
//  Copyright © 2020 Hiwot Belay. All rights reserved.
//

import UIKit

class creationviewcontrollerViewController: UIViewController {
    var flashcardsController: ViewController!
    override func viewDidLoad() {
        // flashcardsController.updateFlashcard()
            super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    @IBAction func didTaponDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        flashcardsController.updateFlashcard(question: questionText!,answers: answerText!)
        dismiss(animated:true)
        
    }
    
    @IBAction func didTaponCancel(_ sender: Any) {
        dismiss(animated: true)
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
