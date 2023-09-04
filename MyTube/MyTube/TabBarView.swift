//
//  TabBarView.swift
//  MyTube
//
//  Copyright (c) 2023 z-wook. All right reserved.
//

import UIKit
import SnapKit

final class TabBarView: UIView {
    
    lazy var houseBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "play.rectangle"), for: .normal)
        button.tintColor = .red
        return button
    }()
    
    lazy var personBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        
        stack.backgroundColor = .white
        stack.layer.cornerRadius = 30
        
        stack.layer.shadowColor = UIColor.black.cgColor
        stack.layer.shadowOffset = CGSize(width: 0, height: 2) // 그림자의 위치 (수평, 수직)
        stack.layer.shadowOpacity = 0.1 // 그림자 투명도
        stack.layer.shadowRadius = 10 // 그림자 반경
        
        
        [houseBtn, personBtn].forEach {
            stack.addArrangedSubview($0)
        }
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setLayout()
    }
    
    private func setLayout() {
        self.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
