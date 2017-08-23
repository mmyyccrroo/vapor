import Foundation

/// Objects conforming to this protocol can be
/// used as localization engines
public protocol LocalizationProtocol {
    
    func localize(_ key: String, locale: String, interpolations: [String: Any]?) -> String
    
}

