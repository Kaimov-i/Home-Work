//
//  ViewController.swift
//  Home Work
//
//  Created by Ilman on 30.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorizedView: UIView!
    
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 10
      
    }
    
    private func changColor(_ color: inout UIView) {
        color.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redColorSlider() {
        redLabelValue.text = String(format: "%.2f", redSlider.value)
        changColor(&colorizedView)
        
    }
    
    @IBAction func greenColorSlider() {
        changColor(&colorizedView)
        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    
    @IBAction func blueColorSlider() {
        changColor(&colorizedView)
        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
    }
}

