//
//  ViewController.swift
//  test_2
//
//  Created by Mac_leekatme on 2020/12/25.
//

import UIKit

class ViewController: UIViewController {
    //class안에 있는 함수들은 메서드라고 부른다.
    @IBOutlet weak var slider: UISlider!
    
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
        print("reset!")
    }

}

