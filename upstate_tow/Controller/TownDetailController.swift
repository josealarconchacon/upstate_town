//
//  TownDetailController.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/17/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import MapKit

class TownDetailController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var townImage: UIImageView!
    @IBOutlet weak var townMapView: MKMapView!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        townImage.town_imag_detail()
       
//        townMapView.map_layout()
        // Do any additional setup after loading the view.
    }
}

extension TownDetailController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return 1
        } else if (section == 1) {
            return 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TownDetailTableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}


