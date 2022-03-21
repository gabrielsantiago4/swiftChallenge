//
//  main.swift
//  swiftChallenge
//
//  Created by Gabriel Santiago on 10/03/22.
//

import Foundation

var weekDict : [String : (hoursOfSleep : Int, sleepQuality : Int)] = [:]
let weekQualityResults = QualityResults()



func validateUserInput(range: ClosedRange<Int>) -> Int{
    //variavel de controle
    var inputInt: Int = 99
    // enquanto input int está fora de range
    while !range.contains(inputInt) {
        // puxando um input e armazenando numa variavel para ser castada
        let inputString = readLine()!
        //cast do input / não entendi
        if let inputCasted = Int(inputString) {
            inputInt = inputCasted
        } else { // não entendi
            inputInt = 99
        } // não entendi
        inputInt = Int(inputString) ?? 99
    }
    
    return inputInt
}

func getSleepInfo (day : String) {
    
    var sleep : (Int, Int)
    
    print(day)
    print("Hours of sleep: ")
    let hours = readLine()!
    print("Quality score: ")
    var quality = validateUserInput(range: 1...5)
    
    guard let hoursOfSleep = Int(hours) else {
        exit(0)
    }

    sleep.0 = hoursOfSleep
    sleep.1 = quality
    
    weekDict[day] = sleep
    
    print("")
}

print(weekQualityResults.startMenu)

getSleepInfo(day: "MONDAY")
getSleepInfo(day: "TUESDAY")
getSleepInfo(day: "WEDNESDAY")
getSleepInfo(day: "THURSDAY")
getSleepInfo(day: "FRIDAY")
getSleepInfo(day: "SATURDAY")
getSleepInfo(day: "SUNDAY")

let totalHoursWeekly = weekDict["MONDAY"]!.hoursOfSleep + weekDict["TUESDAY"]!.hoursOfSleep + weekDict["WEDNESDAY"]!.hoursOfSleep + weekDict["THURSDAY"]!.hoursOfSleep + weekDict["FRIDAY"]!.hoursOfSleep + weekDict["SATURDAY"]!.hoursOfSleep + weekDict["SUNDAY"]!.hoursOfSleep

let sleepQualityWeekly = (weekDict["MONDAY"]!.sleepQuality + weekDict["TUESDAY"]!.sleepQuality + weekDict["WEDNESDAY"]!.sleepQuality + weekDict["THURSDAY"]!.sleepQuality + weekDict["FRIDAY"]!.sleepQuality + weekDict["SATURDAY"]!.sleepQuality + weekDict["SUNDAY"]!.sleepQuality) / 7


print(weekQualityResults.resultsTitle)

print("- Hours slept this week : \(totalHoursWeekly)")
print("- Average hours per night : \(totalHoursWeekly / 7)")
if (totalHoursWeekly < 49) {
    print("- You slept \(49 - totalHoursWeekly) hours less than the minumum recommended for an average adult")
} else {
    print("- You slept \(totalHoursWeekly - 49) hours more than the minimum recommended for an average adult.")
}

switch sleepQualityWeekly {
    case 1:
        print (weekQualityResults.resultQuality1)
    case 2:
        print (weekQualityResults.resultQuality2)
    case 3:
        print (weekQualityResults.resultQuality3)
    case 4:
        print (weekQualityResults.resultQuality4)
    case 5:
        print (weekQualityResults.resultQuality5)
    default:
        break
}
