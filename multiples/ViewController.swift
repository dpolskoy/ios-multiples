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
	}

	@IBAction func onAddPressed(sender: UIButton) {
	}
}

