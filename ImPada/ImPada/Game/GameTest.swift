//
//  GameOne.swift
//  ImPada
//
//  Created by vivi on 29/03/23.
//

import SwiftUI

// A protocol that defines the basic properties of a draggable item
protocol Draggable: Identifiable {
    associatedtype Content: View
    
    var id: UUID { get }
    var content: Content { get }
    var offset: CGSize { get set }
}

// A draggable item implementation that holds an image
struct DraggableImage: Draggable {
    let id = UUID()
    let image: UIImage
    
    var content: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
    
    var offset = CGSize.zero
}

// A view that represents a draggable item
struct DraggableView<Item: Draggable>: View {
    @State var item: Item
    let onDragged: (Item) -> Void
    
    var body: some View {
        item.content
            .offset(item.offset)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        item.offset = gesture.translation
                    }
                    .onEnded { gesture in
                        onDragged(item)
                    }
            )
    }
}

// A generic view that represents a drag and drop mini-game
struct DragAndDropGame<Item: Draggable>: View {
    let items: [Item]
    let onGameFinished: () -> Void
    
    @State private var droppedItems = [Item]()
    
    var body: some View {
        ZStack {
            // Background view
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            // Dropped items view
            ForEach(droppedItems) { item in
                DraggableView(item: item, onDragged: { droppedItem in
                    // Remove the dropped item from the droppedItems array
                    droppedItems.removeAll { $0.id == droppedItem.id }
                })
            }
            
            // Dragging items view
            ForEach(items) { item in
                DraggableView(item: item, onDragged: { droppedItem in
                    // Add the dropped item to the droppedItems array
                    droppedItems.append(droppedItem)
                    
                    // Check if all items have been dropped
                    if droppedItems.count == items.count {
                        onGameFinished()
                    }
                })
            }
        }
    }
}

// Example usage
struct GameView: View {
    let images = [
        DraggableImage(image: UIImage(named: "One")!),
        DraggableImage(image: UIImage(named: "Two")!),
        DraggableImage(image: UIImage(named: "Three")!)
    ]
    
    var body: some View {
        DragAndDropGame(items: images) {
            print("Game finished!")
        }
    }
}

