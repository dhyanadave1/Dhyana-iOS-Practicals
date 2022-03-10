var favoriteColours: Set = ["Pink", "Green", "Blue"]

print(favoriteColours.count)

for colours in favoriteColours {
    print(colours)
}

var favColours: Set = ["Pink", "Blue"]
//check for subset
var result = favColours.isSubset(of: favoriteColours)
print(result)

