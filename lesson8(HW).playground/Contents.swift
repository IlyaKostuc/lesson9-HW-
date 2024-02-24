import Cocoa

//MARK: (1)

//MARK: - Вариант №1 (Начал придумывать ерунду 🤓)
//var arrayStudents = ["Max", "Ilya", "Pasha", "Tim", "Steve", "Joe", "Valera", "Stas", "Timur", "Cristian", "Vladimir", "Arnold"]
//
//arrayStudents.append("Nika")
//arrayStudents.append("Olya")
//arrayStudents.insert("Alyona", at: 12)
//arrayStudents.append(contentsOf: ["Nicole", "Vera", "Tanya", "Lena"])
//
//let list = arrayStudents.joined(separator: ", ")
//print(list)
//
//func removeStudents(name: [String]) -> [String] {
//    var students = name
//    if name.count > 6 {
//        students.removeFirst(6)
//    }
//    return students
//}
//
//
//let newList = removeStudents(name: arrayStudents)
//print(newList.joined(separator: ", "))


//MARK: - Вариант №2 (По-условию задачи так правильней, на мой взгляд)
var arrayStudents = ["Max", "Ilya", "Pasha", "Tim", "Steve", "Joe", "Valera", "Stas", "Timur", "Cristian", "Vladimir", "Arnold"]

arrayStudents.append("Nika")
arrayStudents.append("Olya")
arrayStudents.insert("Alyona", at: 5)
arrayStudents.append(contentsOf: ["Nicole", "Vera", "Tanya", "Lena"])

let list = arrayStudents.joined(separator: ", ")
print(list)

arrayStudents.remove(at: 0)
arrayStudents.remove(at: 1)
arrayStudents.remove(at: 3)
arrayStudents.remove(at: 4)
arrayStudents.remove(at: 5)
arrayStudents.remove(at: 4)
arrayStudents.remove(at: 5)
arrayStudents.remove(at: 3)
arrayStudents.remove(at: 10)

let newList = arrayStudents.joined(separator: ", ")
print(newList)
print("------------------------------------------")


//MARK: (2)
struct Site {
    var name: String?
    var surName: String?
    var nikName: String?
    var email: String?
    var password: String?
    
    func site() -> String? {
        guard let name = self.name, let surName = self.surName, let nikName = self.nikName, let email = self.email, let password = self.password else {
            return nil
        }
        return """
               Фамилия пользователя (\(surName))
               Имя пользователя (\(name))
               НикНейм пользователя (\(nikName))
               Почта (\(email))
               Пароль (\(password))
               """
    }
}
var site = Site()
site.surName = "Kostuc"
site.name = "Ilya"
site.nikName = "iOSLomaster"
site.email = "ilyaKostuc@gmail.com"
site.password = "**********"

if let site = site.site() {
    print(site)
} else {
    print("Ошибка - Не все данные")
}
print("------------------------------------------")


//MARK: (3)

//MARK: Человек
class Human {
    var weaponDamage: Int //оружиеУрон
    var health: Int //здоровье
    
    init(weaponDamage: Int = 4, health: Int = 9) {
        self.weaponDamage = weaponDamage
        self.health = health
    }
    
    func attackPlayer(_ damage: Int) -> String {
        if health > 0 {
            let newHealth = health - damage
            if newHealth > 0 {
                return "\(newHealth)"
            }
        }
        return "Погиб"
    }
}

//MARK: Орк
class Ork: Human {
    init() {
        super.init(weaponDamage: 3, health: 10)
    }
}

//MARK: Эльф
class Elf: Human {
    init() {
        super.init(weaponDamage: 6, health: 8)
    }
}

//MARK: Обьекты
let human = Human()
human.health
human.weaponDamage


let ork = Ork()
ork.health
ork.weaponDamage

let elf = Elf()
elf.health
elf.weaponDamage

print("""
          RPG Warhammer 40,000

Герои: Орк, Эльф, Человек

Орк - здоровье: \(ork.health), атака: \(ork.weaponDamage)
Эльф - здоровье: \(elf.health), атака: \(elf.weaponDamage)
Человек - здоровье: \(human.health), атака: \(human.weaponDamage)

""")

print("Раунд №1")

let orkAttack = ork.weaponDamage
let elfAttack = elf.weaponDamage
let humanAttack = human.weaponDamage

print("""
      Ход Орка:
      Орк атакует Эльфа и наносит \(orkAttack) урона, у Эльфа осталось \(elf.attackPlayer(orkAttack)) жизней
      """)

print("""
      
      Ход Эльфа:
      Эльф атакует Орка и наносит \(elfAttack) урона, у Орка осталось \(ork.attackPlayer(elfAttack)) жизней
      """)

print("""
      
      Ход Человека:
      Человек атакует Орка и наносит \(humanAttack) урона. Орк \(ork.attackPlayer(ork.health))
      """)
















