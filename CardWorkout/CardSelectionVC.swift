//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Dmitry Khitrin on 1/7/22.
//

import UIKit

class CardSelectionVC: UIViewController {

  let cardImageView = UIImageView()
  let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop!")
  let resetButton = CWButton(backgroundColor: .systemGreen, title: "Reset")
  let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")

  let cards = CardDeck.allCards
  var timer: Timer!

  func startTimer() {
    timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
  }

  @objc func stopTimer() {
    timer.invalidate()
  }

  @objc func resetTimer() {
    stopTimer()
    startTimer()
  }

  @objc func showRandomCard() {
    cardImageView.image =  cards.randomElement()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    configureUI()
    startTimer()
  }

  func configureUI() {
    configureCardImageView()
    configurStopButton()
    configurResetButton()
    configurRulesButton()
  }

  func configureCardImageView() {
    view.addSubview(cardImageView)
    cardImageView.translatesAutoresizingMaskIntoConstraints = false
    cardImageView.image = UIImage(named: "AS")

    NSLayoutConstraint.activate([
      cardImageView.widthAnchor.constraint(equalToConstant: 250),
      cardImageView.heightAnchor.constraint(equalToConstant: 350),
      cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75),
    ])
  }

  func configurStopButton() {
    view.addSubview(stopButton)
    stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)

    NSLayoutConstraint.activate([
      stopButton.widthAnchor.constraint(equalToConstant: 260),
      stopButton.heightAnchor.constraint(equalToConstant: 50),
      stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      stopButton.centerYAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 40),
    ])
  }

  func configurResetButton() {
    view.addSubview(resetButton)
    resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)

    NSLayoutConstraint.activate([
      resetButton.widthAnchor.constraint(equalToConstant: 115),
      resetButton.heightAnchor.constraint(equalToConstant: 50),
      resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
      resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
    ])
  }

  func configurRulesButton() {
    view.addSubview(rulesButton)
    rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)

    NSLayoutConstraint.activate([
      rulesButton.widthAnchor.constraint(equalToConstant: 115),
      rulesButton.heightAnchor.constraint(equalToConstant: 50),
      rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
      rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
    ])

  }

  @objc func presentRulesVC() {
    present(RulesVC(), animated: true)
  }
    
}
