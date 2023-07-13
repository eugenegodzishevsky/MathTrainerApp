//
//  TrainViewController.swift
//  MathTrainerApp
//
//  Created by Vermut xxx on 13.07.2023.
//

import UIKit

final class TrainViewController: UIViewController {
    //MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }
    
    //MARK: - IBOutlets
    @IBOutlet var buttonsCollection: [UIButton]!
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureButtons()
    }
    
    //MARK: - Methods
    private func configureButtons() {
        //Add shadows
        buttonsCollection .forEach { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 3.2, height: 2.4)
            button.layer.shadowOpacity = 0.3
            button.layer.shadowRadius = 3
        }
    }

    
}


