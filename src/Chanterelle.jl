module Chanterelle
export chanterelle

using Colors
using ColorSchemes

const Colorspace = LCHab{Float64}

"""
_emphasis?_ *emphasis?* **Emphasis?**
"""
colors = (pine = HSL(165, 0.15, 0.25),
          chanterelle = HSL(45, 0.85, 0.65),
          # Isoluminant variant
          pine_isoluminant = HSL(165, 0.15, 0.6),
          chanterelle_isoluminant = HSL(45, 0.7, 0.6),
          # Extra saturated variant
          pine_saturated = HSL(165, 0.50, 0.25),
          chanterelle_saturated = HSL(45, 0.85, 0.55))

highlights = (amanita = HSL(10, 0.61, 0.51),
              chanterelle = HSL(45, 0.80, 0.6),
              moss = HSL(95, 0.25, 0.5))

accents = (ochre = colorant"#d69c48",
           terracotta = colorant"#c37f64",
           sky = colorant"#b5cdd9",
           storm = colorant"#516378",
           soil = HSL(30, 0.15, 0.35))

ansiterm = (black = colorant"#111",
            red = HSL(10, 0.55, 0.5),
            green = HSL(100, 0.2, 0.5),  # chanterelle[0.5]
            yellow = HSL(45, 0.7, 0.56), # chanterelle[1.0] darker + desaturated
            blue = HSL(210, 0.3, 0.5),
            magenta = HSL(300, 0.3, 0.5),
            cyan = HSL(175, 0.3, 0.5),
            white = colorant"#eee")

chanterelle = ColorScheme(range(Colorspace(colors.pine),
                                Colorspace(colors.chanterelle)))

chanterelle_isoluminant = ColorScheme(range(Colorspace(colors.pine_isoluminant),
                                            Colorspace(colors.chanterelle_isoluminant)))

chanterelle_saturated = ColorScheme(range(Colorspace(colors.pine_saturated),
                                          Colorspace(colors.chanterelle_saturated)))

end # module Chanterelle
