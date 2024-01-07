// Created 20.12.2023

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                Group {
                    NavigationLink("Hugging Views") { HuggingViews()
                    }
                    NavigationLink("Expanding Views") {
                        ExpandingViews()
                    }
                    NavigationLink("Delete rows - Simple") {
                        DeleteAndMove1()
                    }
                    NavigationLink("Del & Move rows") {
                        DeleteAndMove2()
                    }
                    NavigationLink("List Rows with 2 Buttons") {
                        DeleteAndMove3()
                    }
                }
                NavigationLink("Formatting Buttons") {
                    FormattingButtons()
                }
                NavigationLink("App State") {
                    AppStateDemoView()
                }
                NavigationLink("Focus State") {
                    FocusStateView()
                }
                NavigationLink("Night & Day") {
                    NightAndDay()
                }

            }
            .navigationTitle("Examples List")
        }
    }
}

#Preview {
    MainView()
}
