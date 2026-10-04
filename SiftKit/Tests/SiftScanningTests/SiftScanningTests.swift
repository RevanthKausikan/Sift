import Foundation
import Testing
import SiftTestHelpers

@Test func temporaryDirectoryIsCreated() throws {
    let dir = try TemporaryDirectory()
    defer { dir.remove() }
    #expect(FileManager.default.fileExists(atPath: dir.url.path))
}
