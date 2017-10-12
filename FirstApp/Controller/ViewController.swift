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
    var globalScore : Int = 0
    
        @IBOutlet weak var scoreLabel: UILabel!
    private lazy var colorTool : ColorTools = ColorTools()
    @IBOutlet weak var secondButton: UIButton!
    
    @IBAction func secondMethod(_ sender: UIButton)
    {
        secondButton.backgroundColor = colorTool.createRandomColor()
        view.backgroundColor = colorTool.createRandomColor()
        secondButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
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

