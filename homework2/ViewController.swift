//
//  ViewController.swift
//  homework2
//
//  Created by Глеб Клыга on 24.09.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var changerColorButton: UIButton!
    private var currentSignalIndex = -1
    private let signals: [(color: UIColor, alpha: CGFloat)] = [
            (UIColor.red, 1.0),
            (UIColor.yellow, 1.0),
            (UIColor.green, 1.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView(redView)
        configureView(yellowView)
        configureView(greenView)
        changerColorButton.layer.cornerRadius = 10
        changerColorButton.setTitle("Start", for: .normal)
    
    }
    
    func configureView(_ view: UIView) {
        view.layer.cornerRadius = view.frame.width / 2
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.alpha = 0.3
    }

    @IBAction func changeColorPressedButton(_ sender: UIButton) {
        if currentSignalIndex == 0 {
                    changerColorButton.setTitle("Next", for: .normal)
                }
                
                let nextSignalIndex = (currentSignalIndex + 1) % signals.count
                let nextSignal = signals[nextSignalIndex]
                
                switch currentSignalIndex {
                case 0:
                    redView.alpha = 0.3
                case 1:
                    yellowView.alpha = 0.3
                case 2:
                    greenView.alpha = 0.3
                default:
                    break
                }
                
                switch nextSignalIndex {
                case 0:
                    redView.alpha = nextSignal.alpha
                case 1:
                    yellowView.alpha = nextSignal.alpha
                case 2:
                    greenView.alpha = nextSignal.alpha
                default:
                    break
                }
                
                currentSignalIndex = nextSignalIndex
    }
    
}

