//
//  TimerManager.swift
//  Elapsed
//
//  Created by Apprenant 122 on 23/05/2024.
//

import SwiftUI
import ActivityKit

class TimerManager: ObservableObject {
    @Published var elapsedTime: TimeInterval = 0
    private var timer: Timer?
    private var startTime: Date = Date()
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(resetTimer), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(resetTimer), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    func startTimer() {
        stopTimer()
        startTime = Date()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.elapsedTime = Date().timeIntervalSince(self.startTime)
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func resetTimer() {
        stopTimer()
        elapsedTime = 0
        startTimer()
    }
}
