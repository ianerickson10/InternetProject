//
//  InternetMasterViewController.swift
//  InternetProject
//
//  Created by Erickson, Ian on 12/14/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UIViewController
{
    private weak var internetDetail : InternetDetailViewController? = nil
    private lazy var internetTopics : [String] = [String]()
    private lazy var addresses : [String] = [String]()
    
    private func setupDetailContents() -> Void
    {
        internetTopics =
        [
            "Internet Definitions😅",
            "Standard Search Engine🚔",
            "AP CSP💻",
            "Canyons District🏫",
            "CTEC 👨‍🏫",
            "Social Media📷"
        ]
        
        addresses =
        [
            "https://www.google.com",
            "https://www.instagram.com",
            "https://www.youtube.com",
            "https://www.canyons.instructure.com",
            "https://www.ctec.canyonsdistrict.org/"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            internetDetail = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        setupDetailContents()
        self.clearsSelectionOnViewWillAppear = false
        
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            internetDetail = (controllers[controllers.count-1] as! UINavigationController).topViewController as? InternetDetailViewController
        }
    }
}
