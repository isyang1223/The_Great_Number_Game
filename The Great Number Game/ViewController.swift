//
//  ViewController.swift
//  The Great Number Game
//
//  Created by Ian Yang on 3/10/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var random: Int = 0
    
    
    @IBOutlet weak var numinput: UITextField!
    

    
    
    @IBAction func submitPressed(_ sender: UIButton) {
        let input: Int? = Int(numinput.text!)
        if let unwrappedinput = input {
            if unwrappedinput > random {
                let alertController = UIAlertController(title: "Incorrect", message:
                    "\(unwrappedinput) Was Too High!!!", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Guess Again!", style: UIAlertActionStyle.destructive,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
            }
            else if unwrappedinput < random {
                let alertController = UIAlertController(title: "Incorrect", message:
                    "\(unwrappedinput) Was Too Low!!!", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Guess Again!", style: UIAlertActionStyle.destructive,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
            }
            else {
                let alertController = UIAlertController(title: "Correct", message:
                    "\(random) Was Correct!!!", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Play Again!", style: UIAlertActionStyle.default,handler: { action in
                    self.viewDidLoad()
                }))
                
                self.present(alertController, animated: true, completion: nil)
            
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        random = Int(arc4random_uniform(100) + 1)
        numinput.text = ""
        print(random)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

