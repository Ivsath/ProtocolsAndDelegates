//
//  ViewController.swift
//  ProtocolsAndDelegates
//
//  Created by iv on 6/14/19.
//  Copyright © 2019 ivsath. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, LoginCompleteDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
    func userCreated(name: String) {
        nameLabel.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LoginViewController {
            destination.delegate = self
        }
    }

}
