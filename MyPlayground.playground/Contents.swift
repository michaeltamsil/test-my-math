//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    var mainStackView = UIStackView()
    
    var stackViewBtn = UIStackView()
    var stackViewBtn2 = UIStackView()
    let stackViewAllBtn = UIStackView()
    let button1 = createButton(message: "1")
    let button2 = createButton(message: "2")
    let button3 = createButton(message: "3")
    let button4 = createButton(message: "4")
    let button5 = createButton(message: "5")
    let button6 = createButton(message: "6")
    let button7 = createButton(message: "7")
    let button8 = createButton(message: "8")
    let button9 = createButton(message: "9")
    let button0 = createButton(message: "0")
    let buttonDot = createButton(message: ".")
    
    override func loadView() {
        let view = UIView()
        let title = UILabel()
//        let number1 = UILabel()
//        let operator_ = UILabel()
//        let number2 = UILabel()
//        let inputValue = UITextField()
//        let assignment = UILabel()
        
        setStackView(stackView: &mainStackView)
        
        view.backgroundColor = .orange

        title.frame = CGRect(x: 10, y: 10, width: 300, height: 30)
        title.text = "Test my math skill"
        title.textColor = .black
        title.font = title.font.withSize(32)
        title.backgroundColor = .red
        view.addSubview(title)
        
//        number1.frame = CGRect(x:20, y: 50, width: 80, height: 80)
//        number1.text = "99"
//        number1.textColor = .black
//        number1.backgroundColor = .blue
//        number1.font = UILabel().font.withSize(64)
//        view.addSubview(number1)
//
//        operator_.frame = CGRect(x:110, y: 50, width: 40, height: 80)
//        operator_.text = "+"
//        operator_.textColor = .black
//        operator_.backgroundColor = .green
//        operator_.font = UILabel().font.withSize(64)
//        view.addSubview(operator_)
//
//        number2.font = UILabel().font.withSize(64)
//        number2.frame = CGRect(x:160, y: 50, width: 80, height: 80)
//        number2.text = "99"
//        number2.textColor = .black
//        number2.backgroundColor = .blue
//        view.addSubview(number2)
        
        
//        assignment.frame = CGRect(x:250, y: 50, width: 40, height: 80)
//        assignment.text = "="
//        assignment.textColor = .black
//        assignment.backgroundColor = .green
//        assignment.font = UILabel().font.withSize(64)
//        view.addSubview(assignment)
        
        
//        inputValue.isEnabled = false
//        inputValue.text="2938"
//        inputValue.backgroundColor = .red
//        inputValue.textColor = .blue
//        inputValue.frame = CGRect(x:10, y: 150, width: 260, height: 100)
//        inputValue.font = UIFont.systemFont(ofSize:100)
//        view.addSubview(inputValue)
        
        setViewButton(uIStackView: &stackViewBtn)
        stackViewBtn.addArrangedSubview(button1)
        stackViewBtn.addArrangedSubview(button2)
        stackViewBtn.addArrangedSubview(button3)
     
        
        stackViewBtn.backgroundColor = .purple
//        view.addSubview(stackViewBtn)
        
        setViewButton(uIStackView: &stackViewBtn2)
        stackViewBtn2.addArrangedSubview(button4)
        stackViewBtn2.addArrangedSubview(button5)
        stackViewBtn2.addArrangedSubview(button6)
        stackViewBtn2.backgroundColor = .purple
//        view.addSubview(stackViewBtn2)
        stackViewAllBtn.axis = .vertical
        stackViewAllBtn.alignment = .fill
        stackViewAllBtn.distribution = .fillEqually
        stackViewAllBtn.spacing = 30
        stackViewAllBtn.translatesAutoresizingMaskIntoConstraints = false
        stackViewAllBtn.addArrangedSubview(stackViewBtn)
        stackViewAllBtn.addArrangedSubview(stackViewBtn2)
        
        
        
        
        //view.addSubview(stackViewAllBtn)
        mainStackView.addArrangedSubview(title)
        
        mainStackView.addArrangedSubview(stackViewBtn)
        mainStackView.addArrangedSubview(stackViewBtn2)
        self.view = mainStackView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setStackViewConstraints(stackView : &mainStackView)
    }
}


func setViewButton(uIStackView: inout UIStackView){
    uIStackView.axis = .horizontal
    uIStackView.alignment = .fill
    uIStackView.distribution = .fill
    uIStackView.spacing = 10
    uIStackView.translatesAutoresizingMaskIntoConstraints = false
}

func createButton(message: String) -> UIButton{
    let button = UIButton();
    button.setTitle(message, for: .normal)
    button.backgroundColor = .systemPink
    button.layer.cornerRadius = 5
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    
    return button;
}

func setStackView(stackView: inout UIStackView) {
    stackView.axis = .vertical
    stackView.alignment = .fill
    stackView.distribution = .fillEqually
}

func setStackViewConstraints(stackView: inout UIStackView) {
    print("halo 3")
    stackView.translatesAutoresizingMaskIntoConstraints
    stackView.topAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: 20).isActive
    stackView.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor, constant: 50).isActive
    stackView.trailingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive
    stackView.bottomAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive
}

// Present the view controller in the Live View window
let viewController = MyViewController()

PlaygroundPage.current.liveView = viewController

