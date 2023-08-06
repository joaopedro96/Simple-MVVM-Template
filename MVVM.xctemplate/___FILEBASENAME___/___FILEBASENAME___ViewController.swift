//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ KaBuM!. All rights reserved.
//

import UIKit

protocol MyFeatureViewControllerDelegate: AnyObject {
    ///delete if no method its needed
}

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    // MARK: - PROPERTIES

    private let viewModel: ___VARIABLE_featureName___ViewModel
    private let contentView: ___VARIABLE_featureName___View
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    // MARK: - INITIALIZERS

    init(viewModel: ___VARIABLE_featureName___ViewModel,
         contentView: ___VARIABLE_featureName___View = ___VARIABLE_featureName___View()) {
        self.viewModel = viewModel
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LIFE CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViewController()
        viewModel.initState()
    }
    
    // MARK: - PRIVATE METHODS
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
    }
    
    private func setupViewController() {
        contentView.delegate = self
        viewModel.delegate = self
        view = contentView
        title = <#Page Title#>
    }
}

// MARK: - EXTENSIONS

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_featureName___ViewModelDelegate {
    func updateView(with response: ___VARIABLE_featureName___Response) {
        contentView.updateView(with: response)
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_featureName___ViewDelegate {

}
