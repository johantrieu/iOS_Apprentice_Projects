//
//  HighScoresViewController.swift
//  Bullseye2
//
//  Created by zalukana on 19.7.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import UIKit

class HighScoresViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HighScoreItem", for: indexPath)
        let nameLabel = cell.viewWithTag(1000) as! UILabel
        let scoreLabel = cell.viewWithTag(2000) as! UILabel
        if indexPath.row == 0 {
            nameLabel.text = "The reader of this book"
            scoreLabel.text = "50000"
        } else if indexPath.row == 1 {
            nameLabel.text = "Manda"
            scoreLabel.text = "10000"
        } else if indexPath.row == 2 {
            nameLabel.text = "Joey"
            scoreLabel.text = "5000"
        } else if indexPath.row == 3 {
            nameLabel.text = "Adam"
            scoreLabel.text = "1000"
        } else if indexPath.row == 4 {
            nameLabel.text = "Eli"
            scoreLabel.text = "500"
        }
        return cell
    }
    
    // MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    }
}
