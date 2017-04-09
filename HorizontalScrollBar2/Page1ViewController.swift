//
//  Page1ViewController.swift
//  HorizontalScrollBar2
//
//  Created by knuckles on 2017/4/4.
//  Copyright © 2017年 knuckles. All rights reserved.
//

import UIKit

class Page1ViewController: UITableViewController {

    func loadData() {
        print("load data")
        
        if (self.refreshControl?.isRefreshing)! {
            self.refreshControl?.endRefreshing()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.refreshControl?.addTarget(self, action: #selector(loadData), for: UIControlEvents.valueChanged)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = "測試標題 \(indexPath.row)"
        cell.detailTextLabel?.text = "測試摘要"
        
        return cell
    }
}
