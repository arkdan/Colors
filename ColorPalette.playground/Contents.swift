//: Playground - noun: a place where people can play

import UIKit
import Colors


func makeViews(crayons: [CrayonsPalette]) -> [UIView] {
    return crayons.map { crayon in
        let color = crayon.uiColor
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        label.backgroundColor = color
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 11)
        label.text = "\(crayon)\n\(crayon.flavor.string)"
        return label
    }

}

var colorViews = makeViews(crayons: CrayonsPalette.all(ofFlavor: [.reddish]))

colorViews

var crayons = [CrayonsPalette]()

for _ in 0..<20 {
    crayons.append(CrayonsPalette.any(ofFlavor: .reddish)!)
}

colorViews = makeViews(crayons: crayons)
colorViews


