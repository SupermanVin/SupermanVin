//
//  ViewController.swift
//  tableView_Programmatically
//
//  Created by Vinod Veerachamy on 29/05/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {


	
	
	var tableView:UITableView?
	
	func loadTableView() {
		
		tableView = UITableView(frame: CGRect(x: 10, y: 10, width: 300, height: 500))
		
		tableView?.dataSource = self
		view.addSubview(tableView!)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		loadTableView()
		
	}
	
	
	//MARK: UITABLEVIEW DATASOURCE METHODS
	
	//why numberofrow and Uitableviewcell are mandatory
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell:UITableViewCell?
		
		cell = tableView.dequeueReusableCell(withIdentifier: "cell")
		
		if cell  == nil {
			cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
		}
		
		cell?.textLabel?.text = "ROW \(indexPath.row)"
	
	 return cell!

}

}
