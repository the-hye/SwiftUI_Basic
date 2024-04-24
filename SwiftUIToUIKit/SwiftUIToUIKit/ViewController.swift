//
//  ViewController.swift
//  SwiftUIToUIKit
//
//  Created by JIHYE SEOK on 4/24/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func goToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        let greeting = "Hello From UIKit"
        let rootView = Greetings(textFromUIKit: greeting)
        
        return UIHostingController(coder: coder, rootView: rootView)
    }
    
}

