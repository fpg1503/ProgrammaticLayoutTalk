import UIKit

final class ProgrammaticAutolayoutAnchorViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        self.buildViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.buildViews()
    }
    
    let redSquare: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
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
        let centerY = redSquare.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let aspectRatio = redSquare.widthAnchor.constraint(equalTo: redSquare.heightAnchor)
        let width = redSquare.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)

        
        let constraints = [centerX, centerY, aspectRatio, width]
        NSLayoutConstraint.activate(constraints)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        redSquare.translatesAutoresizingMaskIntoConstraints = false
    }
}
