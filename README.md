### Color palettes

• `ColorPalette` is a protocol with few requirements, and several extensions - providing pretty rich functionality; and, perhaps, ability to add / extend features when needs come

• right now, the only palette available is `CrayonsPalette`, with actual colors copied from Crayons.

• defines the colors by `Flavors`: `metal`, `dark`, `bright`, `warm`, `cool`, `greenish`, `yellowish`, `reddish`, `pink_ish`, `blueish`

• `ColorFlavor` is `OptionSet`, so a flavor can be combined

```swift
let flavor: ColorFlavor = [.bright, .reddish]
```

• all or any (random) color, by a flavor:

```swift
// all bright greenish colors:
var colors = CrayonsPalette.all(ofFlavor: [.greenish, .bright])
expect(colors) == [.honeydew,
                   .flora,
                   .spindrift]
                   
// all blueish colors, which are not dark:
colors = CrayonsPalette.all(ofFlavor: .blueish, but: .dark)
expect(colors) == [.midnight,
                   .eggplant,
                   .turquoise,
                   .aqua,
                   .blueberry,
                   .spindrift,
                   .ice,
                   .sky,
                   .orchid]
                   
// any color from the palette, but not metal:
let anyNotMetal = CrayonsPalette.any(but: .metal)
```

• no example application atm, but i added a playground to play. An application, as well as more palettes, may come later