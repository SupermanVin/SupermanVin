//
//  SignupViewcontrollerTests.swift
//  SignupViewcontrollerTests
//
//  Created by Vinod Veerachamy on 30/08/21.
//

import XCTest
@testable import AutolayoutFlag

class SignupViewcontrollerTests: XCTestCase {
	var storyBoard:UIStoryboard!
	var sut:SignupViewController!
	
	
	override func setUpWithError() throws {
		storyBoard = UIStoryboard(name: "Main", bundle: nil)
		sut = storyBoard.instantiateViewController(identifier: "SignupViewController") as SignupViewController
		sut.loadViewIfNeeded()
	}
	
	
	override func tearDownWithError() throws {
		storyBoard = nil
		sut = nil
		
	}
	
	func testSignupViewController_WhenCreated_ShouldhaveEmptyField() {
		
		XCTAssertEqual(sut?.firstName.text, "")
		XCTAssertEqual(sut?.lastName.text, "")
		XCTAssertEqual(sut?.emailID.text, "")
		XCTAssertEqual(sut?.password.text, "")
		XCTAssertEqual(sut?.repeatPassword.text, "")
		
	}
	
	
	func testSignupModel_WhenValidEmailID_Provided() {
		//Arrange
		let firstName = "Vino"
		let lastName = "Kumar"
		let emailID = "Vino@gmail.com"
		let password = "123456"
		//Act
		let signupModel = SignupModel(firstName: firstName, lastName: lastName, email: emailID, password: password)
		let validEmailIDEntered = signupModel.ValidEmailID()
		//Assert
		
		XCTAssertTrue(validEmailIDEntered, "EmailID entered is not valid")
		
		
	}
	
}
