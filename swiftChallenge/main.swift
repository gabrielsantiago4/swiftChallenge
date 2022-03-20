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
    
    guard let hoursOfSleep = Int(hours), let sleepQuality = Int(quality) else {
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
| from 1 to 5, of how well you consider you're feeling after waking up.                                                |
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

- According to our evaluation, your sleep quality over this week can be considered very poor, and may be causing serious harm to your health.
  Your sleep schedule must be urgently changed. Medical literature strongly recommends that an adult should sleep at least 49 hours per week,
  and disrespecting this minimum amount can lead to all kinds of health issues. Visit a doctor as soon as possible, and you should consider
  checking the following materials:


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
        print ("""

- Overall, your sleep quality can be considered bad, either because of sleep deprivation or improper sleep hygiene. It is recommended
  that you consider visiting a doctor to investigate if you're suffering from any kind of disorder. In addition, you should check the
  following links, containing tips for good sleep practices and useful information that might help you to improve your quality of life:


 _________________________________________________________________________________________
 |                              What is Sleep Hygiene?:                                  |
 |_______________________________________________________________________________________|
 |                   https://www.sleepfoundation.org/sleep-hygiene                       |
 -----------------------------------------------------------------------------------------
 _________________________________________________________________________________________
 |                         How To Determine Poor Sleep Quality:                          |
 |_______________________________________________________________________________________|
 |   https://www.sleepfoundation.org/sleep-hygiene/how-to-determine-poor-quality-sleep   |
 -----------------------------------------------------------------------------------------

""")
        
    case 3:
        print ("""

- Over this week, even though your sleep quality can't be considered bad, it is still not providing you the ideal rest you need daily. Waking
  up tired or sleepy can be a strong sign that you're facing problems resting over the night, and they are probably shortening important stages
  of your sleep cyles. These cycles directly affect the quality of your sleeping hours. You can learn more about them and how to improve their 
  quality in the following articles:

 _________________________________________________________________________________________
 |                                The 4 Stages of Sleep:                                 |
 |_______________________________________________________________________________________|
 |           https://www.verywellhealth.com/the-four-stages-of-sleep-2795920             |
 -----------------------------------------------------------------------------------------
 _________________________________________________________________________________________
 |                             5 Ways to Get More REM Sleep:                             |
 |_______________________________________________________________________________________|
 |       https://www.sleepfoundation.org/stages-of-sleep/how-to-get-more-rem-sleep       |
 -----------------------------------------------------------------------------------------

""")
    case 4:
        print ("""

- Well done! You had a good sleep schedule over this week, and your sleep quality is close to what is considered the ideal for an average adult.
  The benefits good sleep can bring severe changes in terms of quality of life, being an essential practice when it comes to health maintenance.
  If you want to enhance even further the quality of your sleeping hours, you should try checking the following links :
  
  
 _________________________________________________________________________________________
 |                      17 Proven Tips to Sleep Better at Night:                         |
 |_______________________________________________________________________________________|
 |             https://www.healthline.com/nutrition/17-tips-to-sleep-better              |
 -----------------------------------------------------------------------------------------
 _________________________________________________________________________________________
 |                        Surprising Reasons to Get More Sleep:                          |
 |_______________________________________________________________________________________|
 |               https://www.webmd.com/sleep-disorders/benefits-sleep-more               |
 -----------------------------------------------------------------------------------------

""")
    case 5:
        print("Congratulations! ")
    default:
        break
}
