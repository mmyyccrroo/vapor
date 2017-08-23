import Configs
import Lingo

// MARK: Config
extension Lingo: ConfigInitializable {
    public convenience init(config: Config) throws {
        guard let lingo = config["localization"] else {
            throw ConfigError.missingFile("localization")
        }

        guard let rootPath = lingo["rootPath"]?.string else {
            throw ConfigError.missing(key: ["rootPath"], file: "localization", desiredType: String.self)
        }

        guard let defaultLocale = lingo["defaultLocale"]?.string else {
            throw ConfigError.missing(key: ["defaultLocale"], file: "localization", desiredType: String.self)
        }
        
        self.init(rootPath: rootPath, defaultLocale: defaultLocale)
    }
}
