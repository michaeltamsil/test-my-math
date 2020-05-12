//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



class MyViewController : UIViewController {

    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 10, y: 10, width: 220, height: 30)
        label.text = "Test my math skill"
        label.textColor = .black
        
        label.font = label.font.withSize(32)
        
        label.backgroundColor = .red
        
        view.addSubview(label)
        
        
        let number1 = UILabel()
        number1.frame = CGRect(x:20, y: 50, width: 80, height: 80)
        number1.text = "99"
        number1.textColor = .black
        number1.backgroundColor = .blue
        number1.font = UILabel().font.withSize(64)
        view.addSubview(number1)
        
        let operator_ = UILabel()
        operator_.frame = CGRect(x:110, y: 50, width: 40, height: 80)
        operator_.text = "+"
        operator_.textColor = .black
        operator_.backgroundColor = .green
        operator_.font = UILabel().font.withSize(64)
        view.addSubview(operator_)
        
        let number2 = UILabel()
        number2.font = UILabel().font.withSize(64)
        number2.frame = CGRect(x:160, y: 50, width: 80, height: 80)
        number2.text = "99"
        number2.textColor = .black
        number2.backgroundColor = .blue
        view.addSubview(number2)
        
        let assignment = UILabel()
        assignment.frame = CGRect(x:250, y: 50, width: 40, height: 80)
        assignment.text = "="
        assignment.textColor = .black
        assignment.backgroundColor = .green
        assignment.font = UILabel().font.withSize(64)
        view.addSubview(assignment)
        
        
        self.view = view
        
        
        
    }
    
}
// Present the view controller in the Live View window
let viewController = MyViewController()
PlaygroundPage.current.liveView = viewController

