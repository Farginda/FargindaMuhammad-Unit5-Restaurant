//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Farginda on 12/4/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {

    // outlets for view
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    var menuItem: MenuItem!
    
    // add to order button tapped
    @IBAction func addToOrderButtonTapped(_ sender: UIButton) {
            UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform =
                CGAffineTransform(scaleX: 1.0, y: 1.0)
        }

    // append item to order user
    MenuController.shared.order.menuItems.append(menuItem)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // round corners button
        addToOrderButton.layer.cornerRadius = 5.0
        
        updateUI()

    }
    
    // update elements in view
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
        MenuController.shared.fetchImage(url: menuItem.imageURL) { (image) in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
       
    }

}
