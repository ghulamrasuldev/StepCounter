//
//  ContentView.swift
//  StepCounter
//
//  Created by Ghulam Rasool on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    var body: some View {
        StepsSelection()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
