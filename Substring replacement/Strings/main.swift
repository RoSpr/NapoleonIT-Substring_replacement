print("Введите строку (например: [Programming [langu[age]]] is the most popular programming language [today])")
var str = readLine()

print("Введите новую подстроку (будет вставлена вместо [...[...[...]]]")
var sub_str = readLine()

let bracket_index = str?.firstIndex(of: "]")

let range = str!.startIndex ... (str?.index(((str?.firstIndex(of: "]") ?? str?.startIndex)!), offsetBy : 2))!
str?.removeSubrange(range)
str!.insert(contentsOf: sub_str ?? "", at: str!.startIndex)
print(str!)
