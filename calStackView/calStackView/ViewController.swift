//
//  ViewController.swift
//  calStackView
//
//  Created by Hardy  on 2/17/21.
//

import UIKit

class ViewController: UIViewController {
    var titleLabel = UILabel()
    var stackView = UIStackView()
    var stackArray = [UIStackView(),UIStackView(),UIStackView(),UIStackView(),UIStackView()]
    var length = 4
    
    
    
//    var stackView1 = UIStackView()
//    var stackView2 = UIStackView()
//    var stackView3 = UIStackView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTitleLabel()
        configureStackView()
        
    }
    func configureStackView()  {
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        //substackview
        
        for i in 0..<stackArray.count{
            stackView.addArrangedSubview(stackArray[i])
            stackArray[i].axis = .horizontal
            stackArray[i].distribution = .fillEqually
            
            stackArray[i].spacing = 10

        }
        
        
        
        addButton()
        setStackView()
        
        
        
    }
    
    func setStackView()  {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
               
    }
    
    
    func addButton() {
        let number = 3
//        let operation = ["1","2","3","+"]
        let operation1 = [["AC","<-","%","/"],["7","8","9","*"], ["4","5","6","-"], ["1","2","3","+"],["0","",".","="]]
        
        
        for j in 0...length{
            for i in 0...number{
                let button = SurveyButton()
                button.frame.size = CGSize(width: 30, height: 30)
//
                button.setTitle(operation1[j][i], for: .normal)
            
                stackArray[j].addArrangedSubview(button)
                
            }
            
            stackView.addArrangedSubview(stackArray[j])
            
        }
        
        
    }
    func configureTitleLabel()  {
        view.addSubview(titleLabel)
        titleLabel.text = "0"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 36)
        titleLabel.textAlignment = .right
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        setLabel()
    }
    
    func setLabel()  {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }


}

