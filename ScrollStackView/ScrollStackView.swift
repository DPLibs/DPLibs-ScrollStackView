import Foundation
import UIKit

open class ScrollStackView: UIView {
    
    public let scrollView = UIScrollView()
    public let stackView = UIStackView()
    
    public var axis: NSLayoutConstraint.Axis = .horizontal {
        didSet {
            self.stackView.axis = self.axis
            self.setupViews()
        }
    }
    
    public init(axis: NSLayoutConstraint.Axis) {
        super.init(frame: .zero)
        self.axis = axis
        self.setupViews()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupViews()
    }
    
    open func setupViews() {
        self.scrollView.removeFromSuperview()
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.scrollView)
        NSLayoutConstraint.activate([
            self.scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        self.stackView.removeFromSuperview()
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView.axis = self.axis
        self.scrollView.addSubview(self.stackView)
        NSLayoutConstraint.activate([
            self.stackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            self.stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            self.stackView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            self.stackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor)
        ])
        
        switch self.axis {
        case .horizontal:
            NSLayoutConstraint.activate([
                self.scrollView.heightAnchor.constraint(equalTo: self.heightAnchor),
                self.stackView.heightAnchor.constraint(equalTo: self.heightAnchor)
            ])
        case .vertical:
            NSLayoutConstraint.activate([
                self.scrollView.widthAnchor.constraint(equalTo: self.widthAnchor),
                self.stackView.widthAnchor.constraint(equalTo: self.widthAnchor)
            ])
        @unknown default:
            return
        }
    }
    
}
