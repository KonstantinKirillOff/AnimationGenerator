//
//  DataManager.swift
//  AnimationGenerator
//
//  Created by Konstantin Kirillov on 28.08.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let presents = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    init() {}
}
