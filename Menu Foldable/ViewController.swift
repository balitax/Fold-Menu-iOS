//
//  ViewController.swift
//  Menu Foldable
//
//  Created by Agus Cahyono on 5/4/16.
//  Copyright © 2016 Agus Cahyono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // initiate menu
    var foldMenu = MenuFoldViewController(nibName: "MenuFoldViewController", bundle: nil)
    var isOpenMenu: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initFoldMenu() // just add menu,  but its still hide
    }
    
    
    func initFoldMenu() {
        
        foldMenu.view.frame = CGRectMake(
            0, // x position menu
            self.view.frame.size.height, // y position menu
            self.view.frame.size.width, // size width menu
            self.view.frame.size.height / 2 // height of menu
        )
        
        foldMenu.view.tag = 100 // optional
        self.view.addSubview(foldMenu.view) // add menu to this view
        
    }
    
    func initMenuAction() {
        if isOpenMenu == false { // its mean menu is hide
            
            UIView.animateWithDuration(
                0.5,
                delay: 0.0,
                options: .TransitionNone,
                animations: { () -> Void in
                    
                    self.foldMenu.view.frame = CGRectMake(
                        0, // x position
                        self.view.frame.size.height / 2 - 60, // y position
                        self.view.frame.size.width, // width menu
                        self.view.frame.size.height / 2 + 20 // height menu
                    )
                    
                }, completion: { (finished: Bool) -> Void in
            })
            
            // set is open menu to true
            isOpenMenu = true
            
        }
        // hide menu after show
        else {
            UIView.animateWithDuration(
                0.5,
                delay: 0.0,
                options: .TransitionNone,
                animations: { () -> Void in
                    
                    self.foldMenu.view.frame = CGRectMake(
                        0, // x position
                        self.view.frame.size.height, // y position
                        self.view.frame.size.width, // width menu
                        self.view.frame.size.height / 2 // height menu
                    )
                    
                }, completion: { (finished: Bool) -> Void in
            })
            // set isopen menu to false
            isOpenMenu = false
        }
    }

    @IBAction func openMenu(sender: AnyObject) {
        initMenuAction()
    }
    

}













