//
//  NotificationCell.swift
//  TwitterTutorial
//
//  Created by Youngbin Choi on 4/26/24.
//

import Foundation
import UIKit

class NotificationCell: UITableViewCell {
    
    // MARK: - Properties
    
    private lazy var profileImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.setDimensions(width: 40, height: 40)
        $0.layer.cornerRadius = 40 / 2
        $0.backgroundColor = .twitterBlue
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleProfileImageTapped))
        $0.addGestureRecognizer(tapGesture)
        $0.isUserInteractionEnabled = true
    }
    
    private let notificationLabel = UILabel().then {
        $0.numberOfLines = 2
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.text = "some test notification message"
    }
    
    private lazy var stackView = UIStackView().then {
        $0.addArrangedSubview(profileImageView)
        $0.addArrangedSubview(notificationLabel)
        $0.spacing = 8
        $0.alignment = .center
    }
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(12)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Selector
    
    @objc func handleProfileImageTapped() {
        
    }
}
