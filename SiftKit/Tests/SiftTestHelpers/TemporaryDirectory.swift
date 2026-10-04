import Foundation

public struct TemporaryDirectory {
    public let url: URL

    public init() throws {
        url = FileManager.default.temporaryDirectory
            .appendingPathComponent("SiftTests-\(UUID().uuidString)", isDirectory: true)
        try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true)
    }

    public func remove() {
        try? FileManager.default.removeItem(at: url)
    }
}
