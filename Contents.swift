import UIKit

/*
 Консольная программа на закрепление
 Напишите консольную программу, которая принимает от пользователя два параметра: букву, число.
 Вывести в консоль список всех фамилий, начинающихся на данную букву, если их владелец имеет пол, соответствующий введённому числу. Источником является массив, подготовленный заранее.
 */

//Если надо перепишу как консольное приложение под мак

//создаем картежи для массива
let tuple = ("Semen",1)
let tuple1 = ("Semen1",1)
let tuple2 = ("Semen2",1)
let tuple3 = ("Demen3",1)
let tuple4 = ("Demen4",1)
let tuple5 = ("Sonya",0)
let tuple6 = ("Sonya1",0)
let tuple7 = ("Sonya2",0)
let tuple8 = ("Donya3",0)
let tuple9 = ("Donya4",0)
let tuple10 = ("Donya5",0)

//создаем массив катежей
var stuff:[(name: String, gender: Int)] = []
//заполняем массив
stuff.append(tuple)
stuff.append(tuple1)
stuff.append(tuple2)
stuff.append(tuple3)
stuff.append(tuple4)
stuff.append(tuple5)
stuff.append(tuple6)
stuff.append(tuple7)
stuff.append(tuple8)
stuff.append(tuple9)
stuff.append(tuple10)

var names:[String] = []   //массив на выход

func getNameList(name: String, gender: Int, array: inout [String]) {
    guard (name.count==1) else {
        array.append("Error")
        return
    }
    guard (gender==1||gender==0) else {
        array.append("Error")
        return
    }
    for pearson in stuff{     //для каждого картежа
        if pearson.name.hasPrefix(name), pearson.gender == gender { //если имя в картеже начинается с ввода и заданный пол то добавляем в выходной массив
            array.append(pearson.name)
        }
    }
}

getNameList(name:"S",gender:0,array:&names)
print(names)
