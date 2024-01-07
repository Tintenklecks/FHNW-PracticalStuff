// Created 21.12.2023

import SwiftUI

struct NightAndDay: View {
    var body: some View {
        VStack {
            Text("Just a text").font(.largeTitle)
            Text("Just some subtitle")
                .foregroundColor(.accentColor)
            Image("SchemaImage")
//            Text("And this is some text")
//                .foregroundColor(.myPersonal)
        }
    }
}


#Preview {
    NightAndDay()
}
