//
//  SecondSceenController.swift
//  FirstApp
//
//  Created by Stout, Zachary on 10/12/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

import UIKit

public class SecondSceenController : UIViewController
{
    private lazy var color : ColorTools = ColorTools()
    
    public override func viewDidLoad()
    {
    super.viewDidLoad()
    view.backgroundColor = color.createRandomColor()
    }
}
