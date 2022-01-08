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
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  init(color: UIColor, title: String, iconName: String) {
    super.init(frame: .zero)

    configuration = .tinted()
    configuration?.baseForegroundColor = color
    configuration?.baseBackgroundColor = color
    configuration?.cornerStyle = .medium
    configuration?.title = title
    configuration?.image = UIImage(systemName: iconName)
    configuration?.imagePadding = 5
    configuration?.imagePlacement = .leading
    translatesAutoresizingMaskIntoConstraints = false
  }

}
