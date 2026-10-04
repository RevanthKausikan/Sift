import SwiftUI

struct SelectorView: View {
    var body: some View {
        ContentUnavailableView(
            "Selector",
            systemImage: "photo.on.rectangle.angled",
            description: Text("Browse, preview and pick images and videos.")
        )
    }
}
