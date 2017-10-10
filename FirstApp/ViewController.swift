//
//  ViewController.swift
//  FirstApp
//
//  Created by Stout, Zachary on 10/10/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    {

    @IBOutlet weak var secondButton: UIButton!
    
    @IBAction func secondMethod(_ sender: UIButton)
    {
        secondButton.backgroundColor = createRandomColor()
        view.backgroundColor = createRandomColor()
        secondButton.setTitleColor(createRandomColor(), for: .normal)
    }
    
    private func createRandomColor() -> UIColor
    {
        //Need red green and blue values CGFloat
        let newColor :UIColor
        let redValue = CGFloat (Double (arc4random_uniform(256)) / 255.000 )
        let greenValue = CGFloat(Double (arc4random() % 256) / 255.00)
        let blueValue = CGFloat (drand48())
        
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        return newColor
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

