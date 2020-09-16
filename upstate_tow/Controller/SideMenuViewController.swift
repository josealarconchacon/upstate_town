//
//  SideMenuViewController.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/15/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class SideMenuViewController: UITableViewController {
    
    var didTypeMenu: ((SideMenu) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let side_menu = SideMenu(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self ] in
            print("Dismiss: \(side_menu)")
            self?.didTypeMenu?(side_menu)
        }
    }
}
