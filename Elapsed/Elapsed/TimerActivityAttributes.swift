//
//  TimerActivityAttributes.swift
//  Elapsed
//
//  Created by Apprenant 122 on 23/05/2024.
//

import Foundation
import ActivityKit

struct TimerActivityAttributes: ActivityAttributes {
    struct ContentState: Codable, Hashable {
        var elapsedTime: TimeInterval
    }
}
