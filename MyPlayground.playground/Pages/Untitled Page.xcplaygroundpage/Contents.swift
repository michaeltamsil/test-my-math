//: A UIKit based Playground for presenting user interface
  

import UIKit
import PlaygroundSupport
import AudioToolbox



var title = UILabel()
let header = funcHeader()
let question = funcQuestion()
let answer = funcAnswer()

class MyViewController : UIViewController {
    var mainStackView = UIStackView()
    
    let stackViewAllBtn = UIStackView()
    

    var stackViewBtn = UIStackView()
    var stackViewBtn2 = UIStackView()
    var stackViewBtn3 = UIStackView()
    var stackViewBtn4 = UIStackView()
    
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
    let buttonMinus = createButton(message: "-")
    let buttonClear = createButton(message: "clear")
    let buttonDone = createButton(message: "Done")
    
    override func loadView() {
        self.view = mainStackView
        setStackView(stackView: &mainStackView)
        
        
        mainStackView.addArrangedSubview(header)
        mainStackView.addArrangedSubview(question)
        mainStackView.addArrangedSubview(answer)
        mainStackView.addArrangedSubview(stackViewAllBtn)
        
        stackViewAllBtn.backgroundColor = .red
        stackViewAllBtn.axis = .vertical
        stackViewAllBtn.alignment = .fill
        stackViewAllBtn.distribution = .fillEqually
        stackViewAllBtn.spacing = 10
        stackViewAllBtn.translatesAutoresizingMaskIntoConstraints = false
        
        stackViewAllBtn.addArrangedSubview(stackViewBtn)
        stackViewAllBtn.addArrangedSubview(stackViewBtn2)
        stackViewAllBtn.addArrangedSubview(stackViewBtn3)
        stackViewAllBtn.addArrangedSubview(stackViewBtn4)
        
        setViewButton(uIStackView: &stackViewBtn)
        stackViewBtn.addArrangedSubview(button1)
        stackViewBtn.addArrangedSubview(button2)
        stackViewBtn.addArrangedSubview(button3)
        stackViewBtn.addArrangedSubview(button4)
        
        setViewButton(uIStackView: &stackViewBtn2)
        stackViewBtn2.addArrangedSubview(button5)
        stackViewBtn2.addArrangedSubview(button6)
        stackViewBtn2.addArrangedSubview(button7)
        stackViewBtn2.addArrangedSubview(button8)
        
        setViewButton(uIStackView: &stackViewBtn3)
        stackViewBtn3.addArrangedSubview(button9)
        stackViewBtn3.addArrangedSubview(button0)
        stackViewBtn3.addArrangedSubview(buttonDot)
        stackViewBtn3.addArrangedSubview(buttonMinus)
        
        setViewButton(uIStackView: &stackViewBtn4)
        stackViewBtn4.addArrangedSubview(buttonClear)
        stackViewBtn4.addArrangedSubview(buttonDone)

        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setStackViewConstraints(stackView : &mainStackView)
    }
    
    @objc func buttonPressed(sender: UIButton!) {
        let text = sender.titleLabel?.text ?? ""
        if (text == "clear"){
            if let label = answer.viewWithTag(1) as? UILabel {
                label.text = ""
            }
        }else if (text == "Done"){
            if let label = answer.viewWithTag(1) as? UILabel {
                if (label.text?.isEmpty != true) {
                    if let question = question.viewWithTag(1) as? UILabel {
                        checkValue(questionMath: question.text ?? "", answerMath: label.text ?? "")
                    }
                }
            }
        }else{
            if let label = answer.viewWithTag(1) as? UILabel {
                let newText = (label.text ?? "").isEmpty ? "" : label.text!
                label.text = newText + text
                label.sizeToFit()
            }
        }
    }
}


func setViewButton(uIStackView: inout UIStackView){
    uIStackView.axis = .horizontal
    uIStackView.alignment = .fill
    uIStackView.distribution = .fillEqually
    uIStackView.spacing = 10
    //uIStackView.translatesAutoresizingMaskIntoConstraints = false
}

func createButton(message: String) -> UIButton{
    let button = UIButton();
    button.setTitle(message, for: .normal)
    button.backgroundColor = .systemPink
    button.layer.cornerRadius = 10
    button.layer.borderWidth = 2
    button.layer.borderColor = UIColor.black.cgColor

    button.addTarget(viewController, action: #selector((viewController.buttonPressed)), for: .touchUpInside)
    return button;
}

func setStackView(stackView: inout UIStackView) {
    stackView.axis = .vertical
    stackView.alignment = .fill
//    stackView.distribution = .fillProportionally
    stackView.distribution = .fill
}

func setStackViewConstraints(stackView: inout UIStackView) {
    stackView.translatesAutoresizingMaskIntoConstraints
    stackView.topAnchor.constraint(equalTo: viewController.view.bottomAnchor, constant: 20).isActive
    stackView.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor, constant: 50).isActive
    stackView.trailingAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive
    stackView.bottomAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive
}

