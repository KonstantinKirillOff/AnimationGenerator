//
//  ViewController.swift
//  AnimationGenerator
//
//  Created by Konstantin Kirillov on 28.08.2022.
//

import Spring

class AnimateGeneretorViewController: UIViewController {
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var springAnimationView: SpringView!
    
    let animationList = Animation.getAnimation()
    var currentRandomAnimation: Animation! {
        didSet {
            presentLabel.text = "present: \(currentRandomAnimation.present)"
            curveLabel.text = "curve: \(currentRandomAnimation.curve)"
            forceLabel.text = "force: \(currentRandomAnimation.force)"
            durationLabel.text = "duration: \(currentRandomAnimation.duration)"
            delayLabel.text = "delay: \(currentRandomAnimation.delay)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        currentRandomAnimation = getRandomAnimation()
        
        
    }

    @IBAction func runButtonPressed() {
        
        springAnimationView.animation = currentRandomAnimation.present
        springAnimationView.delay = CGFloat(currentRandomAnimation.delay)
        springAnimationView.force = CGFloat(currentRandomAnimation.force)
        springAnimationView.curve = currentRandomAnimation.curve
        springAnimationView.duration = CGFloat(currentRandomAnimation.duration)
        springAnimationView.animate()
        
        //sleep(2)
        currentRandomAnimation =  getRandomAnimation()
        runButton.setTitle(currentRandomAnimation.present, for: .normal)
    }
    
    private func getRandomAnimation() -> Animation {
        return animationList.randomElement()!
    }
    
}

