import UIKit
import Nuke

class Question2Cell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var areaImageView: UIImageView!

    func displayCell(text: String, url: URL) {
            label.text = text
        Nuke.loadImage(with: url, into: areaImageView)
        }
    }
