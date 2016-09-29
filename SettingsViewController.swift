//
//  SettingsViewController.swift
//  tippy
//
//  Created by Goel, Ruchi on 9/25/16.
//  Copyright © 2016 Ruchi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentIndex = defaults.integerForKey("tip_percent")
        
        
        tipPercentControl.selectedSegmentIndex = percentIndex
    }
    
    @IBAction func onDefaultPercentChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = tipPercentControl.selectedSegmentIndex
        
        defaults.setInteger(index, forKey: "tip_percent")
        defaults.synchronize()
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
