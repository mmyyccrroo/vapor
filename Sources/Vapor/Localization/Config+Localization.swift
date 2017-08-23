import Foundation
import Lingo

extension Config {
    /// Adds a configurable Localization.
    public func addConfigurable<
        L: LocalizationProtocol
    >(localization: @escaping Config.Lazy<L>, name: String) {
        customAddConfigurable(closure: localization, unique: "localization", name: name)
    }
    
    /// Resolves the configured Localization.
    public func resolveLocalization() throws -> LocalizationProtocol {
        return try customResolve(
            unique: "localization",
            file: "droplet",
            keyPath: ["localization"],
            as: LocalizationProtocol.self,
            default: Lingo.init
        )
    }
}
