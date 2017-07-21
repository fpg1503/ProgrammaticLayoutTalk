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
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "EU"
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "QUERO"
        return label
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "UM PATO"
        return label
    }()
    
    let stackView = UIStackView()
    
    private func buildViews() {
        view.backgroundColor = .white
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        addSubviews()
        addConstraintsToSubviews()
    }
    
    private func addSubviews() {
        view.addSubview(redSquare)
        redSquare.addSubview(stackView)
        stackView.addArrangedSubview(firstLabel)
        stackView.addArrangedSubview(secondLabel)
        stackView.addArrangedSubview(thirdLabel)
    }
    
    private func addConstraintsToSubviews() {
        constrain(redSquare, view) { redSquare, view in
            redSquare.center == view.center
            redSquare.width == redSquare.height
            view.width == redSquare.width * 2
        }
        
        constrain(redSquare, stackView) { redSquare, stackView in
            stackView.edges == redSquare.edges
        }
        
    }
}
