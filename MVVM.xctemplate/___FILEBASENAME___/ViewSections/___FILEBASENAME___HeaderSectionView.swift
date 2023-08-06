//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ KaBuM!. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {
    //events clicks on section
}

final class ___FILEBASENAMEASIDENTIFIER___: UIView {
    
    // MARK: PROPERTIES
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    // MARK: - INITIALIZERS
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI

    private lazy var titleLabel: UILabel = {
        let setupComponent = UILabel(frame: .zero)
        setupComponent.numberOfLines = 1
        setupComponent.font = .systemFont(ofSize: 14, weight: .bold)
        setupComponent.textColor = .titleDarkGray
        return setupComponent
    }()
    
    // MARK: - PUBLIC METHODS
    
    func updateSection(with response: ___VARIABLE_featureName___Response) {
        
    }
}

// MARK: - CODE VIEW

extension ___FILEBASENAMEASIDENTIFIER___: CodeView {
    func buildViewHierarchy() {
        addSubview(titleLabel)
    }

    func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview()
        }
    }

    func setupAdditionalConfiguration() { }
}
