import UIKit

final class ViewController: UIViewController {
    
    let redSquare: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
        self.buildViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.buildViews()
    }
    
    private func buildViews() {
        view.backgroundColor = .white
        addSubviews()
        addConstraintsToSubviews()
    }
    
    private func addSubviews() {
        view.addSubview(redSquare)
    }
    
    private func addConstraintsToSubviews() {
        let centerX = redSquare.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        let centerY = NSLayoutConstraint(item: redSquare, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)

        let width = NSLayoutConstraint(item: redSquare, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0)

        let aspectRatio = NSLayoutConstraint(item: redSquare, attribute: .width, relatedBy: .equal, toItem: redSquare, attribute: .height, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([centerX, centerY, width, aspectRatio])
        
        view.translatesAutoresizingMaskIntoConstraints = false

    }
    

}

