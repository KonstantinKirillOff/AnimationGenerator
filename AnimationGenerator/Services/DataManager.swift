//
//  DataManager.swift
//  AnimationGenerator
//
//  Created by Konstantin Kirillov on 28.08.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let presents = ["fadeInLeft", "fadeInRight", "pop"]
    let curve = ["easeInQuad", "spring", "easeIn"]
    let force = [Float.random(in: 1...2), Float.random(in: 1...2), Float.random(in: 1...2)]
    let duration = [Float.random(in: 1...2), Float.random(in: 1...2), Float.random(in: 1...2)]
    let delay = [Float.random(in: 0...1), Float.random(in: 0...1), Float.random(in: 0...1)]
    
    init() {}
}
