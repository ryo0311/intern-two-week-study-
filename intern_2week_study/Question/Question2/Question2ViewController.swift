import UIKit

final class Question2ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let areaTexts: [String] = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県"]
    private let urls: [String] = [
       "","","","","","",""
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.register(
            UINib(nibName: "Question2Cell", bundle: nil),
            forCellReuseIdentifier: "question2Cell"
        )
    }
}

extension Question2ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TableViewに表示する行数を指定する
        return areaTexts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cellをカスタマイズ
        let cell: UITableViewCell = tableView.dequeueReusableCell(
            withIdentifier: "question2Cell",
            for: indexPath
        )
        guard let customCell = cell as? Question2Cell else { return UITableViewCell() }
        let url = URL(string: urls[indexPath.row])!
        customCell.displayCell(text: areaTexts[indexPath.row], url: url)
        return customCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // アクションを実装
        let alertController: UIAlertController = UIAlertController(
            title: areaTexts[indexPath.row],
            message: "関東地方",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
