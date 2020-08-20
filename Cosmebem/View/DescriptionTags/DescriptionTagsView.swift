//
//  DescriptionTagsView.swift
//  Cosmebem
//
//  Created by Beatriz Carlos on 19/08/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class DescriptionTagsView: UIView {
    lazy var viewDescription: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.94, green: 0.80, blue: 0.80, alpha: 1.00)
//        view.backgroundColor = .none
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageTag: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "hypoalergenic")
        return image
    }()
    
    lazy var textDescription: UITextView = {
        let text = UITextView()
        text.text = tags[1].description
        text.textColor = .black
        text.isEditable = false
        text.backgroundColor = .none
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(viewDescription)
        viewDescription.addSubview(imageTag)
        viewDescription.addSubview(textDescription)
        autoLayout()
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            viewDescription.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            viewDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            viewDescription.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            viewDescription.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, multiplier: 5/10)
        ])
        
        NSLayoutConstraint.activate([
            imageTag.topAnchor.constraint(equalTo: self.viewDescription.topAnchor, constant: 18),
            imageTag.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageTag.heightAnchor.constraint(equalToConstant: 120),
            imageTag.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        NSLayoutConstraint.activate([
            textDescription.topAnchor.constraint(equalTo: self.imageTag.bottomAnchor, constant: 16),
            textDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            textDescription.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 8),
            textDescription.bottomAnchor.constraint(equalTo: self.viewDescription.bottomAnchor)
        ])
    }
}