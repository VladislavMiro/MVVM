//
//  ViewController.swift
//  MVVM
//
//  Created by Vladislav Miroshnichenko on 25.09.2021.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    private(set) var viewModel: ViewModelProtocol! {
        didSet {
            self.viewModel.changeHandler = { [unowned self] viewModel in
                self.countLabel.text = String(viewModel.count)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        // Do any additional setup after loading the view.
    }

    @IBAction private func steperTapped(_ sender: UIStepper) {
        viewModel.setCount(value: Int(sender.value))
    }
    
}

