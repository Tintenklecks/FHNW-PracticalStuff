// Created 21.12.2023

import SwiftUI

struct FocusStateView: View {
    @FocusState private var isTextField1Focused: Bool
    @FocusState private var isTextField2Focused: Bool

    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Button("Select Text Field 1") {
                    isTextField1Focused.toggle()
                }
                Button("Select Text Field 2") {
                    isTextField2Focused.toggle()
                }
            }
            .buttonStyle(.borderedProminent)

            Divider()

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
