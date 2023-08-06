//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ KaBuM!. All rights reserved.
//

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {
    func updateView(with response: ___VARIABLE_featureName___Response)
}

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - PROPERTIES
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    // MARK: - INITIALIZERS

    init() {

    }
    
    // MARK: - PUBLIC METHODS

    func initState() {
        fetchRequest()
    }
    
    // MARK: - FETCH METHODS
    
    private func fetchRequest() {
        <#___VARIABLE_featureName___API#>.fetchRequest() { json, success, statusCode in
            guard let statusCode = statusCode else { return }

            switch statusCode {
            case 200...299:
                guard let response = json?.decodeFromJson(to: ___VARIABLE_featureName___Response.self) else { return }
                self.viewController?.updateView(with: response)

            default:
                return
            }
        }
    }
}

/// Move response to Model folder
struct ___VARIABLE_featureName___Response: Codable {
    
}
