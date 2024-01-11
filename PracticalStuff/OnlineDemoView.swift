import Foundation
import Network
import SwiftUI

// MARK: - AppStateDemoView

struct AppStateDemoView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            appState.isOffline ? Color.gray : Color.onlineBackground
            Text("Hello, World!")
        }.ignoresSafeArea()
    }
}

#Preview {
    let appState = AppState()
    return AppStateDemoView()
        .environmentObject(appState)
}
