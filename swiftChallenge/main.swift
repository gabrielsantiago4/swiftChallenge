//
//  main.swift
//  swiftChallenge
//
//  Created by Gabriel Santiago on 10/03/22.
//

import Foundation

//segunda
print("Em média, quantas horas você dormiu na noite de Segunda? ")
let tempSegStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiSegStr = readLine()!

//unwrapp e typecast segunda
guard let tempSegInt = Int(tempSegStr), let qualiSegInt = Int(qualiSegStr) else {
    exit(0)
}

//terça
print("Em média, quantas horas você dormiu na noite de terça? ")
let tempTerStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiTerStr = readLine()!

//unwrapp e typecast terça
guard let tempTerInt = Int(tempTerStr), let qualiTerInt = Int(qualiTerStr) else {
    exit(0)
}

//quarta
print("Em média, quantas horas você dormiu na noite de Quarta? ")
let tempQuaStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiQuaStr = readLine()!

//unwrapp e typecast quarta
guard let tempQuaInt = Int(tempQuaStr), let qualiQuaInt = Int(qualiQuaStr) else {
    exit(0)
}

//quinta
print("Em média, quantas horas você dormiu na noite de Quinta? ")
let tempQuiStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiQuiStr = readLine()!

//unwrapp e typecast quinta
guard let tempQuiInt = Int(tempQuiStr), let qualiQuiInt = Int(qualiQuiStr) else {
    exit(0)
}

//sexta
print("Em média, quantas horas você dormiu na noite de Sexta? ")
let tempSexStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiSexStr = readLine()!

//unwrapp e typecast Sexta
guard let tempSexInt = Int(tempSexStr), let qualiSexInt = Int(qualiSexStr) else {
    exit(0)
}

//sábado
print("Em média, quantas horas você dormiu na noite de Sábado? ")
let tempSabStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiSabStr = readLine()!

//unwrapp e typecast sábado
guard let tempSabInt = Int(tempSabStr), let qualiSabInt = Int(qualiSabStr) else {
    exit(0)
}

//domingo
print("Em média, quantas horas você dormiu na noite de Domingo? ")
let tempDomStr = readLine()!
print("Em uma escala de zero a cinco, como você avalia a qualidade desse sono?")
let qualiDomStr = readLine()!

//unwrapp e typecast domingo
guard let tempDomInt = Int(tempDomStr), let qualiDomInt = Int(qualiDomStr) else {
    exit(0)
}




// médias
let totalHorasSemana = (tempSegInt + tempTerInt + tempQuaInt + tempQuiInt + tempSegInt + tempSabInt + tempDomInt)
let mediaTempSemana = totalHorasSemana / 7
let mediaQualidadeSemana = (qualiSegInt + qualiTerInt + qualiQuaInt + qualiQuiInt + qualiSexInt + qualiSabInt + qualiDomInt) / 7

//saidas
print("\n\nAo longo dessa semana, você dormiu um total de \(totalHorasSemana) horas de sono, tendo uma média de sono de, aproximadamente, \(mediaTempSemana) por dia")
print("em média, seu sono apresentou uma nota \(mediaQualidadeSemana)")

    

