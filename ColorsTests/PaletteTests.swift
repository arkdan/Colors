//
//  PaletteTests.swift
//  Colors
//
//  Created by ark dan on 4/15/17.
//  Copyright © 2017 arkdan. All rights reserved.
//

import XCTest
import Nimble
@testable import Colors

class ColorFlavorTests: XCTestCase {

    func testString() {
        let flavor: ColorFlavor = [.dark, .warm, .reddish]
        expect(flavor.string) == "dark warm reddish"
    }
}

class CrayonsPaletteTests: XCTestCase {

    func testFromUIColor() {
        let crayon: CrayonsPalette = .strawberry
        let color = crayon.uiColor
        expect(color.crayon()) == crayon
    }

    func testAllExcluding() {

        var colors = CrayonsPalette.all()
        expect(colors.count) == 12 + 12 + 11 + 13

        colors = CrayonsPalette.all(ofFlavor: .reddish)
        var smaller = colors.excluding([.maroon, .salmon])
        expect(smaller) == [.cayenne,
                           .maraschino,
                           .strawberry,
                           .carnation]

        colors = CrayonsPalette.all(ofFlavor: .metal) + CrayonsPalette.all(ofFlavor: .yellowish)
        smaller = colors.excluding(CrayonsPalette.all(ofFlavor: .yellowish))
        expect(smaller) == CrayonsPalette.all(ofFlavor: .metal)
    }

    func testMetalFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .metal)
        expect(colors) == [.licorice,
                           .lead,
                           .tungsten,
                           .iron,
                           .steel,
                           .tin,
                           .nickel,
                           .aluminum,
                           .magnesium,
                           .silver,
                           .mercury]
    }

    func testDarkFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .dark)
        expect(colors) == [.cayenne,
                           .mocha,
                           .asparagus,
                           .fern,
                           .clover,
                           .moss,
                           .teal,
                           .ocean]
    }
    func testBrightFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .bright)
        expect(colors) == [.strawberry,
                           .salmon,
                           .cantaloupe,
                           .banana,
                           .honeydew,
                           .flora,
                           .spindrift,
                           .ice,
                           .sky,
                           .orchid,
                           .lavender,
                           .bubblegum,
                           .carnation]
    }

    func testWarmFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .warm)
        expect(colors) == [.cayenne,
                           .asparagus,
                           .fern,
                           .maraschino,
                           .tangerine,
                           .lemon,
                           .lime,
                           .strawberry,
                           .salmon,
                           .cantaloupe,
                           .banana,
                           .honeydew]
    }

    func testCoolFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .cool)
        expect(colors) == [.clover,
                           .moss,
                           .teal,
                           .ocean,
                           .midnight,
                           .eggplant,
                           .plum,
                           .spring,
                           .seaFoam,
                           .turquoise,
                           .aqua,
                           .blueberry,
                           .grape,
                           .magenta,
                           .flora,
                           .spindrift,
                           .ice,
                           .sky,
                           .orchid,
                           .lavender,
                           .bubblegum,
                           .carnation]
    }

    func testGreenFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .greenish)
        expect(colors) == [.fern,
                           .clover,
                           .moss,
                           .teal,
                           .lime,
                           .spring,
                           .seaFoam,
                           .honeydew,
                           .flora,
                           .spindrift]
    }

    func testYellowFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .yellowish)
        expect(colors) == [.tangerine,
                           .lemon,
                           .cantaloupe,
                           .banana]

    }
    func testRedFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .reddish)
        expect(colors) == [.cayenne,
                           .maroon,
                           .maraschino,
                           .strawberry,
                           .salmon,
                           .carnation]
    }

    func testPinkFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .pink_ish)
        expect(colors) == [.plum,
                           .grape,
                           .magenta,
                           .lavender,
                           .bubblegum,
                           .carnation]
    }

    func testBlueFlavor() {
        let colors = CrayonsPalette.all(ofFlavor: .blueish)
        expect(colors) == [.teal,
                           .ocean,
                           .midnight,
                           .eggplant,
                           .turquoise,
                           .aqua,
                           .blueberry,
                           .spindrift,
                           .ice,
                           .sky,
                           .orchid]
    }

    func testFlavorMix() {
        var colors = CrayonsPalette.all(ofFlavor: [.greenish, .bright])
        expect(colors) == [.honeydew,
                           .flora,
                           .spindrift]

        colors = CrayonsPalette.all(ofFlavor: [.reddish, .dark])
        expect(colors) == [.cayenne]

        colors = CrayonsPalette.all(ofFlavor: [.pink_ish, .warm])
        expect(colors) == []

        colors = CrayonsPalette.all(ofFlavor: [.reddish, .bright])
        expect(colors) == [.strawberry,
                           .salmon,
                           .carnation]
    }

    func testButFlavor() {
        var colors = CrayonsPalette.all(ofFlavor: .blueish, but: .dark)
        expect(colors) == [.midnight,
                           .eggplant,
                           .turquoise,
                           .aqua,
                           .blueberry,
                           .spindrift,
                           .ice,
                           .sky,
                           .orchid]

        colors = CrayonsPalette.all(but: .metal)
        expect(colors) == [.snow,
                           .cayenne,
                           .mocha,
                           .asparagus,
                           .fern,
                           .clover,
                           .moss,
                           .teal,
                           .ocean,
                           .midnight,
                           .eggplant,
                           .plum,
                           .maroon,

                           .maraschino,
                           .tangerine,
                           .lemon,
                           .lime,
                           .spring,
                           .seaFoam,
                           .turquoise,
                           .aqua,
                           .blueberry,
                           .grape,
                           .magenta,
                           
                           .strawberry,
                           .salmon,
                           .cantaloupe,
                           .banana,
                           .honeydew,
                           .flora,
                           .spindrift,
                           .ice,
                           .sky,
                           .orchid,
                           .lavender,
                           .bubblegum,
                           .carnation]

        let anyNotMetal = CrayonsPalette.any(but: .metal)
        expect(colors.contains(anyNotMetal!)) == true
    }
}