func funcHeader() -> UIView{
    let view = UIView()
    
    view.backgroundColor = .blue
    //view.sizeToFit()
    
    title.text = "What is"
    title.textColor = .black
    title.font = title.font.withSize(62)
    title.backgroundColor = .red
    title.sizeToFit()
    title.tag = 1
    
//    title.translatesAutoresizingMaskIntoConstraints = false
    
//    title.addConstraint(NSLayoutConstraint(item: title, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 21))
//    title.addConstraint(NSLayoutConstraint(item: title, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300))
//

    view.translatesAutoresizingMaskIntoConstraints = false
    view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
//    title.translatesAutoresizingMaskIntoConstraints = false
//    title.trailingAnchor.constraint(equalTo:
//        view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive
//    title.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive

    view.addSubview(title)
    
    return view
}
func funcQuestion() -> UIView {
    let view = UIView()
    view.backgroundColor = .cyan
    let title = UILabel()
    
    title.text = randomQuestion()
    title.textColor = .black
    title.font = title.font.withSize(64)
    title.backgroundColor = .red
    title.sizeToFit()
    title.tag = 1
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.heightAnchor.constraint(equalToConstant: 100).isActive = true

//    title.translatesAutoresizingMaskIntoConstraints = false
//    title.widthAnchor.constraint(equalToConstant: view.bounds.size.width).isActive = true
    
    view.addSubview(title)
    
    return view
}

func funcAnswer() -> UIView {
    let view = UIView()
    view.backgroundColor = .green
    
    let answer = UILabel()
    answer.textColor = .black
    answer.backgroundColor = .red
    answer.font = answer.font.withSize(64)
    answer.sizeToFit()
    answer.tag = 1
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
    view.addSubview(answer)
    return view
}

func checkValue(questionMath : String, answerMath : String) -> Bool{
    let successIcon = ["😃","😄","😍","😎","🤩","🥳","🤗","😊"]
    
    let successMessage = ["Welldone", "Wow", "You done well", "You did it", "Awesome", "Cool", "Perfect", "Yes, it's success"]
    
    var newQuestionMath = questionMath.replacingOccurrences(of: "?", with: "")
    newQuestionMath = newQuestionMath.replacingOccurrences(of: "x", with: "*")
    
    let expn = NSExpression(format: newQuestionMath)
    let value = expn.expressionValue(with: nil, context: nil) as! Float
    let newAnswer = Int(answerMath)
    let newValue = Int(value)
    var alert = UIAlertController()
    
    print("question : ", newValue )
    print("answer : ", newAnswer! )

    if (newValue == newAnswer){
        print("same")
        var newMessage = successIcon.randomElement()! + ", "
        newMessage += successMessage.randomElement()!
        
        alert = UIAlertController(title: "Success", message: newMessage, preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Close", style:  .default, handler : { action in
            if let question = question.viewWithTag(1) as? UILabel {
                question.text = randomQuestion()
                question.sizeToFit()
            }
            if let UILabelAnswer = answer.viewWithTag(1) as? UILabel {
                UILabelAnswer.text = ""
                question.sizeToFit()
            }
        })
        alert.addAction(action1)
    } else {
        print("different")
        alert = UIAlertController(title: "Wrong", message: "sad", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Close", style:  .default, handler : { action in
            if let UILabelAnswer = answer.viewWithTag(1) as? UILabel {
                UILabelAnswer.text = ""
                question.sizeToFit()
            }
        })
        alert.addAction(action1)
    }

    viewController.present(alert, animated: true, completion: nil)
    return true
    
}

func randomQuestion() -> String {
    let number = Int.random(in: 1 ..< 100)
    var number2 = 0
    var _operator = "+"
    if (number > 10){
        _operator = ["+", "-"].randomElement()!
    }else{
        _operator = ["+", "-", "x"].randomElement()!
    }
    
    if (_operator == "x"){
        number2 = Int.random(in:1 ..< 11)
    }else {
        number2 = Int.random(in:1 ..< 100)
    }
    
    
    //NSSound(named: "Purr")?.play()
//    NSSound()
    
    return String(number) + " " + String(_operator) + " " + String(number2) + " ?"
}


// Present the view controller in the Live View window
let viewController = MyViewController()

PlaygroundPage.current.liveView = viewController
