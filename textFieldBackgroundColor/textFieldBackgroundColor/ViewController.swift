//
//  ViewController.swift
//  textFieldBackgroundColor
//
//  Created by Vinod Veerachamy on 16/06/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
	
	@IBOutlet weak var txt1: UITextField!
	@IBOutlet weak var txt2: UITextField!
	
	

	override func viewDidLoad() {
		super.viewDidLoad()
	 
		
		
	}
	
	func textFieldDidBeginEditing(textField: UITextField) {
	    custom.change = true
	}

	func textFieldDidEndEditing(textField: UITextField) {
	    CustomTextField.change = false
	}

//	self.addTarget(self, action: "myFunc", forControlEvents: UIControlEvents.EditingDidBegin)
}

class customTextField: UITextField{

	
	var change: Bool = false {
	    didSet {
		textColor = change ? .yellow : .black
		backgroundColor = change ? .blue : .white
	    }
	}
    required init(coder aDecoder: NSCoder) {
	super.init(coder: aDecoder)!

	//Border
	self.layer.cornerRadius = 15.0;
	self.layer.borderWidth = 1.5
	self.layer.borderColor = UIColor.white.cgColor

	//Background
	self.backgroundColor = UIColor(white: 1, alpha: 0.0)

	//Text
	self.textColor = UIColor.white
	self.textAlignment = NSTextAlignment.center
    }

}
