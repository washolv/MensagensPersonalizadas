//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Francisco Washington de Almeida Oliveira on 15/12/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit
protocol ColorPickerProtocol : class {
    func applyColor(color: UIColor)
}
class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slBlue: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slRed: UISlider!
    weak var reference: ColorPickerProtocol?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        reference?.applyColor(color: viColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value),
                                          blue: CGFloat(slBlue.value), alpha: 1.0)
    }

}
