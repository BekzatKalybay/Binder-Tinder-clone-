//
//  ViewController.swift
//  Binder
//
//  Created by Bekzat Kalybayev on 01.11.2021.
//

import UIKit

class HomeController: UIViewController {
    private let header = TopNavigationStackView()
    private let cardsDeckView = UIView()
    private let footer = HomeBottomControlStackView()
    
    let cardViewModels: [CardViewModel] = {
        let producers = [
            User(name: "Kelly", age: 23, profession: "Music DJ", imageNames: ["kelly1", "kelly2", "kelly3"]),
            Advertiser(title: "Slide Out Menu", brandName: "Lets Build That App", posterPhotoName: "slide_out_menu_poster"),
            User(name: "Jane", age: 18, profession: "Teacher", imageNames: ["jane1", "jane2", "jane3"])
        ] as [ProducesCardViewModel]
        
        let viewModels = producers.map({return $0.toCardViewModel()})
        return viewModels
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        header.settingsButton.addTarget(self, action: #selector(handleSettings), for: .touchUpInside)
        
        setupLayout()
        setupCards()
    }
    
    @objc func handleSettings() {
        print("show registration page")
        let registrationController = RegistrationController()
        present(registrationController, animated: true)
    }
    
    fileprivate func setupCards() {
        //To iterate cards
        cardViewModels.forEach { cardViewModel in
            let cardView = CardView(frame: .zero)
            cardView.cardViewModel = cardViewModel
            cardsDeckView.addSubview(cardView)
            cardView.fillSuperview()
        }
    }
    
    //MARK: - Setup Top and Bottom View
    fileprivate func setupLayout() {
        let mainView = UIStackView(arrangedSubviews: [header, cardsDeckView, footer])
        mainView.axis = .vertical
        view.addSubview(mainView)
        mainView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        mainView.isLayoutMarginsRelativeArrangement = true
        mainView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        
        mainView.bringSubviewToFront(cardsDeckView)
    }
}

