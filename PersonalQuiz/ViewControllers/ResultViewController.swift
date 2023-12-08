//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by horze on 04.12.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        mostCommonAnimal()
        }
    
    private func mostCommonAnimal () {
        let animalCounts = answersChosen.map { $0.animal }.reduce(into: [:]) { counts, animal in counts[animal, default: 0] += 1}
        if let mostCommonAnimal = animalCounts.max(by: { $0.value < $1.value})?.key {
            let definition = mostCommonAnimal.definition
            resultLabel.text = "Вы - \(mostCommonAnimal.rawValue)"
            definitionLabel.text = definition
        }
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}

