import UIKit
import Nuke

class Question2Cell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var areaImageView: UIImageView!

     func displaycell (labelText: String, imageURL: URL) {
            label.text = labelText
            Nuke.loadImage(with: imageURL, into: areaImageView)
        }
    }
