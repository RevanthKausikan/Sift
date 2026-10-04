import SwiftUI

struct OrganizerView: View {
    var body: some View {
        ContentUnavailableView(
            "Organizer",
            systemImage: "folder.badge.gearshape",
            description: Text("Scan, cluster and plan a folder cleanup. Nothing is moved without an approved dry run.")
        )
    }
}
