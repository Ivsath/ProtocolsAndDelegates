//
//  LoginViewController.swift
//  ProtocolsAndDelegates
//
//  Created by iv on 6/14/19.
//  Copyright © 2019 ivsath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameEntryText: UITextField!
    
    var delegate: LoginCompleteDelegate?
    
    @IBAction func doneClicked(_ sender: Any) {
        delegate?.userCreated(name: userNameEntryText.text ?? "No name")
        dismiss(animated: true, completion: nil)
    }
    
}
