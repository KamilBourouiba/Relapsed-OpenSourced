//
//  TimerView.swift
//  Elapsed
//
//  Created by Apprenant 122 on 23/05/2024.
// 

import SwiftUI

struct TimerView: View {
    @StateObject private var timerManager = TimerManager()

    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: CGFloat(timerManager.elapsedTime.truncatingRemainder(dividingBy: 60) / 60))
                .stroke(Color.green, lineWidth: 30)
                .shadow(color: Color.green.opacity(0.5), radius: 10, x: 0, y: 0)
                .rotationEffect(.degrees(-90))
                .animation(.linear(duration: 1), value: timerManager.elapsedTime)
                .frame(width: 200, height: 200)
            
            Text(timeString)
                .fontWidth(Font.Width(90)).bold().padding()
        }
        .onAppear {
            timerManager.startTimer()
        }
    }
    
    private var timeString: String {
        let totalSeconds = Int(timerManager.elapsedTime)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
