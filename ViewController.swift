//
//  ViewController.swift
//  NPageViewController
//
//  Created by Nirav Desai on 28/09/16.
//  Copyright © 2016 Nirav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pagingView: UIView!
    
    @IBOutlet weak var ButtonSkip: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let pageViewController =  storyBoard.instantiateViewControllerWithIdentifier("PageController") as! UIPageViewController
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        
        
        pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height + 40)
        self.addChildViewController(pageViewController)
        self.view.addSubview(pageViewController.view)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ActionSkip(sender: AnyObject) {
        
        
    }


}

