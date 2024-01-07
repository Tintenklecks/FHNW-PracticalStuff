import Foundation
import Network
import SwiftUI


struct AppStateDemoView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            appState.isOffline ? Color.gray : Color.white
            Text("Hello, World!")
        }
    }
}



class AppState: ObservableObject {
    @Published var isOffline: Bool = true

    init() {
        setupInternetMonitoring()
    }

    
    private var monitor = NWPathMonitor()

    func setupInternetMonitoring() {
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                // FIXME: Fix and simplify this one here
                if path.status == .satisfied {
                    self.isOffline = false
                } else {
                    self.isOffline = true
                }
            }
        }

        let queue = DispatchQueue.global(qos: .background)
        monitor.start(queue: queue)
    }

    public func stopInternetMonitoring() {
        monitor.cancel()
    }
}
