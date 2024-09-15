module Chanterelle
export chanterelle, chanterelle_light

using Colors
using ColorSchemes

colors = (pine = LCHab(25.0, 10.0, 160.0),
          chanterelle = LCHab(85.0, 50.0, 80.0),
          pine_light = LCHab(50.0, 25.0, 160.0))

highlights = (amanita = LCHab(50, 65, 40),
              chanterelle = colors.chanterelle,
              moss = LCHab(55.0, 50, 120))

accents = (sky = colorant"#b5cdd9",
           storm = colorant"#516378",
           soil = HSL(30, 0.15, 0.35),
           porcini = LCHab(50, 33, 50))

ansiterm = (black = colorant"#111",
            red = HSL(10, 0.55, 0.5),
            green = HSL(100, 0.2, 0.5),
            yellow = HSL(45, 0.7, 0.56),
            blue = HSL(210, 0.3, 0.5),
            magenta = HSL(300, 0.3, 0.5),
            cyan = HSL(175, 0.3, 0.5),
            white = colorant"#eee")

chanterelle = ColorScheme(range(colors.pine, colors.chanterelle))
chanterelle_light = ColorScheme(range(colors.pine_light, colors.chanterelle))

end # module Chanterelle
