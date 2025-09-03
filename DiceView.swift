//
//  DiceView.swift
//  DiceView
//
//  Created by Helios Guan on 03/09/2025.
//

import SwiftUI

struct DiceView: View {
    
    var numberOfPips: Int = 1
    
    var body: some View {
        Image(systemName:"die.face.1\(numberOfPips)")
            .resizable()
            .frame(width:100, height:100)
    }
}

#Preview {
    DiceView()
}
