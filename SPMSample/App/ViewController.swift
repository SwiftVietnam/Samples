//
//  Copyright © An Tran. All rights reserved.
//

import UIKit
import Core

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var label: UILabel!

    var core: Core!

    override func viewDidLoad() {
        super.viewDidLoad()

        core = Core()
    }


    @IBAction func convert(_ sender: Any) {
        label.text = core.stringService.prefixAndUppercase(textField.text)
    }
}

