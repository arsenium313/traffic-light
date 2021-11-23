import UIKit

enum lightColors{
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var buttonOutlet: UIButton!
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.1
    
    var currentLight = lightColors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOutlet.layer.cornerRadius = 10
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func nextColor() {
        buttonOutlet.setTitle("Next", for: UIControl.State.normal)
        switch currentLight {
        case .red:
            redLight.alpha = lightOn
            currentLight = .yellow
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOff
        case .yellow:
            yellowLight.alpha = lightOn
            currentLight = .green
            redLight.alpha = lightOff
            greenLight.alpha = lightOff
        case .green:
            greenLight.alpha = lightOn
            currentLight = .red
            redLight.alpha = lightOff
            yellowLight.alpha = lightOff
        }
    }
    
    
}

