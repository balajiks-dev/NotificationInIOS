//
//  ViewController.swift
//  Notification
//
//  Created by Balaji Sundaram on 17/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sentNotificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("cfasfds")
        NotificationCenter.default.addObserver(self, selector: #selector(updateNotificationSentLabel), name: NSNotification.Name(rawValue: "Sample"), object: nil)

        // Do any additional setup after loading the view.
    }

    @IBAction func notificationActionButton(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "Sample"), object: self)

    }
    
    @objc func updateNotificationSentLabel() {
          print("Ohmasfsd")
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(vc, animated: true)
          }
    
}

