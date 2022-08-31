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
    
    static func getAnimation() -> [Animation] {
        var animations = [Animation]()
        let mockData = DataManager.shared
        
        let presents = mockData.presents.shuffled()
        let curves = mockData.curve.shuffled()
        let forces = mockData.force.shuffled()
        let durations = mockData.duration.shuffled()
        let delays = mockData.delay.shuffled()
        
        for n in 0...presents.count - 1 {
            animations.append(Animation(present: presents[n], curve: curves[n], force: forces[n], duration: durations[n], delay: delays[n]))
        }
        
        return animations
    }
}
