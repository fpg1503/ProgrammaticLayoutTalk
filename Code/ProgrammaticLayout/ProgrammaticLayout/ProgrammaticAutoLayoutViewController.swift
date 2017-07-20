import UIKit

final class ProgrammaticAutolayoutViewController: UIViewController {
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
        let centerX = NSLayoutConstraint(item: redSquare,
                                         attribute: .centerX,
                                         relatedBy: .equal,
                                         toItem: view,
                                         attribute: .centerX,
                                         multiplier: 1,
                                         constant: 0)
        
        let centerY = NSLayoutConstraint(item: redSquare,
                                         attribute: .centerY,
                                         relatedBy: .equal,
                                         toItem: view,
                                         attribute: .centerY,
                                         multiplier: 1,
                                         constant: 0)
        
        let aspectRatio = NSLayoutConstraint(item: redSquare,
                                             attribute: .width,
                                             relatedBy: .equal,
                                             toItem: redSquare,
                                             attribute: .height,
                                             multiplier: 1,
                                             constant: 0)
        
        let width = NSLayoutConstraint(item: redSquare,
                                       attribute: .width,
                                       relatedBy: .equal,
                                       toItem: view,
                                       attribute: .width,
                                       multiplier: 0.5,
                                       constant: 0)
        
        let constraints = [centerX, centerY, aspectRatio, width]
        constraints.forEach {
            $0.isActive = true
        }
        
        view.translatesAutoresizingMaskIntoConstraints = false
        redSquare.translatesAutoresizingMaskIntoConstraints = false
    }
}
