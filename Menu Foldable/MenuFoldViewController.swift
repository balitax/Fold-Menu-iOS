//
//  MenuFoldViewController.swift
//  Menu Foldable
//
//  Created by Agus Cahyono on 5/4/16.
//  Copyright © 2016 Agus Cahyono. All rights reserved.
//

import UIKit

class MenuFoldViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var menuFoldItemTable: UITableView!
    let identiferCell = "menu"
    
    let menuItem = ["Home","About Us","Portofolio","Blog","Join Us", "Our Client", "Contact Us"]
    var colorMenus = [0x9249CD,0x50E3C2,0x438BDF,0xF8D61C,0x9249CD,0xF043AD,0x96f81c]
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "MenuFoldViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuFoldItemTable.backgroundColor = UIColor.brownColor()
        self.menuFoldItemTable.registerNib(MenuItemTableViewCell.createNib(), forCellReuseIdentifier: identiferCell)
    }

    //MARK: UITableView Delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identiferCell) as! MenuItemTableViewCell
        
        cell.menuName.text = menuItem[indexPath.row]
        cell.menuName.textColor = UIColor.whiteColor()
        
        cell.contentView.backgroundColor = UIColor(netHex: colorMenus[indexPath.row])
        
        // remove separator cell
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
        
        return cell
        
    }
    

}


//MARK: UIColor Extension
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

