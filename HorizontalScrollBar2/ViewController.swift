//
//  ViewController.swift
//  HorizontalScrollBar2
//
//  Created by knuckles on 2017/4/1.
//  Copyright © 2017年 knuckles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var page1Button: UIButton!
    @IBOutlet weak var page2Button: UIButton!
    @IBOutlet weak var page3Button: UIButton!
    @IBOutlet weak var page4Button: UIButton!
    @IBOutlet weak var page5Button: UIButton!
    var selectedButton: UIButton!
    
    @IBOutlet weak var containerView: UIView!
    var pageViewController: PageViewController!

    
    func changeTab(to newButton: UIButton) {
        let defaultColor = selectedButton.tintColor
        selectedButton.backgroundColor = UIColor.white
        selectedButton.setTitleColor(defaultColor, for: .normal)
        
        newButton.backgroundColor = UIColor.lightGray
        newButton.setTitleColor(UIColor.black, for: .normal)
        
        self.selectedButton = newButton
    }
    
    func changeTab(byIndex index: Int) {
        switch index {
        case 0: changeTab(to: page1Button)
        case 1: changeTab(to: page2Button)
        case 2: changeTab(to: page3Button)
        case 3: changeTab(to: page4Button)
        case 4: changeTab(to: page5Button)
        default: return
        }
    }


    var mainViewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        selectedButton = page1Button
        //selectedViewController = page1ViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContainerViewSegue" {
            pageViewController = segue.destination as! PageViewController
            pageViewController.mainViewController = self
        }
    }

    
    @IBAction func showPage1(_ sender: Any) {
        changeTab(to: page1Button)
        pageViewController.showPage(byIndex: 0)
    }
    
    @IBAction func showPage2(_ sender: Any) {
        changeTab(to: page2Button)
        pageViewController.showPage(byIndex: 1)
    }
    
    @IBAction func showPage3(_ sender: Any) {
        changeTab(to: page3Button)
        pageViewController.showPage(byIndex: 2)
    }
    
    @IBAction func showPage4(_ sender: Any) {
        changeTab(to: page4Button)
        pageViewController.showPage(byIndex: 3)
    }

    @IBAction func showPage5(_ sender: Any) {
        changeTab(to: page5Button)
        pageViewController.showPage(byIndex: 4)
    }
}

