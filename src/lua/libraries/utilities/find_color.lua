local colors = {
	["byzantium"] = Color(0.44, 0.16, 0.39, 1),
	["firebrick"] = Color(0.70, 0.13, 0.13, 1),
	["deep carmine pink"] = Color(0.94, 0.19, 0.22, 1),
	["crimson"] = Color(0.86, 0.08, 0.24, 1),
	["copper"] = Color(0.72, 0.45, 0.20, 1),
	["fuchsia"] = Color(1.00, 0.00, 1.00, 1),
	["blue (crayola)"] = Color(0.12, 0.46, 1.00, 1),
	["arsenic"] = Color(0.23, 0.27, 0.29, 1),
	["antique fuchsia"] = Color(0.57, 0.36, 0.51, 1),
	["aqua"] = Color(0.00, 1.00, 1.00, 1),
	["eucalyptus"] = Color(0.27, 0.84, 0.66, 1),
	["cinnamon satin"] = Color(0.80, 0.38, 0.49, 1),
	["cultured"] = Color(0.96, 0.96, 0.96, 1),
	["azure (web Color)"] = Color(0.94, 1.00, 1.00, 1),
	["amazonite"] = Color(0.00, 0.77, 0.69, 1),
	["champagne"] = Color(0.97, 0.91, 0.81, 1),
	["copper (crayola)"] = Color(0.85, 0.54, 0.40, 1),
	["dollar bill"] = Color(0.52, 0.73, 0.40, 1),
	["air superiority blue"] = Color(0.45, 0.63, 0.76, 1),
	["desert sand"] = Color(0.93, 0.79, 0.69, 1),
	["dark raspberry"] = Color(0.53, 0.15, 0.34, 1),
	["apricot"] = Color(0.98, 0.81, 0.69, 1),
	["deep pink"] = Color(1.00, 0.08, 0.58, 1),
	["cordovan"] = Color(0.54, 0.25, 0.27, 1),
	["amazon"] = Color(0.23, 0.48, 0.34, 1),
	["cornflower blue"] = Color(0.39, 0.58, 0.93, 1),
	["dutch white"] = Color(0.94, 0.87, 0.73, 1),
	["dark pastel blue"] = Color(0.47, 0.62, 0.80, 1),
	["dark sea green"] = Color(0.56, 0.74, 0.56, 1),
	["celadon green"] = Color(0.18, 0.52, 0.49, 1),
	["almond"] = Color(0.94, 0.87, 0.80, 1),
	["citron"] = Color(0.62, 0.66, 0.12, 1),
	["electric indigo"] = Color(0.44, 0.00, 1.00, 1),
	["emerald"] = Color(0.31, 0.78, 0.47, 1),
	["alloy orange"] = Color(0.77, 0.38, 0.06, 1),
	["fern green"] = Color(0.31, 0.47, 0.26, 1),
	["electric lime"] = Color(0.80, 1.00, 0.00, 1),
	["amber"] = Color(1.00, 0.75, 0.00, 1),
	["duke blue"] = Color(0.00, 0.00, 0.61, 1),
	["electric purple"] = Color(0.75, 0.00, 1.00, 1),
	["diamond"] = Color(0.73, 0.95, 1.00, 1),
	["cherry"] = Color(0.87, 0.19, 0.39, 1),
	["dark candy apple red"] = Color(0.64, 0.00, 0.00, 1),
	["dark terra cotta"] = Color(0.80, 0.31, 0.36, 1),
	["barbie pink"] = Color(0.88, 0.13, 0.54, 1),
	["acid green"] = Color(0.69, 0.75, 0.10, 1),
	["bazaar"] = Color(0.60, 0.47, 0.48, 1),
	["deep maroon"] = Color(0.51, 0.00, 0.00, 1),
	["cyan-blue azure"] = Color(0.27, 0.51, 0.75, 1),
	["dark medium gray"] = Color(0.66, 0.66, 0.66, 1),
	["dark tan"] = Color(0.57, 0.51, 0.32, 1),
	["british racing green"] = Color(0.00, 0.26, 0.15, 1),
	["dark cerulean"] = Color(0.03, 0.27, 0.49, 1),
	["dark pastel purple"] = Color(0.59, 0.44, 0.84, 1),
	["davy's grey"] = Color(0.33, 0.33, 0.33, 1),
	["dirt"] = Color(0.61, 0.46, 0.33, 1),
	["bronze yellow"] = Color(0.45, 0.44, 0.00, 1),
	["eggshell"] = Color(0.94, 0.92, 0.84, 1),
	["banana yellow"] = Color(1.00, 0.88, 0.21, 1),
	["burnt sienna"] = Color(0.91, 0.45, 0.32, 1),
	["blue lagoon"] = Color(0.67, 0.90, 0.93, 1),
	["deep jungle green"] = Color(0.00, 0.29, 0.29, 1),
	["arylide yellow"] = Color(0.91, 0.84, 0.42, 1),
	["bisque"] = Color(1.00, 0.89, 0.77, 1),
	["cg red"] = Color(0.88, 0.24, 0.19, 1),
	["baby pink"] = Color(0.96, 0.76, 0.76, 1),
	["blue (pigment)"] = Color(0.20, 0.20, 0.60, 1),
	["bronze"] = Color(0.80, 0.50, 0.20, 1),
	["alabaster"] = Color(0.95, 0.94, 0.90, 1),
	["cosmic latte"] = Color(1.00, 0.97, 0.91, 1),
	["corn"] = Color(0.98, 0.93, 0.36, 1),
	["ao (english)"] = Color(0.00, 0.50, 0.00, 1),
	["fuchsia rose"] = Color(0.78, 0.26, 0.46, 1),
	["chartreuse (traditional)"] = Color(0.87, 1.00, 0.00, 1),
	["flavescent"] = Color(0.97, 0.91, 0.56, 1),
	["bright maroon"] = Color(0.76, 0.13, 0.28, 1),
	["cadet"] = Color(0.33, 0.41, 0.45, 1),
	["electric ultramarine"] = Color(0.25, 0.00, 1.00, 1),
	["blue-magenta violet"] = Color(0.33, 0.21, 0.57, 1),
	["dartmouth green"] = Color(0.00, 0.44, 0.24, 1),
	["french plum"] = Color(0.51, 0.08, 0.33, 1),
	["blond"] = Color(0.98, 0.94, 0.75, 1),
	["café noir"] = Color(0.29, 0.21, 0.13, 1),
	["cerise"] = Color(0.87, 0.19, 0.39, 1),
	["deep tuscan red"] = Color(0.40, 0.26, 0.30, 1),
	["dark gray (x11)"] = Color(0.66, 0.66, 0.66, 1),
	["french wine"] = Color(0.67, 0.12, 0.27, 1),
	["celestial blue"] = Color(0.29, 0.59, 0.82, 1),
	["bittersweet"] = Color(1.00, 0.44, 0.37, 1),
	["deep taupe"] = Color(0.49, 0.37, 0.38, 1),
	["dark pastel green"] = Color(0.01, 0.75, 0.24, 1),
	["french fuchsia"] = Color(0.99, 0.25, 0.57, 1),
	["bitter lime"] = Color(0.75, 1.00, 0.00, 1),
	["claret"] = Color(0.50, 0.09, 0.20, 1),
	["blast-off bronze"] = Color(0.65, 0.44, 0.39, 1),
	["dark red"] = Color(0.55, 0.00, 0.00, 1),
	["battery charged blue"] = Color(0.11, 0.67, 0.84, 1),
	["beaver"] = Color(0.62, 0.51, 0.44, 1),
	["chrome yellow"] = Color(1.00, 0.65, 0.00, 1),
	["boysenberry"] = Color(0.53, 0.20, 0.38, 1),
	["amethyst"] = Color(0.60, 0.40, 0.80, 1),
	["flirt"] = Color(0.64, 0.00, 0.43, 1),
	["baby blue eyes"] = Color(0.63, 0.79, 0.95, 1),
	["brandeis blue"] = Color(0.00, 0.44, 1.00, 1),
	["canary yellow"] = Color(1.00, 0.94, 0.00, 1),
	["dark liver"] = Color(0.33, 0.29, 0.31, 1),
	["deep puce"] = Color(0.66, 0.36, 0.41, 1),
	["baker-miller pink"] = Color(1.00, 0.57, 0.69, 1),
	["french lilac"] = Color(0.53, 0.38, 0.56, 1),
	["african violet"] = Color(0.70, 0.52, 0.75, 1),
	["dark spring green"] = Color(0.09, 0.45, 0.27, 1),
	["field drab"] = Color(0.42, 0.33, 0.12, 1),
	["alice blue"] = Color(0.94, 0.97, 1.00, 1),
	["byzantine"] = Color(0.74, 0.20, 0.64, 1),
	["dark goldenrod"] = Color(0.72, 0.53, 0.04, 1),
	["chocolate (traditional)"] = Color(0.48, 0.25, 0.00, 1),
	["coyote brown"] = Color(0.51, 0.38, 0.24, 1),
	["bittersweet shimmer"] = Color(0.75, 0.31, 0.32, 1),
	["classic rose"] = Color(0.98, 0.80, 0.91, 1),
	["dark electric blue"] = Color(0.33, 0.41, 0.47, 1),
	["deep koamaru"] = Color(0.20, 0.20, 0.40, 1),
	["bright yellow (crayola)"] = Color(1.00, 0.67, 0.11, 1),
	["english vermillion"] = Color(0.80, 0.28, 0.29, 1),
	["fluorescent yellow"] = Color(0.80, 1.00, 0.00, 1),
	["crimson red"] = Color(0.60, 0.00, 0.00, 1),
	["charcoal"] = Color(0.21, 0.27, 0.31, 1),
	["cotton candy"] = Color(1.00, 0.74, 0.85, 1),
	["bulgarian rose"] = Color(0.28, 0.02, 0.03, 1),
	["denim"] = Color(0.08, 0.38, 0.74, 1),
	["deep carrot orange"] = Color(0.91, 0.41, 0.17, 1),
	["bright cerulean"] = Color(0.11, 0.67, 0.84, 1),
	["falu red"] = Color(0.50, 0.09, 0.09, 1),
	["air force blue (raf)"] = Color(0.36, 0.54, 0.66, 1),
	["forest green (traditional)"] = Color(0.00, 0.27, 0.13, 1),
	["dark lavender"] = Color(0.45, 0.31, 0.59, 1),
	["dark blue-gray"] = Color(0.40, 0.40, 0.60, 1),
	["blue-green"] = Color(0.05, 0.60, 0.73, 1),
	["alabama crimson"] = Color(0.69, 0.00, 0.16, 1),
	["brass"] = Color(0.71, 0.65, 0.26, 1),
	["buff"] = Color(0.94, 0.86, 0.51, 1),
	["coral red"] = Color(1.00, 0.25, 0.25, 1),
	["coral reef"] = Color(0.99, 0.49, 0.43, 1),
	["deep lemon"] = Color(0.96, 0.78, 0.10, 1),
	["cherry blossom pink"] = Color(1.00, 0.72, 0.77, 1),
	["cardinal"] = Color(0.77, 0.12, 0.23, 1),
	["aureolin"] = Color(0.99, 0.93, 0.00, 1),
	["deep aquamarine"] = Color(0.25, 0.51, 0.43, 1),
	["dark blue"] = Color(0.00, 0.00, 0.55, 1),
	["aero"] = Color(0.49, 0.73, 0.91, 1),
	["dark pink"] = Color(0.91, 0.33, 0.50, 1),
	["carmine pink"] = Color(0.92, 0.30, 0.26, 1),
	["desert"] = Color(0.76, 0.60, 0.42, 1),
	["black bean"] = Color(0.24, 0.05, 0.01, 1),
	["cocoa brown"] = Color(0.82, 0.41, 0.12, 1),
	["dark orange"] = Color(1.00, 0.55, 0.00, 1),
	["catawba"] = Color(0.44, 0.21, 0.26, 1),
	["french beige"] = Color(0.65, 0.48, 0.36, 1),
	["bud green"] = Color(0.48, 0.71, 0.38, 1),
	["eton blue"] = Color(0.59, 0.78, 0.64, 1),
	["carmine"] = Color(0.59, 0.00, 0.09, 1),
	["blanched almond"] = Color(1.00, 0.92, 0.80, 1),
	["electric violet"] = Color(0.56, 0.00, 1.00, 1),
	["catalina blue"] = Color(0.02, 0.16, 0.47, 1),
	["deer"] = Color(0.73, 0.53, 0.35, 1),
	["dingy dungeon"] = Color(0.77, 0.19, 0.32, 1),
	["dark green"] = Color(0.00, 0.20, 0.13, 1),
	["cinnabar"] = Color(0.89, 0.26, 0.20, 1),
	["cerise pink"] = Color(0.93, 0.23, 0.51, 1),
	["brown (traditional)"] = Color(0.59, 0.29, 0.00, 1),
	["air force blue (usaf)"] = Color(0.00, 0.19, 0.56, 1),
	["brown yellow"] = Color(0.80, 0.60, 0.40, 1),
	["coconut"] = Color(0.59, 0.35, 0.24, 1),
	["cyclamen"] = Color(0.96, 0.44, 0.63, 1),
	["dark midnight blue"] = Color(0.00, 0.20, 0.40, 1),
	["canary"] = Color(1.00, 1.00, 0.60, 1),
	["carnation pink"] = Color(1.00, 0.65, 0.79, 1),
	["carolina blue"] = Color(0.34, 0.63, 0.83, 1),
	["capri"] = Color(0.00, 0.75, 1.00, 1),
	["fluorescent orange"] = Color(1.00, 0.75, 0.00, 1),
	["copper penny"] = Color(0.68, 0.44, 0.41, 1),
	["deep saffron"] = Color(1.00, 0.60, 0.20, 1),
	["deep spring bud"] = Color(0.33, 0.42, 0.18, 1),
	["deep carmine"] = Color(0.66, 0.13, 0.24, 1),
	["french sky blue"] = Color(0.47, 0.71, 1.00, 1),
	["denim blue"] = Color(0.13, 0.26, 0.71, 1),
	["b'dazzled blue"] = Color(0.18, 0.35, 0.58, 1),
	["fawn"] = Color(0.90, 0.67, 0.44, 1),
	["deep moss green"] = Color(0.21, 0.37, 0.23, 1),
	["cal poly pomona green"] = Color(0.12, 0.30, 0.17, 1),
	["blue-gray"] = Color(0.40, 0.60, 0.80, 1),
	["feldgrau"] = Color(0.30, 0.36, 0.33, 1),
	["brown sugar"] = Color(0.69, 0.43, 0.30, 1),
	["carrot orange"] = Color(0.93, 0.57, 0.13, 1),
	["dark vanilla"] = Color(0.82, 0.75, 0.66, 1),
	["carmine red"] = Color(1.00, 0.00, 0.22, 1),
	["bottle green"] = Color(0.00, 0.42, 0.31, 1),
	["burlywood"] = Color(0.87, 0.72, 0.53, 1),
	["amaranth purple"] = Color(0.67, 0.15, 0.31, 1),
	["bole"] = Color(0.47, 0.27, 0.23, 1),
	["celadon"] = Color(0.67, 0.88, 0.69, 1),
	["beau blue"] = Color(0.74, 0.83, 0.90, 1),
	["cerulean"] = Color(0.00, 0.48, 0.65, 1),
	["dim gray"] = Color(0.41, 0.41, 0.41, 1),
	["chocolate (web)"] = Color(0.82, 0.41, 0.12, 1),
	["chinese violet"] = Color(0.52, 0.38, 0.53, 1),
	["caribbean green"] = Color(0.00, 0.80, 0.60, 1),
	["deep green-cyan turquoise"] = Color(0.05, 0.49, 0.38, 1),
	["dark green (x11)"] = Color(0.00, 0.39, 0.00, 1),
	["brilliant lavender"] = Color(0.96, 0.73, 1.00, 1),
	["blueberry"] = Color(0.31, 0.53, 0.97, 1),
	["brink pink"] = Color(0.98, 0.38, 0.50, 1),
	["ash grey"] = Color(0.70, 0.75, 0.71, 1),
	["dark lava"] = Color(0.28, 0.24, 0.20, 1),
	["bright navy blue"] = Color(0.10, 0.45, 0.82, 1),
	["banana mania"] = Color(0.98, 0.91, 0.71, 1),
	["coffee"] = Color(0.44, 0.31, 0.22, 1),
	["button blue"] = Color(0.14, 0.63, 0.93, 1),
	["black leather jacket"] = Color(0.15, 0.21, 0.16, 1),
	["cadmium yellow"] = Color(1.00, 0.96, 0.00, 1),
	["dolphin gray"] = Color(0.51, 0.56, 0.52, 1),
	["columbia blue"] = Color(0.77, 0.85, 0.89, 1),
	["castleton green"] = Color(0.00, 0.34, 0.25, 1),
	["cyber yellow"] = Color(1.00, 0.83, 0.00, 1),
	["deep lilac"] = Color(0.60, 0.33, 0.73, 1),
	["dark brown"] = Color(0.40, 0.26, 0.13, 1),
	["amaranth pink"] = Color(0.95, 0.61, 0.73, 1),
	["bleu de france"] = Color(0.19, 0.55, 0.91, 1),
	["camouflage green"] = Color(0.47, 0.53, 0.42, 1),
	["ecru"] = Color(0.76, 0.70, 0.50, 1),
	["coquelicot"] = Color(1.00, 0.22, 0.00, 1),
	["french lime"] = Color(0.62, 0.99, 0.22, 1),
	["amaranth deep purple"] = Color(0.62, 0.17, 0.41, 1),
	["atomic tangerine"] = Color(1.00, 0.60, 0.40, 1),
	["dark chestnut"] = Color(0.60, 0.41, 0.38, 1),
	["daffodil"] = Color(1.00, 1.00, 0.19, 1),
	["big dip o’ruby"] = Color(0.61, 0.15, 0.26, 1),
	["cyan"] = Color(0.00, 1.00, 1.00, 1),
	["burnished brown"] = Color(0.63, 0.48, 0.45, 1),
	["blue (ryb)"] = Color(0.01, 0.28, 1.00, 1),
	["alien armpit"] = Color(0.52, 0.87, 0.01, 1),
	["electric yellow"] = Color(1.00, 1.00, 0.20, 1),
	["aquamarine"] = Color(0.50, 1.00, 0.83, 1),
	["big foot feet"] = Color(0.91, 0.56, 0.35, 1),
	["congo pink"] = Color(0.97, 0.51, 0.47, 1),
	["dark jungle green"] = Color(0.10, 0.14, 0.13, 1),
	["blue jeans"] = Color(0.36, 0.68, 0.93, 1),
	["electric blue"] = Color(0.49, 0.98, 1.00, 1),
	["english green"] = Color(0.11, 0.30, 0.24, 1),
	["dark taupe"] = Color(0.28, 0.24, 0.20, 1),
	["donkey brown"] = Color(0.40, 0.30, 0.16, 1),
	["amaranth red"] = Color(0.83, 0.13, 0.18, 1),
	["charm pink"] = Color(0.90, 0.56, 0.67, 1),
	["café au lait"] = Color(0.65, 0.48, 0.36, 1),
	["bright green"] = Color(0.40, 1.00, 0.00, 1),
	["brown-nose"] = Color(0.42, 0.27, 0.14, 1),
	["cerulean frost"] = Color(0.43, 0.61, 0.76, 1),
	["blue (pantone)"] = Color(0.00, 0.09, 0.66, 1),
	["china pink"] = Color(0.87, 0.44, 0.63, 1),
	["dust storm"] = Color(0.90, 0.80, 0.79, 1),
	["china rose"] = Color(0.66, 0.32, 0.43, 1),
	["camel"] = Color(0.76, 0.60, 0.42, 1),
	["aero blue"] = Color(0.79, 1.00, 0.90, 1),
	["bright lilac"] = Color(0.85, 0.57, 0.94, 1),
	["black coral"] = Color(0.33, 0.38, 0.44, 1),
	["fandango pink"] = Color(0.87, 0.32, 0.52, 1),
	["bubble gum"] = Color(1.00, 0.76, 0.80, 1),
	["english red"] = Color(0.67, 0.29, 0.32, 1),
	["cinereous"] = Color(0.60, 0.51, 0.48, 1),
	["cadmium orange"] = Color(0.93, 0.53, 0.18, 1),
	["candy pink"] = Color(0.89, 0.44, 0.48, 1),
	["dark magenta"] = Color(0.55, 0.00, 0.55, 1),
	["flame"] = Color(0.89, 0.35, 0.13, 1),
	["french rose"] = Color(0.96, 0.29, 0.54, 1),
	["army green"] = Color(0.29, 0.33, 0.13, 1),
	["anti-flash white"] = Color(0.95, 0.95, 0.96, 1),
	["blue (munsell)"] = Color(0.00, 0.58, 0.69, 1),
	["english lavender"] = Color(0.71, 0.51, 0.58, 1),
	["barn red"] = Color(0.49, 0.04, 0.01, 1),
	["debian red"] = Color(0.84, 0.04, 0.33, 1),
	["deep coffee"] = Color(0.44, 0.26, 0.25, 1),
	["baby blue"] = Color(0.54, 0.81, 0.94, 1),
	["cerulean blue"] = Color(0.16, 0.32, 0.75, 1),
	["charleston green"] = Color(0.14, 0.17, 0.17, 1),
	["dark sky blue"] = Color(0.55, 0.75, 0.84, 1),
	["cyan azure"] = Color(0.31, 0.51, 0.71, 1),
	["fire engine red"] = Color(0.81, 0.13, 0.16, 1),
	["dark turquoise"] = Color(0.00, 0.81, 0.82, 1),
	["boston university red"] = Color(0.80, 0.00, 0.00, 1),
	["cadmium red"] = Color(0.89, 0.00, 0.13, 1),
	["dark powder blue"] = Color(0.00, 0.20, 0.60, 1),
	["fresh air"] = Color(0.65, 0.91, 1.00, 1),
	["blue (ncs)"] = Color(0.00, 0.53, 0.74, 1),
	["brick red"] = Color(0.80, 0.25, 0.33, 1),
	["baby powder"] = Color(1.00, 1.00, 0.98, 1),
	["bluebonnet"] = Color(0.11, 0.11, 0.94, 1),
	["deep magenta"] = Color(0.80, 0.00, 0.80, 1),
	["flamingo pink"] = Color(0.99, 0.56, 0.67, 1),
	["brown (web)"] = Color(0.65, 0.16, 0.16, 1),
	["cool grey"] = Color(0.55, 0.57, 0.67, 1),
	["burnt orange"] = Color(0.80, 0.33, 0.00, 1),
	["dark cyan"] = Color(0.00, 0.55, 0.55, 1),
	["dark purple"] = Color(0.19, 0.10, 0.20, 1),
	["azure"] = Color(0.00, 0.50, 1.00, 1),
	["cornell red"] = Color(0.70, 0.11, 0.11, 1),
	["burnt umber"] = Color(0.54, 0.20, 0.14, 1),
	["dark scarlet"] = Color(0.34, 0.01, 0.10, 1),
	["dark moss green"] = Color(0.29, 0.36, 0.14, 1),
	["battleship grey"] = Color(0.52, 0.52, 0.51, 1),
	["bitter lemon"] = Color(0.79, 0.88, 0.05, 1),
	["android green"] = Color(0.64, 0.78, 0.22, 1),
	["fashion fuchsia"] = Color(0.96, 0.00, 0.63, 1),
	["english violet"] = Color(0.34, 0.24, 0.36, 1),
	["ferrari red"] = Color(1.00, 0.16, 0.00, 1),
	["fiery rose"] = Color(1.00, 0.33, 0.44, 1),
	["desire"] = Color(0.92, 0.24, 0.33, 1),
	["brilliant azure"] = Color(0.20, 0.60, 1.00, 1),
	["burgundy"] = Color(0.50, 0.00, 0.13, 1),
	["black shadows"] = Color(0.75, 0.69, 0.70, 1),
	["cobalt blue"] = Color(0.00, 0.28, 0.67, 1),
	["blue sapphire"] = Color(0.07, 0.38, 0.50, 1),
	["dark slate blue"] = Color(0.28, 0.24, 0.55, 1),
	["deep sky blue"] = Color(0.00, 0.75, 1.00, 1),
	["deep violet"] = Color(0.20, 0.00, 0.40, 1),
	["dark salmon"] = Color(0.91, 0.59, 0.48, 1),
	["coral"] = Color(1.00, 0.50, 0.31, 1),
	["feldspar"] = Color(0.99, 0.84, 0.69, 1),
	["awesome"] = Color(1.00, 0.13, 0.32, 1),
	["antique brass"] = Color(0.80, 0.58, 0.46, 1),
	["antique bronze"] = Color(0.40, 0.36, 0.12, 1),
	["fuchsia purple"] = Color(0.80, 0.22, 0.48, 1),
	["bone"] = Color(0.89, 0.85, 0.79, 1),
	["ball blue"] = Color(0.13, 0.67, 0.80, 1),
	["electric cyan"] = Color(0.00, 1.00, 1.00, 1),
	["dogwood rose"] = Color(0.84, 0.09, 0.41, 1),
	["begonia"] = Color(0.98, 0.43, 0.47, 1),
	["aztec gold"] = Color(0.76, 0.60, 0.33, 1),
	["ceil"] = Color(0.57, 0.63, 0.81, 1),
	["folly"] = Color(1.00, 0.00, 0.31, 1),
	["dark imperial blue"] = Color(0.00, 0.08, 0.49, 1),
	["dark gunmetal"] = Color(0.12, 0.15, 0.16, 1),
	["frostbite"] = Color(0.91, 0.21, 0.65, 1),
	["cyan (process)"] = Color(0.00, 0.72, 0.92, 1),
	["cool black"] = Color(0.00, 0.18, 0.39, 1),
	["dark liver (horses)"] = Color(0.33, 0.24, 0.22, 1),
	["drab"] = Color(0.59, 0.44, 0.09, 1),
	["copper red"] = Color(0.80, 0.43, 0.32, 1),
	["blue-violet"] = Color(0.54, 0.17, 0.89, 1),
	["apple green"] = Color(0.55, 0.71, 0.00, 1),
	["dark olive green"] = Color(0.33, 0.42, 0.18, 1),
	["bright ube"] = Color(0.82, 0.62, 0.91, 1),
	["arctic lime"] = Color(0.82, 1.00, 0.08, 1),
	["deep ruby"] = Color(0.52, 0.25, 0.36, 1),
	["fandango"] = Color(0.71, 0.20, 0.54, 1),
	["deep chestnut"] = Color(0.73, 0.31, 0.28, 1),
	["deep space sparkle"] = Color(0.29, 0.39, 0.42, 1),
	["coral pink"] = Color(0.97, 0.51, 0.47, 1),
	["cedar chest"] = Color(0.79, 0.35, 0.29, 1),
	["chartreuse (web)"] = Color(0.50, 1.00, 0.00, 1),
	["flattery"] = Color(0.42, 0.27, 0.14, 1),
	["cream"] = Color(1.00, 0.99, 0.82, 1),
	["deep champagne"] = Color(0.98, 0.84, 0.65, 1),
	["chinese red"] = Color(0.67, 0.22, 0.12, 1),
	["blizzard blue"] = Color(0.67, 0.90, 0.93, 1),
	["caput mortuum"] = Color(0.35, 0.15, 0.13, 1),
	["asparagus"] = Color(0.53, 0.66, 0.42, 1),
	["carmine (m&p)"] = Color(0.84, 0.00, 0.25, 1),
	["chlorophyll green"] = Color(0.29, 1.00, 0.00, 1),
	["bistre"] = Color(0.24, 0.17, 0.12, 1),
	["american rose"] = Color(1.00, 0.01, 0.24, 1),
	["desaturated cyan"] = Color(0.40, 0.60, 0.60, 1),
	["cg blue"] = Color(0.00, 0.48, 0.65, 1),
	["antique white"] = Color(0.98, 0.92, 0.84, 1),
	["celadon blue"] = Color(0.00, 0.48, 0.65, 1),
	["fulvous"] = Color(0.89, 0.52, 0.00, 1),
	["dark violet"] = Color(0.58, 0.00, 0.83, 1),
	["artichoke"] = Color(0.56, 0.59, 0.47, 1),
	["cyan cornflower blue"] = Color(0.09, 0.55, 0.76, 1),
	["black"] = Color(0.00, 0.00, 0.00, 1),
	["cadet blue"] = Color(0.37, 0.62, 0.63, 1),
	["eerie black"] = Color(0.11, 0.11, 0.11, 1),
	["forest green (web)"] = Color(0.13, 0.55, 0.13, 1),
	["floral white"] = Color(1.00, 0.98, 0.94, 1),
	["blue yonder"] = Color(0.31, 0.45, 0.65, 1),
	["earth yellow"] = Color(0.88, 0.66, 0.37, 1),
	["blue bell"] = Color(0.64, 0.64, 0.82, 1),
	["cambridge blue"] = Color(0.64, 0.76, 0.68, 1),
	["dark yellow"] = Color(0.61, 0.53, 0.05, 1),
	["french bistre"] = Color(0.52, 0.43, 0.30, 1),
	["copper rose"] = Color(0.60, 0.40, 0.40, 1),
	["amaranth"] = Color(0.90, 0.17, 0.31, 1),
	["carnelian"] = Color(0.70, 0.11, 0.11, 1),
	["brilliant rose"] = Color(1.00, 0.33, 0.64, 1),
	["dark tangerine"] = Color(1.00, 0.66, 0.07, 1),
	["cadmium green"] = Color(0.00, 0.42, 0.24, 1),
	["dark brown-tangelo"] = Color(0.53, 0.40, 0.31, 1),
	["cornsilk"] = Color(1.00, 0.97, 0.86, 1),
	["dark khaki"] = Color(0.74, 0.72, 0.42, 1),
	["dandelion"] = Color(0.94, 0.88, 0.19, 1),
	["electric green"] = Color(0.00, 1.00, 0.00, 1),
	["cyan cobalt blue"] = Color(0.16, 0.35, 0.61, 1),
	["electric lavender"] = Color(0.96, 0.73, 1.00, 1),
	["dark sienna"] = Color(0.24, 0.08, 0.08, 1),
	["deep red"] = Color(0.52, 0.00, 0.00, 1),
	["eminence"] = Color(0.42, 0.19, 0.51, 1),
	["deep peach"] = Color(1.00, 0.80, 0.64, 1),
	["dark puce"] = Color(0.31, 0.23, 0.24, 1),
	["eggplant"] = Color(0.38, 0.25, 0.32, 1),
	["azure mist"] = Color(0.94, 1.00, 1.00, 1),
	["french puce"] = Color(0.31, 0.09, 0.04, 1),
	["bright pink"] = Color(1.00, 0.00, 0.50, 1),
	["egyptian blue"] = Color(0.06, 0.20, 0.65, 1),
	["avocado"] = Color(0.34, 0.51, 0.01, 1),
	["absolute zero"] = Color(0.00, 0.28, 0.73, 1),
	["bubbles"] = Color(0.91, 1.00, 1.00, 1),
	["french pink"] = Color(0.99, 0.42, 0.62, 1),
	["flax"] = Color(0.93, 0.86, 0.51, 1),
	["bangladesh green"] = Color(0.00, 0.42, 0.31, 1),
	["dark slate gray"] = Color(0.18, 0.31, 0.31, 1),
	["deep mauve"] = Color(0.83, 0.45, 0.83, 1),
	["french blue"] = Color(0.00, 0.45, 0.73, 1),
	["dark byzantium"] = Color(0.36, 0.22, 0.33, 1),
	["fuchsia pink"] = Color(1.00, 0.47, 1.00, 1),
	["antique ruby"] = Color(0.52, 0.11, 0.18, 1),
	["french raspberry"] = Color(0.78, 0.17, 0.28, 1),
	["cyber grape"] = Color(0.35, 0.26, 0.49, 1),
	["azureish white"] = Color(0.86, 0.91, 0.96, 1),
	["champagne pink"] = Color(0.95, 0.87, 0.81, 1),
	["amber (sae/ece)"] = Color(1.00, 0.49, 0.00, 1),
	["dark pastel red"] = Color(0.76, 0.23, 0.13, 1),
	["chamoisee"] = Color(0.63, 0.47, 0.35, 1),
	["deep cerise"] = Color(0.85, 0.20, 0.53, 1),
	["crimson glory"] = Color(0.75, 0.00, 0.20, 1),
	["dark coral"] = Color(0.80, 0.36, 0.27, 1),
	["deep fuchsia"] = Color(0.76, 0.33, 0.76, 1),
	["deep green"] = Color(0.02, 0.40, 0.03, 1),
	["fluorescent pink"] = Color(1.00, 0.08, 0.58, 1),
	["black olive"] = Color(0.23, 0.24, 0.21, 1),
	["cameo pink"] = Color(0.94, 0.73, 0.80, 1),
	["brunswick green"] = Color(0.11, 0.30, 0.24, 1),
	["cinnamon"] = Color(0.82, 0.41, 0.12, 1),
	["blue bolt"] = Color(0.00, 0.73, 0.98, 1),
	["candy apple red"] = Color(1.00, 0.03, 0.00, 1),
	["cadet grey"] = Color(0.57, 0.64, 0.69, 1),
	["booger buster"] = Color(0.87, 0.89, 0.42, 1),
	["celeste"] = Color(0.70, 1.00, 1.00, 1),
	["alizarin crimson"] = Color(0.89, 0.15, 0.21, 1),
	["electric crimson"] = Color(1.00, 0.00, 0.25, 1),
	["blush"] = Color(0.87, 0.36, 0.51, 1),
	["french mauve"] = Color(0.83, 0.45, 0.83, 1),
	["cosmic cobalt"] = Color(0.18, 0.18, 0.53, 1),
	["blue"] = Color(0.00, 0.00, 1.00, 1),
	["french violet"] = Color(0.53, 0.02, 0.81, 1),
	["bondi blue"] = Color(0.00, 0.58, 0.71, 1),
	["aurometalsaurus"] = Color(0.43, 0.50, 0.50, 1),
	["ebony"] = Color(0.33, 0.36, 0.31, 1),
	["bistre brown"] = Color(0.59, 0.44, 0.09, 1),
	["fuzzy wuzzy"] = Color(0.80, 0.40, 0.40, 1),
	["fallow"] = Color(0.76, 0.60, 0.42, 1),
	["citrine"] = Color(0.89, 0.82, 0.04, 1),
	["dark orchid"] = Color(0.60, 0.20, 0.80, 1),
	["beige"] = Color(0.96, 0.96, 0.86, 1),
	["auburn"] = Color(0.65, 0.16, 0.16, 1),
	["chestnut"] = Color(0.58, 0.27, 0.21, 1),
	["bright lavender"] = Color(0.75, 0.58, 0.89, 1),
	["bright turquoise"] = Color(0.03, 0.91, 0.87, 1),
	["dodger blue"] = Color(0.12, 0.56, 1.00, 1),
	["fuchsia (crayola)"] = Color(0.76, 0.33, 0.76, 1),
}

function utility.FindColor(color)
	local found = {}
	for k,v in pairs(colors) do
		table.insert(found, {name = k, dist = Vec3(color.r, color.g, color.b):Distance(Vec3(v.r, v.g, v.b))})
	end
	table.sort(found, function(a, b) return a.dist < b.dist end)
	return found[1].name, colors[name]
end