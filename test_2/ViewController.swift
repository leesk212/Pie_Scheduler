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
    var trycount: Int = 0
    
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
    // 어떤 이벤트인지는 스토리보드에서 직접적으로 연결해주는 것인듯함
    // 그것에 따라서 달라지고,
    // sender에 들어가는 메서드를 통해서 어떤 종류의 이벤트인지
    // 확인할 수 있음
    @IBAction func sildervalue(_ sender: UISlider){
        // 함수 함수이름 ( 매개변수 누가 호출했는지: UISlider )
        print(sender.value)
        // label에 보여줄 수 있는 값은 string값임!!!
        sliderValue.text = String(Int(sender.value))
        
        //viewDidLoad() //Human Error logical Error -> 컴퓨터는 이것을 오류라고 반영하지 않지만, 사람의 실수로 만들어진 오류임
    } //이벤트에 반응하는 Action=> IBAction
    
    @IBAction func touchUphitButton(_ sender: UIButton){
        print(slider.value)
        slider.value = Float(Int(slider.value))
        trycount = trycount + 1
        //tryCountLabel.text = String(trycount) + " / 5"
        tryCountLabel.text = "\(trycount) / 5"
        //같은 형태의 함수임
        
        if randomValue == Int(slider.value) {
            print("You HIT!!")
            reset()
            return
        } // >= <= 등등..
        
        if trycount >= 5 {
            print("You lose..")
            reset()
            return
        }
    }
    // Outlabel이 화면에 떠있는 값들의 label의 이름이고, 그것들의 값을 바꿔주기 위해서는 변수로 선언한 것의 text method를 통해서 값을 바꿔줄 수 있다. (연결법 파악완료)
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
