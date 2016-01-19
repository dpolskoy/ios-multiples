//
//  ViewController.swift
//  multiples
//
//  Created by Dmitriy Polskoy on 2016-01-18.
//  Copyright © 2016 Dmitriy Polskoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var playBtn: UIButton!
	@IBOutlet weak var logoImg: UIImageView!
	@IBOutlet weak var multipleTxt: UITextField!
	@IBOutlet weak var addBtn: UIButton!
	@IBOutlet weak var infoLbl: UILabel!
	@IBOutlet weak var calculationLbl: UILabel!
	
	var multiple = 0
	var currentResult = 0
	let maxResult = 40
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		infoLbl.adjustsFontSizeToFitWidth = true
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func onPlayPressed(sender: UIButton) {
		
		if let tmpMultiple = Int(multipleTxt.text!) {
		
			playBtn.hidden = true
			logoImg.hidden = true
			multipleTxt.hidden = true
			
			addBtn.hidden = false
			infoLbl.hidden = false

			multiple = tmpMultiple
		}
	}

	@IBAction func onAddPressed(sender: UIButton) {
		if isGameOver() {
			startNewGame()
			return
		}
		
		let nextResult = currentResult + multiple
		
		infoLbl.hidden = true
		calculationLbl.hidden = false
		calculationLbl.text = "\(currentResult) + \(multiple) = \(nextResult)"
		
		currentResult = nextResult
	}
	
	func isGameOver() -> Bool {
		return currentResult >= maxResult
	}
	
	func startNewGame() {
		playBtn.hidden = false
		logoImg.hidden = false

		multipleTxt.hidden = false
		multipleTxt.text = ""
		
		addBtn.hidden = true
		
		calculationLbl.hidden = true
		
		currentResult = 0
	}
}

