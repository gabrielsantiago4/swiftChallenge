//
//  main.swift
//  swiftChallenge
//
//  Created by Gabriel Santiago on 10/03/22.
//

import Foundation

var weekDict : [String : (hoursOfSleep : Int, sleepQuality : Int)] = [:]

func getSleepInfo (day : String) {
    
    var sleep : (Int, Int)
    
    print(day)
    print("Hours of sleep: ")
    let hours = readLine()!
    print("Quality score: ")
    let quality = readLine()!
    
    guard var hoursOfSleep = Int(hours), var sleepQuality = Int(quality) else {
        exit(0)
    }
    
    sleep.0 = hoursOfSleep
    sleep.1 = sleepQuality
    
    weekDict[day] = sleep
    
    print("")
}


print("""
________________________________________________________________________________________________________________________
|                                                   SLEEP TRACKER                                                      |
|______________________________________________________________________________________________________________________|
| Welcome to SleepTracker! This program works as a sleeping hours calculator, in which you can track more closely the  |
| overall quality of your sleep weekly. It works in a very straightforward and simple way: for each day in the week,   |
| you must insert an approximate amount of the hours you slept in the previous night, as well as a grade, in a scale   |
| from 0 to 5, of how well you consider you're feeling after waking up.                                                |
|                                                                                                                      |
| Shall we begin?                                                                                                      |
------------------------------------------------------------------------------------------------------------------------


""")

getSleepInfo(day: "MONDAY")
getSleepInfo(day: "TUESDAY")
getSleepInfo(day: "WEDNESDAY")
getSleepInfo(day: "THURSDAY")
getSleepInfo(day: "FRIDAY")
getSleepInfo(day: "SATURDAY")
getSleepInfo(day: "SUNDAY")

let totalHoursWeekly = weekDict["MONDAY"]!.hoursOfSleep + weekDict["TUESDAY"]!.hoursOfSleep + weekDict["WEDNESDAY"]!.hoursOfSleep + weekDict["THURSDAY"]!.hoursOfSleep + weekDict["FRIDAY"]!.hoursOfSleep + weekDict["SATURDAY"]!.hoursOfSleep + weekDict["SUNDAY"]!.hoursOfSleep

let sleepQualityWeekly = (weekDict["MONDAY"]!.sleepQuality + weekDict["TUESDAY"]!.sleepQuality + weekDict["WEDNESDAY"]!.sleepQuality + weekDict["THURSDAY"]!.sleepQuality + weekDict["FRIDAY"]!.sleepQuality + weekDict["SATURDAY"]!.sleepQuality + weekDict["SUNDAY"]!.sleepQuality) / 7


print("""

 ***********************
 * YOUR WEEKLY RESULTS *
 ***********************

""")
print("- Hours slept this week : \(totalHoursWeekly)")
print("- Average hours per night : \(totalHoursWeekly / 7)")
if (totalHoursWeekly < 49) {
    print("- You slept \(49 - totalHoursWeekly) hours less than the minumum recommended for an average adult")
} else {
    print("- You slept \(totalHoursWeekly - 49) hours more than the minimum recommended for an average adult.")
}

switch sleepQualityWeekly {
    case 1:
        print ("""

- According to your evaluation, your sleep quality over this week can be considered very poor, and your sleep schedule must be urgently changed.
  Medical literature strongly recommends that an adult should sleep at least 49 hours per week, and disrespecting this  minimum  amount  can
  lead to serious health issues. You should consider checking the following materials:


 _________________________________________________________________________________________
 |                  The Effects of Sleep Deprivation on Your Body:                       |
 |_______________________________________________________________________________________|
 | https://www.healthline.com/health/sleep-deprivation/effects-on-body#Respiratory-system|
 -----------------------------------------------------------------------------------------
 _________________________________________________________________________________________
 |                  Why Can't I Sleep? Reasons for Trouble Sleeping:                     |
 |_______________________________________________________________________________________|
 |   https://www.verywellmind.com/reasons-for-not-sleeping-well-and-how-to-fix-350760    |
 -----------------------------------------------------------------------------------------
 _________________________________________________________________________________________
 |              Poor Sleep Hygiene: Don't Let It Ruin Your Quality of Life               |
 |_______________________________________________________________________________________|
 |                 https://www.risescience.com/blog/poor-sleep-hygiene                   |
 -----------------------------------------------------------------------------------------


""")

    case 2:
        print("")
    case 3:
        print("")
    case 4:
        print("")
    case 5:
        print("")
    default:
        break
}
