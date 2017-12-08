//
//  CrayonsPalette.swift
//  Colors
//
//  Created by ark dan on 4/15/17.
//  Copyright © 2017 arkdan. All rights reserved.
//

import UIKit
import Extensions

public enum CrayonsPalette : Int, Enumerable, ColorPalette {

    case licorice
    case lead
    case tungsten
    case iron
    case steel
    case tin
    case nickel
    case aluminum
    case magnesium
    case silver
    case mercury
    case snow

    // darks
    case cayenne
    case mocha
    case asparagus
    case fern
    case clover
    case moss
    case teal
    case ocean
    case midnight
    case eggplant
    case plum
    case maroon

    // norm
    case maraschino
    case tangerine
    case lemon
    case lime
    case spring
    case seaFoam
    case turquoise
    case aqua
    case blueberry
    case grape
    case magenta

    // brights
    case strawberry
    case salmon
    case cantaloupe
    case banana
    case honeydew
    case flora
    case spindrift
    case ice
    case sky
    case orchid
    case lavender
    case bubblegum
    case carnation

    public static func allColors() -> [CrayonsPalette] {
        return allValues
    }

    public var hex: Int {
        switch self {
        case .licorice:   return 0x000000
        case .lead:       return 0x191919
        case .tungsten:   return 0x333333
        case .iron:       return 0x4c4c4c
        case .steel:      return 0x666666
        case .tin:        return 0x7f7f7f
        case .nickel:     return 0x808080
        case .aluminum:   return 0x999999
        case .magnesium:  return 0xb3b3b3
        case .silver:     return 0xcccccc
        case .mercury:    return 0xe6e6e6
        case .snow:       return 0xffffff

        // darks
        case .cayenne:    return 0x800000
        case .mocha:      return 0x804000
        case .asparagus:  return 0x808000
        case .fern:       return 0x408000
        case .clover:     return 0x008000
        case .moss:       return 0x008040
        case .teal:       return 0x008080
        case .ocean:      return 0x004080
        case .midnight:   return 0x000080
        case .eggplant:   return 0x400080
        case .plum:       return 0x800080
        case .maroon:     return 0x800040

        // norm
        case .maraschino: return 0xFF0000
        case .tangerine:  return 0xFF8000
        case .lemon:      return 0xFFFF00
        case .lime:       return 0x80FF00
        case .spring:     return 0x00FF00
        case .seaFoam:    return 0x00FF80
        case .turquoise:  return 0x00FFFF
        case .aqua:       return 0x0080FF
        case .blueberry:  return 0x0000FF
        case .grape:      return 0x8000FF
        case .magenta:    return 0xFF00FF

        // brights
        case .strawberry: return 0xFF0080
        case .salmon:     return 0xFF6666
        case .cantaloupe: return 0xFFCC66
        case .banana:     return 0xFFFF66
        case .honeydew:   return 0xCCFF66
        case .flora:      return 0x66FF66
        case .spindrift:  return 0x66FFCC
        case .ice:        return 0x66FFFF
        case .sky:        return 0x66CCFF
        case .orchid:     return 0x6666FF
        case .lavender:   return 0xCC66FF
        case .bubblegum:  return 0xFF66FF
        case .carnation:  return 0xFF6FCF
        }
    }

    public var flavor: ColorFlavor {
        switch self {
        case .licorice:     return .metal
        case .lead:         return .metal
        case .tungsten:     return .metal
        case .iron:         return .metal
        case .steel:        return .metal
        case .tin:          return .metal
        case .nickel:       return .metal
        case .aluminum:     return .metal
        case .magnesium:    return .metal
        case .silver:       return .metal
        case .mercury:      return .metal
        case .snow:         return []

        // darks
        case .cayenne:      return [.dark, .reddish, .warm]
        case .mocha:        return [.dark]
        case .asparagus:    return [.dark, .warm]
        case .fern:         return [.dark, .greenish, .warm]
        case .clover:       return [.dark, .greenish, .cool]
        case .moss:         return [.dark, .greenish, .cool]
        case .teal:         return [.dark, .greenish, .blueish, .cool]
        case .ocean:        return [.dark, .blueish, .cool]

        // norm
        case .midnight:     return [.blueish, .cool]
        case .eggplant:     return [.blueish, .cool]
        case .plum:         return [.pink_ish, .cool]
        case .maroon:       return [.reddish]
        case .maraschino:   return [.reddish, .warm]
        case .tangerine:    return [.yellowish, .warm]
        case .lemon:        return [.yellowish, .warm]
        case .lime:         return [.greenish, .warm]
        case .spring:       return [.greenish, .cool]
        case .seaFoam:      return [.greenish, .cool]
        case .turquoise:    return [.blueish, .cool]
        case .aqua:         return [.blueish, .cool]
        case .blueberry:    return [.blueish, .cool]
        case .grape:        return [.pink_ish, .cool]
        case .magenta:      return [.pink_ish, .cool]

        // brights
        case .strawberry:   return [.bright, .reddish, .warm]
        case .salmon:       return [.bright, .reddish, .warm]
        case .cantaloupe:   return [.bright, .yellowish, .warm]
        case .banana:       return [.bright, .yellowish, .warm]
        case .honeydew:     return [.bright, .greenish, .warm]
        case .flora:        return [.bright, .greenish, .cool]
        case .spindrift:    return [.bright, .blueish, .greenish, .cool]
        case .ice:          return [.bright, .blueish, .cool]
        case .sky:          return [.bright, .blueish, .cool]
        case .orchid:       return [.bright, .blueish, .cool]
        case .lavender:     return [.bright, .pink_ish, .cool]
        case .bubblegum:    return [.bright, .pink_ish, .cool]
        case .carnation:    return [.bright, .pink_ish, .reddish, .cool]
        }
    }

//    public static func all(ofFlavor flavor: ColorFlavor = [], butNot notFlavor: ColorFlavor = [], notCrayons: [CrayonsPalette]) -> [CrayonsPalette] {
//        let crayons = all(ofFlavor: flavor, butNot: notFlavor)
//        return crayons.filter { !notCrayons.contains($0) }
//    }
//
//    public static func any(ofFlavor flavor: ColorFlavor = [], butNot notFlavor: ColorFlavor = [], notCrayons: [CrayonsPalette]) -> CrayonsPalette? {
//        return all(ofFlavor: flavor, butNot: notFlavor, notCrayons: notCrayons).anyItem()
//    }
}

extension CrayonsPalette : Equatable {
    public static func ==(lhs: CrayonsPalette, rhs: CrayonsPalette) -> Bool {
        return lhs.hex == rhs.hex
    }
}

extension Collection where Iterator.Element == CrayonsPalette {
    public func excluding(_ excl: [CrayonsPalette]) -> [Iterator.Element] {
        return self.filter { !excl.contains($0) }
    }
}

extension UIColor {

    convenience init(_ color: CrayonsPalette) {
        self.init(hex: color.hex)
    }

    public func crayon() -> CrayonsPalette? {
        for crayon in CrayonsPalette.allColors() {
            if crayon.hex == hex() {
                return crayon
            }
        }
        return nil
    }

}
