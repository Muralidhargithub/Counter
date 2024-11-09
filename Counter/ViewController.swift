//
//  ViewController.swift
//  Counter
//
//  Created by Muralidhar reddy Kakanuru on 11/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    var count:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text="\(count)"
    }

    @IBAction func Increase(_ sender: Any) {
        count+=1
        counter.text="\(count)"
    }
    
    @IBAction func Decrease(_ sender: Any) {
        count-=1
        counter.text="\(count)"
        
    }
}

