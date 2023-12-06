//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by horze on 04.12.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        print(answersChosen ?? 0)
    }
}
