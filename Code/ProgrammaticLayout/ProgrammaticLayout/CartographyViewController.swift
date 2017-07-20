import UIKit
import Cartography

final class CartographyViewController: UIViewController {
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
        constrain(redSquare, view) { redSquare, view in
            redSquare.center == view.center
            redSquare.width == redSquare.height
            view.width == redSquare.width * 2
        }
    }
}
