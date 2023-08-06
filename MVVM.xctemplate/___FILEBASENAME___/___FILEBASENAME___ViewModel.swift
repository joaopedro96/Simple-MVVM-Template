//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ KaBuM!. All rights reserved.
//

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    
    // MARK: - PROPERTIES
    
    weak var delegate: ___VARIABLE_featureName___ViewModelDelegate?
    
    // MARK: - INITIALIZERS

    init() {

    }
    
    // MARK: - PUBLIC METHODS

    func initState() {
        fetchRequest()
    }
    
    // MARK: - FETCH METHODS
    
    private func fetchRequest() {
        <#MyFeatureAPI#>.fetchRequest() { json, success, statusCode in
            guard let statusCode = statusCode else { return }

            switch statusCode {
            case 200...299:
                guard let response = json?.decodeFromJson(to: MyFeatureResponse.self) else { return }
                self.viewController?.updateView(with: response)

            default:
                return
            }
        }
    }
}

/// Move response to Model folder
struct MyFeatureResponse: Codable {
    
}
