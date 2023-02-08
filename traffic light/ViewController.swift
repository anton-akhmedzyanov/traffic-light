
import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        offlights()
       
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = view.frame.width / 2
        yellowView.layer.cornerRadius = view.frame.width / 2
        greenView.layer.cornerRadius = view.frame.width / 2
        }
    
    private func offlights() {
        redView.alpha = 0.2
        yellowView.alpha = 0.2
        greenView.alpha = 0.2
    }
    
    
  
    private var counter = 0

    @IBAction func pressedStartButton() {
        startButton.setTitle(redView.alpha == 0.2 ? "START": "NEXT", for: .normal)
        counter += 1
        switch counter {
        case 1:
            greenView.alpha = 0.2
            redView.alpha = 1
        case 2:
            redView.alpha = 0.2
            yellowView.alpha = 1
        default:
            yellowView.alpha = 0.2
            greenView.alpha = 1
            counter = 0
        }
    }
    
    
}
