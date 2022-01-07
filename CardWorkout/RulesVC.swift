//
//  RulesVC.swift
//  CardWorkout
//
//  Created by Dmitry Khitrin on 1/7/22.
//

import UIKit

class RulesVC: UIViewController {

  let titleLabel = UILabel()
  let rulesLabel = UILabel()
  let exercieseLabel = UILabel()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    configureTitleLabel()
    configureRulesLabel()
    configureExercisesLabel()
  }

  func configureTitleLabel() {
    view.addSubview(titleLabel)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.text = "Rules"
    titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
    titleLabel.textAlignment = .center

    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
    ])
  }

  func configureRulesLabel() {
    view.addSubview(rulesLabel)
    rulesLabel.translatesAutoresizingMaskIntoConstraints = false
    rulesLabel.text = "The valuse of each cards represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
    rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
    rulesLabel.lineBreakMode = .byWordWrapping
    rulesLabel.textAlignment = .center
    rulesLabel.numberOfLines = 0

    NSLayoutConstraint.activate([
      rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
      rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
    ])
  }

  func configureExercisesLabel() {
    view.addSubview(exercieseLabel)
    exercieseLabel.translatesAutoresizingMaskIntoConstraints = false
    exercieseLabel.text = "♠️ = Push-ups\n\n♥️ = Sit-up\n\n♣️ = Burpess\n\n♦️ = Jumping Jacks"
    exercieseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
    exercieseLabel.numberOfLines = 0

    NSLayoutConstraint.activate([
      exercieseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 35),
      exercieseLabel.widthAnchor.constraint(equalToConstant: 200),
      exercieseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }

}
