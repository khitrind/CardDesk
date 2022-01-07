//
//  CWButton.swift
//  CardWorkout
//
//  Created by Dmitry Khitrin on 1/7/22.
//

import UIKit

class CWButton: UIButton {

  override init(frame: CGRect) {
    super.init(frame: frame)
    confgure()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  init(backgroundColor: UIColor, title: String) {
    super.init(frame: .zero)
    self.backgroundColor = backgroundColor
    setTitle(title, for: .normal)
    confgure()
  }

  func confgure() {
    layer.cornerRadius = 8
    titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
    setTitleColor(.white, for: .normal)
    translatesAutoresizingMaskIntoConstraints = false
  }

}
