flatiron = Meatcut.create(name: "flatiron", animal: "cow", meat_name: "beef", primal: "chuck", description: "A tasty tender cut from the middle of the shoulder, great for grilling and searing.", alt_names: "top blade")
bi_chuck = Meatcut.create(name: "bone-in chuck", animal: "cow", meat_name: "beef", primal: "chuck", description: "A large, flavorful, fatty, inexpensive roast for roasting or braising. Also great de-boned and ground for burgers.", alt_names: "chuck roast")
chuck_steak = Meatcut.create(name: "chuck steak", animal: "cow", meat_name: "beef", primal: "chuck", description:"Good for slow roasting. Also great de-boned and ground for burgers.", alt_names: "blade roast, blade steak, seven-bone steak, seven-bone roast")
chuck_roll = Meatcut.create(name: "chuck roll", animal: "cow", meat_name: "beef", primal: "chuck", description: "Good for slow roasting, braising, or grinding.", alt_names: "boneless chuck, chuck eye, chuck eye steak, chuck short ribs, pot roast, potroast")
stew_meat = Meatcut.create(name: "stew meat", animal: "cow", meat_name: "beef", primal: "chuck", description: "Any tougher or cheaper cut, cut into cubes for braising and stewing.")
ranch_steak = Meatcut.create(name: "ranch steak", animal: "cow", meat_name: "beef", primal: "chuck", description: "Tough-ish but affordable cut for grilling to rare or roasting.")
ribeye = Meatcut.create(name: "ribeye", animal: "cow", meat_name: "beef", primal: "rib", description: "A super popular super delicious steak.", alt_names: "entrecote, sweetheart steak (butterflied ribeye), ribeye roast")
rib_steak = Meatcut.create(name: "rib steak", animal: "cow", meat_name: "beef", primal: "rib", description: "A super popular super delicious steak, a ribeye with the bone.", alt_names:"cowboy steak, bone-in ribeye, rib cowboy steak")
back_rib = Meatcut.create(name: "back ribs", animal: "cow", meat_name: "beef", primal: "rib", description: "Back ribs taste like a ribeye, but you can cook them like pork ribs, on the grill or in the oven.", alt_names:"costilla para asar")
t_bone = Meatcut.create(name: "t-bone", animal: "cow", meat_name: "beef", primal: "loin", description: "", alt_names: "porterhouse")
ny_strip = Meatcut.create(name: "NY strip", animal: "cow", meat_name: "beef", primal: "loin", description: "A delicious easy-to-cook steak that is also the larger side of a t-bone steak.")
tenderloin = Meatcut.create(name: "tenderloin", animal: "cow", meat_name: "beef", primal: "loin", description: "The most tender and also most expensive cut of beef that also the smaller side of a t-bone steak.", alt_names: "chateaubriand (center-cut)")

beefcuts = [flatiron, bi_chuck, chuck_steak, chuck_roll, stew_meat, ranch_steak, ribeye, rib_steak, back_rib, t_bone, ny_strip, tenderloin]

# Meatcut.create!(beefcuts)

slow_roast = Technique.create(name: "slow roast", description: "Slow roasting is best for tougher cuts of meat that need some time for the sinew to break down. Most cuts that can be braised can also be slow roasted.", dry: true, equipment: "oven, pan")
hot_roast = Technique.create(name: "hot roast", description: "Hot roasting is best for more tender cuts of meat, like ribeye roasts. It involves cooking in an oven without liquid.", dry: true, equipment: "oven, pan")
sear = Technique.create(name: "sear", description: "Searing, also called pan-frying, sauteing, shallow-frying, or stir-frying when pieces are small, is when meat is cooked in a pan with oil above a heat source. It is used to get color on the outside of meat before roasting or braising, or to cook the meat to desired doneness.", dry: true, equipment: "pan, stovetop or campfire, tongs or spatula")
grill = Technique.create(name: "grill", description: "Grilling involves very high heat from underneath the grate or grill where the meat cooks, usually from wood, charcoal, or gas, providing the delightful charred grill marks.", dry: true, equipment: "grill, tongs")
broil = Technique.create(name: "broil", description: "Broiling is when the heat only comes from above the meat.", dry: true, equipment: "broiler, pan")
deep_fry = Technique.create(name: "deep fry", description: "Deep Frying is a high-fat method in which meat is cooked in oil at 300-375 degrees. It is often breaded or dredged in flour before frying, resulting in the hallmark crunchy crust.", dry: true, equipment: "deep fryer or deep pot, tongs, thermometer")
smoke = Technique.create(name: "smoke", description: "Smoking involves low and slow roasting with hot smoke from aromatic wood, often from apple, cedar, or cherry wood.", dry: true, equipment: "smoker, earthen pit, or grill, wood chips")
confit = Technique.create(name: "confit", description: "Confit is when you submerge meat (usually duck, chicken, pork) in fat and cook it low and slow. It is also a great way to preserve meat.", dry: true, equipment: "deep pan with lid or foil, fat (usually duck)")
raw = Technique.create(name: "raw/tartare", description: "Some meat is tender enough to not be cooked at all. Tartare is when the meat is cut into very small cubes and served with a cold sauce, garnishes, and often with a raw egg yolk.", equipment: "knife")

braise = Technique.create(name: "braise", description: "Braising is the most versatile way to cook meat, especially tough or sinewy meat. When in doubt, braise! Braising involves cooking the meat slowly in a hot flavorful liquid.", dry: false, equipment: "deep pan with lid or foil, oven")
stew = Technique.create(name: "stew", description: "Stewing is similar to braising, though it usually involves smaller pieces of meat and vegetables cooked together to form a soup or stew. (This is what your crockpot and your grandmother does.)", dry: false, equipment: "crockpot or soup pot and stovetop")
sous_vide = Technique.create(name: "sous-vide", description: "Sous-vide, French for “under vacuum,” is the method by which seasoned meat and a bit of flavorful liquid is vacuum-sealed in plastic and cooked slowly at a constant temperature for anywhere from 1 to 72 hours. You probably won’t be doing this at home, but kudos to you if you do!", dry: false, equipment: "sous-vider")
poach = Technique.create(name: "poach", description: "Poaching, or quickly cooking in flavorful simmering liquid, is usually used for leaner meats than braising. Fish and chicken are the most commonly poached meats, but this method can be used for lean cuts of other meats.", dry: false, equipment: "shallow pan with lid")

techniques = [hot_roast, slow_roast, sear, grill, broil, deep_fry, smoke, confit, raw, braise, stew, sous_vide, poach]
# Technique.create!(techniques)


# p Meatcut.find_by_name("flatiron").techniques << Technique.find_by_name("sear")

# beefmeals = {meatcut_id: 1, technique_id: 2}
# Meal.create!(beefmeals)

flatiron.techniques << [hot_roast, sear, grill, broil]
bi_chuck.techniques = [slow_roast, smoke, braise, stew]
chuck_steak.techniques << [slow_roast, smoke, braise, stew]
chuck_roll.techniques << [slow_roast, smoke, braise, stew]
stew_meat.techniques << [slow_roast, smoke, braise, stew]
ranch_steak.techniques << [slow_roast, smoke, braise, stew]	
ribeye.techniques << [hot_roast, sear, grill, broil]
rib_steak.techniques << [hot_roast, sear, grill, broil]
back_rib.techniques << [hot_roast, sear, grill, broil, smoke]
t_bone.techniques << [hot_roast, sear, grill, broil]
ny_strip.techniques << [hot_roast, sear, grill, broil]
tenderloin.techniques << [hot_roast, sear, grill, broil]

