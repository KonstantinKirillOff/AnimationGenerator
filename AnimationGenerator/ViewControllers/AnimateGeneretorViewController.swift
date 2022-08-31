//
//  ViewController.swift
//  AnimationGenerator
//
//  Created by Konstantin Kirillov on 28.08.2022.
//

import Spring

class AnimateGeneretorViewController: UIViewController {
    
    @IBOutlet weak var presentLabel: UILabel!

    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var springAnimationView: SpringView!
    
    private var animation = Animation.getAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        presentLabel.text = animation.description
    }

    @IBAction func runButtonPressed() {
        presentLabel.text = animation.description
        
        springAnimationView.animation = animation.present
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.curve = animation.curve
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.animate()
    
        animation =  Animation.getAnimation()
        runButton.setTitle("Run \(animation.present)", for: .normal)
    }
    
}

