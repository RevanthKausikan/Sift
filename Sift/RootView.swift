import SwiftUI
import SiftKit

enum Mode: String, CaseIterable, Identifiable {
    case organizer = "Organizer"
    case selector = "Selector"

    var id: String { rawValue }

    var symbol: String {
        switch self {
        case .organizer: "folder.badge.gearshape"
        case .selector: "photo.on.rectangle.angled"
        }
    }
}

struct RootView: View {
    @State private var mode: Mode? = .organizer

    var body: some View {
        NavigationSplitView {
            List(Mode.allCases, selection: $mode) { mode in
                Label(mode.rawValue, systemImage: mode.symbol)
                    .tag(mode)
            }
            .navigationSplitViewColumnWidth(min: 160, ideal: 180)
        } detail: {
            switch mode ?? .organizer {
            case .organizer: OrganizerView()
            case .selector: SelectorView()
            }
        }
        .frame(minWidth: 800, minHeight: 500)
    }
}
