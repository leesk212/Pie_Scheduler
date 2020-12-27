//
//  ViewController.swift
//  test_2
//
//  Created by Mac_leekatme on 2020/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "ios_3x_icon"), for: .normal)
    }
    
    @IBAction func sildervalue(_ sender: UISlider){
        print(sender.value)
    } //이벤트에 반응하는 Action=> IBAction
    
    @IBAction func touchUphitButton(_ sender: UIButton){
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){
        print("Touch Up Reset Button")
    }

}

