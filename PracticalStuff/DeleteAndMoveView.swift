// Created 20.12.2023

import SwiftUI

// MARK: - ContentView1

struct DeleteAndMove1: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .contextMenu {
                            Button(action: {
                                // Your edit action here
                                print("Edit \(item)")
                            }) {
                                Text("Edit")
                                Image(systemName: "pencil")
                            }

                            Button(role: .destructive, action: {
                                // Add logic to delete this specific item
                                if let index = items.firstIndex(of: item) {
                                    items.remove(at: index)
                                }
                            }) {
                                Text("Delete")
                                Image(systemName: "trash")
                            }
                        }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Context Menu")
        }
    }

    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

// MARK: - ContentView2

struct DeleteAndMove2: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle("Swipe Cell Left DELETE")
            .toolbar {
                EditButton()
            }
        }
    }

    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

// MARK: - ContentView3

struct DeleteAndMove3: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id:\.self) { item in
                    Text(item)
                        .swipeActions {
                            Button("Delete") {
                                // Delete action
                            }
                            .tint(.red)

                            Button("Edit") {
                                // Edit action
                            }
                            .tint(.blue)
                        }
                }
            }
            .navigationTitle("SwipeAction Cell ")

        }
    }

    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    DeleteAndMove1()
}

#Preview {
    DeleteAndMove2()
}

#Preview {
    DeleteAndMove3()
}
