//
//  ViewController.swift
//  1VC2VC
//
//  Created by Vinod Veerachamy on 13/05/21.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var clickMe:UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	@IBAction func clikeME(_ sender: UIButton) {
		
		let secondVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
		navigationController?.pushViewController(secondVC, animated: true)
		
		 print( "do you want to navigate to secondView Controller")
			
	}
	


}

