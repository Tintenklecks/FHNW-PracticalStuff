// Created 20.12.2023

import SwiftUI

// MARK: - ContentView1

struct FormattingButtons: View {
    @State private var textTapped: Bool = false
    @State private var buttonTapped: Bool = false
    var body: some View {
        VStack {
            Text("Button with a text field")
            Text("Button Text")
                .foregroundColor(.accentColor)
                .padding()
                .onTapGesture { }
                .background(Color.yellow) // Yellow background
                .cornerRadius(6) // Rounded corners with radius 6
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.blue, lineWidth: 1) // 1 pixel blue border
                )
                .shadow(radius: 6) // Shadow
                .alert(isPresented: $buttonTapped, content: {
                    Alert(title: Text("Text tapped"))
                })

            Button(action: { /* Action to perform on button press*/ }) {
                Text("Button Text")
            }
            .padding()
            .background(Color.yellow) // Yellow background
            .cornerRadius(6) // Rounded corners with radius 6
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.blue, lineWidth: 1) // 1 pixel blue border
            )
            .shadow(radius: 6) // Shadow
            .alert(isPresented: $buttonTapped, content: {
                Alert(title: Text("Button pressed"))
            })
        }
        
    }
}

#Preview {
    FormattingButtons()
}
