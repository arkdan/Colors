//
//  ColorPalette.swift
//  Colors
//
//  Created by ark dan on 4/15/17.
//  Copyright © 2017 arkdan. All rights reserved.
//

import UIKit
import UIKitExtensions

public protocol ColorPalette {
    var hex: Int { get }
    static func allColors() -> [Self]

    var flavor: ColorFlavor { get }
}

extension ColorPalette {

    public var uiColor: UIColor {
        return UIColor(hex: hex)
    }

    public static func all(ofFlavor flavor: ColorFlavor = [], but not: ColorFlavor = []) -> [Self] {
        if not.isEmpty { // stupid if, i know, but lets keep it simpler
            return allColors().filter { $0.flavor.contains(flavor) }
        }
        return allColors().filter { $0.flavor.contains(flavor) && !$0.flavor.contains(not) }
    }

    public static func any(ofFlavor flavor: ColorFlavor = [], but not: ColorFlavor = []) -> Self? {
        return all(ofFlavor: flavor, but: not).anyItem()
    }
}


public struct ColorFlavor : OptionSet {

    public let rawValue: Int
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }

    public var string: String {
        var string = ""
        let block: (ColorFlavor, String) -> () = { f, s in
            if self.contains(f) {
                if !string.isEmpty {
                    string += " "
                }
                string += s
            }
        }

        block(.metal, "metal")
        block(.dark, "dark")
        block(.bright, "bright")
        block(.warm, "warm")
        block(.cool, "cool")
        block(.greenish, "greenish")
        block(.yellowish, "yellowish")
        block(.reddish, "reddish")
        block(.pink_ish, "pinkish")
        block(.blueish, "blueish")

        return string;
    }

    public static let metal = ColorFlavor(rawValue: 1 << 0)

    public static let dark = ColorFlavor(rawValue: 1 << 1)
    public static let bright = ColorFlavor(rawValue: 1 << 2)

    public static let warm = ColorFlavor(rawValue: 1 << 3)
    public static let cool = ColorFlavor(rawValue: 1 << 4)

    public static let greenish = ColorFlavor(rawValue: 1 << 5)
    public static let yellowish = ColorFlavor(rawValue: 1 << 6)
    public static let reddish = ColorFlavor(rawValue: 1 << 7)
    public static let pink_ish = ColorFlavor(rawValue: 1 << 8)
    public static let blueish = ColorFlavor(rawValue: 1 << 9)

}
