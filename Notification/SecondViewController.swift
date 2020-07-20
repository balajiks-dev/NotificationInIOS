//
//  SecondViewController.swift
//  Notification
//
//  Created by Balaji Sundaram on 21/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var sentNotificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
            NotificationCenter.default.addObserver(self, selector: #selector(updateNotificationSentLabel), name: NSNotification.Name(rawValue: "Sample"), object: nil)
        // Do any additional setup after loading the view.
    }
    
   
    @objc func updateNotificationSentLabel() {
        print("Ohmasfsd")
            self.sentNotificationLabel.text = "Notification sent!"
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
