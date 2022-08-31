//
//  AnimationModel.swift
//  AnimationGenerator
//
//  Created by Konstantin Kirillov on 28.08.2022.
//

import Foundation

struct Animation {
    let present: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        present: \(present)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    static func getAnimation() -> Animation {
        let mockData = DataManager.shared
        
        return Animation(present: mockData.presents.randomElement()!.rawValue, curve: mockData.curves.randomElement()!.rawValue, force: Float.random(in: 1...2), duration: Float.random(in: 1...2), delay: 0.3)
    }
}
