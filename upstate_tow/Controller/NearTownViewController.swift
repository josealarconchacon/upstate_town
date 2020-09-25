//
//  NearTownViewController.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/15/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class NearTownViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension NearTownViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nearMeCell", for: indexPath) as! NearMeCell
        cell.nearMeImageView.image_layout()
        
        return cell
    }
}
