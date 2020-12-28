//
//  ViewController.swift
//  test_2
//
//  Created by Mac_leekatme on 2020/12/25.
//

import UIKit

class ViewController: UIViewController {
    //class안에 있는 함수들은 메서드라고 부른다.
    
    
    var randomValue : Int = 0
    var trancout: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var minimunLable: UILabel!
    @IBOutlet weak var maximunLable: UILabel!
    
    override func viewDidLoad() {
        //매개변수가 없는 함수도 있음
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setThumbImage(#imageLiteral(resourceName: "ios_3x_icon"), for: .normal)
        reset()
    }
    //IBAction이 붙은 것들은 event와 관계가 있음
    @IBAction func sildervalue(_ sender: UISlider){
        // 함수 함수이름 ( 매개변수 누가 호출했는지: UISlider )
        print(sender.value)
        //viewDidLoad() //Human Error logical Error -> 컴퓨터는 이것을 오류라고 반영하지 않지만, 사람의 실수로 만들어진 오류임
    } //이벤트에 반응하는 Action=> IBAction
    
    @IBAction func touchUphitButton(_ sender: UIButton){
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){
        print("Touch Up Reset Button")
        reset()
    }
    
    func reset(){
        randomValue = Int.random(in: 0...30)
        // 범위 연산자 A...B closed
        //          A..<B half open
        //          A...
        print(randomValue)
        tryCountLabel.text = "0 /5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15 //slider가 reset이벤트에 제자리에 올 수 있는 이유가, 0~30까지 설정을 기본으로 해놓고, 15를 reset값으로 설정해놨기에 자동으로 reset을 누르게 되면 중앙으로 값이 이동 되게 된다.
        minimunLable.text = "0"
        maximunLable.text = "30"
        sliderValue.text = "15"
        
        print("reset!")
    }

}
// var[let] randomValue: Int = 0 변수 또는 상수의 선언
//                     : String = "String"
//                     : Float[Double]
//                     : 변수의 살아있는 부분은 중괄호 까지만 살아있는 범위가 된다.
