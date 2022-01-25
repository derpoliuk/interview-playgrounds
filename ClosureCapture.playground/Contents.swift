// What will be the output?

var language = "ObjC"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()
