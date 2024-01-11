// Created 21.12.2023

import SwiftUI

/// REMEMBER: CMD+K in simulator toggles the keyboard

struct FocusStateView: View {
    @FocusState private var isTextField1Focused: Bool
    @FocusState private var isTextField2Focused: Bool

    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Button("TextField 1") {
                    isTextField1Focused.toggle()
                }
                Button("TextField 2") {
                    isTextField2Focused.toggle()
                }
                Button("Hide KBoard") {
                    isTextField1Focused = false
                    isTextField2Focused = false
                }
            }
            .buttonStyle(.borderedProminent)

            TextField("Text field 1", text: .constant(""))
                .focused($isTextField1Focused)

            TextField("Text field 2", text: .constant(""))
                .focused($isTextField2Focused)
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    FocusStateView()
}
