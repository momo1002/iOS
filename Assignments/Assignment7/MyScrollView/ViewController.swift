//
//  ViewController.swift
//  MyScrollView
//
//  Created by Momoko Nakada on 2017-11-17.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scrollView: UIScrollView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
        
        redView.backgroundColor = UIColor.red
        redView.frame = CGRect(x: 20.0, y: 20.0, width: 100.0, height: 100.0)
        scrollView.addSubview(redView)
        
        greenView.backgroundColor = UIColor.green
        greenView.frame = CGRect(x: 150.0, y: 150.0, width: 150.0, height: 200.0)
        scrollView.addSubview(greenView)
        
        blueView.backgroundColor = UIColor.blue
        blueView.frame = CGRect(x: 40.0, y: 400.0, width: 200.0, height: 150.0)
        scrollView.addSubview(blueView)
        
        yellowView.backgroundColor = UIColor.yellow
        yellowView.frame = CGRect(x: 100.0, y: 600.0, width: 180.0, height: 150.0)
        scrollView.addSubview(yellowView)
        
        
        view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

