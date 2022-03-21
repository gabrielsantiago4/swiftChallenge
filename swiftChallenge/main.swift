//
//  main.swift
//  swiftChallenge
//
//  Created by Gabriel Santiago on 10/03/22.
//

import Foundation

var weekDict : [String : (hoursOfSleep : Int, sleepQuality : Int)] = [:]
let weekQualityResults = QualityResults()

func getSleepInfo (day : String) {
    
    var sleep : (Int, Int)
    
    print(day)
    print("Hours of sleep: ")
    let hours = readLine()!
    print("Quality score: ")
    let quality = readLine()!
    
    guard let hoursOfSleep = Int(hours), let sleepQuality = Int(quality) else {
        exit(0)
    }

    sleep.0 = hoursOfSleep
    sleep.1 = sleepQuality
    
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
