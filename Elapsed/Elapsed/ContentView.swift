//
//  ContentView.swift
//  Elapsed
//
//  Created by Apprenant 122 on 23/05/2024.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("RELAPSED\n JUST HELPED YOU STAY FOCUSED FOR :").multilineTextAlignment(.center).frame(height: 90).fontWidth(Font.Width(90)).bold().padding(50)
            TimerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
