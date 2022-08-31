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
        
        let presents = mockData.presents.shuffled()
        let curves = mockData.curve.shuffled()
        let forces = mockData.force.shuffled()
        let durations = mockData.duration.shuffled()
        let delays = mockData.delay.shuffled()
        
        return Animation(present: presents.randomElement()!, curve: curves.randomElement()!, force: forces.randomElement()!, duration: durations.randomElement()!, delay: delays.randomElement()!)
    }
}
