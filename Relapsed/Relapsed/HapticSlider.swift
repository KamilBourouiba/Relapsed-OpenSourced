//
//  HapticSlider.swift
//  Relapsed
//
//  Created by Apprenant 122 on 24/05/2024.
//

import SwiftUI

struct RGBSlidersView: View {
    @State private var redValue: Double = 0.0
    @State private var greenValue: Double = 0.0
    @State private var blueValue: Double = 0.0
    
    private let feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        VStack {
            Slider(value: $redValue, in: 0...255, step: 1)
                .padding()
                .onChange(of: redValue) { _ in
                    feedbackGenerator.impactOccurred()
                }
            Slider(value: $greenValue, in: 0...255, step: 1)
                .padding()
                .onChange(of: greenValue) { _ in
                    feedbackGenerator.impactOccurred()
                }
            Slider(value: $blueValue, in: 0...255, step: 1)
                .padding()
                .onChange(of: blueValue) { _ in
                    feedbackGenerator.impactOccurred()
                }
        }
    }
}
