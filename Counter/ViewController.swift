//
//  ViewController.swift
//  Counter
//
//  Created by Muralidhar Reddy Kakanuru on 11/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var startingValueField: UITextField! // Connect your text field

    var count: Int = 0 {
        didSet {
            counter.text = "\(count)"
        }
    }
    
    let maxValue = 50
    let minValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text = "\(count)"
    }

    @IBAction func startvalue(_ sender: UIButton) {
        if let inputValue = startingValueField.text, let newValue = Int(inputValue) {
            count = newValue
        } else {
            showAlert(message: "Please enter a valid number.")
        }
    }

    @IBAction func Increase(_ sender: UIButton) {
        if count < maxValue {
            count += 1
        } else {
            showAlert(message: "Maximum value reached!")
        }
    }

    @IBAction func reset(_ sender: UIButton) {
        count = 0
    }

    @IBAction func Decrease(_ sender: UIButton) {
        if count > minValue {
            count -= 1
        } else {
            showAlert(message: "Minimum value reached!")
        }
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
