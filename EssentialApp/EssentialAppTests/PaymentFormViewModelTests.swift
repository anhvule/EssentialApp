////
////  PaymentFormViewModelTests.swift
////  CathayMobileTests
////
////  Created by Jack Le on 6/10/21.
////  Copyright © 2021 Le, AnhVu. All rights reserved.
////
//
//import XCTest
//
//struct PaymentFormViewModel {
//	private let iban: FieldViewModel
//	private let tax: FieldViewModel
//	
//	init(iban: FieldViewModel, taxNumber: FieldViewModel) {
//		self.iban = iban
//		self.tax = taxNumber
//	}
//	
//	var state: State {
//		return .fields([iban, tax])
//	}
//}
//
//struct FieldViewModel: Equatable {}
//struct SuggestionViewModel: Equatable {}
//
//enum State: Equatable {
//	case fields([FieldViewModel])
//	case focus(FieldViewModel, [SuggestionViewModel])
//}
//
//
//
//class PaymentFormViewModelTests: XCTestCase {
//
//	func test_initialState() {
//		let iban = FieldViewModel()
//		let taxNumber = FieldViewModel()
//		let sut = PaymentFormViewModel(iban: iban, taxNumber: taxNumber)
//		
//		XCTAssertEqual(sut.state, .fields([iban, taxNumber]))
//	}
//	
//	func test_ibanFocusedState_includesOnlyIbanField() {
//		let iban = FieldViewModel()
//		let taxNumber = FieldViewModel()
//		let sut = PaymentFormViewModel(iban: iban, taxNumber: taxNumber)
//		
////		iban.focus.accept(())
//		XCTAssertEqual(sut.state, .fields([iban, taxNumber]))
//	}
//
//}
