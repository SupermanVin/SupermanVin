//
//  SignupModel.swift
//  AutolayoutFlag
//
//  Created by Vinod Veerachamy on 31/08/21.
//

import Foundation


struct SignupModel {
	var firstName:String
	var lastName:String
	var email:String
	var password:String
}

extension SignupModel {
	
	func ValidEmailID() -> Bool {
		return email.contains("@") && email.contains(".")
	}
	
}
