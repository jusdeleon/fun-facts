//
//  ViewController.swift
//  Fun Facts
//
//  Created by Justin de Leon on 24/05/2017.
//  Copyright © 2017 Justin de Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let backgroundColorProvider = BackgroundColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        
        let randomColor = backgroundColorProvider.randomColor()
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}

