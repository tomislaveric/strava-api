import Foundation

class FileLoader {
    static func loadJson(name: String) throws -> Data {
        guard
            let url = Bundle.module.url(forResource: name, withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
            throw FileLoadError.couldNotFindFile
        }
        return data
    }
}
