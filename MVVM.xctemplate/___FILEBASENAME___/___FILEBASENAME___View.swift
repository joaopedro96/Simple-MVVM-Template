//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ KaBuM!. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {
    // events clicks on view
}

final class ___FILEBASENAMEASIDENTIFIER___: UIView {
    
    // MARK: - PROPERTIES
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    // MARK: - INITIALIZERS
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    
    private lazy var scrollView: UIScrollView = {
        let setupComponent = UIScrollView()
        setupComponent.translatesAutoresizingMaskIntoConstraints = false
        setupComponent.contentInsetAdjustmentBehavior = .never
        setupComponent.showsVerticalScrollIndicator = false
        return setupComponent
    }()
    
    private lazy var containerStackView: UIStackView = {
        let setupComponent = UIStackView()
        setupComponent.axis = .vertical
        return setupComponent
    }()
    
    private lazy var headerSection: ___VARIABLE_featureName___HeaderSectionView = {
        let setupComponent = ___VARIABLE_featureName___HeaderSectionView()
        return setupComponent
    }()
    
    // MARK: - PUBLIC METHODS
    
    func updateView(with response: ___VARIABLE_featureName___Response) {
        headerSection.updateSection(with: response)
    }
}

// MARK: - CODE VIEW

extension ___FILEBASENAMEASIDENTIFIER___: CodeView {
    func buildViewHierarchy() {
        addSubview(scrollView)
        scrollView.addSubview(containerStackView)
        containerStackView.addArrangedSubviews([headerSection])
    }
    
    func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
        
        containerStackView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalTo(scrollView)
            make.height.equalTo(snp.height).priority(.low)
            make.width.equalTo(snp.width)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
}
