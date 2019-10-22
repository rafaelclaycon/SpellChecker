// 
//  Copyright © 2018 Big Nerd Ranch
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var spellName: UILabel!
    @IBOutlet var spellDescription: UITextView!
    
    var item: Item! {
        didSet {
            navigationItem.title = item.name
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        spellName.text = item.name
        spellDescription.text = item.description
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Clear first responder
        view.endEditing(true)
    }

    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
