//
//  ToyViewModel.swift
//  ImPada
//
//  Created by vivi on 05/04/23.
//

import SwiftUI

class ToyViewModel: ObservableObject {
    private var frames: [Int: CGRect] = [:]
    
    func update(frame: CGRect, for id: Int){
        frames[id] = frame
    }
}
