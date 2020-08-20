import UIKit

final class Question2ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let areaTexts: [String] = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県"]
    private let areaImages: [String] = [
        "https://www.ia-ibaraki.or.jp/kokusai/international/minkan/img/map.gif",
        "https://tochigi-vet.or.jp/hospital/img/tochigimap2.jpg",
        "https://www.j-lis.go.jp/data/open/cnt/3/584/1/map-gunma5.jpg",
        "https://www.pref.saitama.lg.jp/a0106/sumunarasaitama/cities/images/citiesindex-map.jpg",
        "https://uub.jp/47/chiba/chiba_kensho.png",
        "https://www.illust-box.jp/db_img/sozai/00007/71771/watermark.jpg",
        "https://uub.jp/47/kanagawa/kanagawa_kensho.png"
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
             tableView.register(UINib(nibName: "Question2Cell", bundle: nil), forCellReuseIdentifier: "question2Cell")
        }
    }
//行数
    extension Question2ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return areaTexts.count
        }
        
//cell
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
            if let cell = tableView.dequeueReusableCell(withIdentifier: "question2Cell", for: indexPath) as? Question2Cell {
                
                cell.displaycell(labelText: areaTexts[indexPath.row], imageURL: URL(string: areaImages[indexPath.row])!)
                return cell
            }
            return UITableViewCell()
        }
        

       func tableView(_ tableView: UITableView, didSelectRowAt  indexPath: IndexPath) {
            
        var alertController = UIAlertController()
            alertController = UIAlertController(title: areaTexts[indexPath.row], message: "関東地方", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "閉じる", style: .default, handler: nil))
            present(alertController, animated: true)
        }
    }
