import UIKit

final class Question1ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addTextButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var comment: UITextView!
    

    @IBAction func button(_ sender: Any) {
     if(textField.text==""){
        label.text="文字を入力してください"
        label.textColor = UIColor.red
        
     }else{
             comment.text += textField.text! + "\n"
             label.text = ""
             textField.text=""
      }
        print(comment.text)
  }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func clearbutton(_ sender: Any) {
        comment.text=""
        
    }
    
}

