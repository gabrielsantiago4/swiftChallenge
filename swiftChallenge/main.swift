//
//  main.swift
//  swiftChallenge
//
//  Created by Gabriel Santiago on 10/03/22.
//

import Foundation


print("\nSeja bem vindo! O xxxxxx funciona como uma calculadora de horas de sono, onde você pode acompanhar um panorama geral do tempo e da qualidade das horas dormidas. Ela funciona de maneira simples: para cada dia da semana, você deve inserir uma quantidade aproximada das horas que dormiu naquela noite e em seguida avaliar a qualidade do sono em uma nota dentro de uma escala de 0 a 5.  ")

print("\n\nVamos começar?\n\n\n")


//let qualitempo : (Int, Int) = (7, 5)
//let Dicionario = ["Segunda": qualitempo ]


func getSleepQuality(day: String) {

    //Print dia
    //pego tempo do sono
    //pega o tempo da qualidade
    //faz o cast
    //salva no dict
    
    print(day)
    
    
}
    


//segunda
print("SEGUNDA")
print("Tempo de sono: ")
let tempSegStr = readLine()!
print("Qualidade: ")
let qualiSegStr = readLine()!

//unwrapp e typecast segunda
guard let tempSegInt = Int(tempSegStr), let qualiSegInt = Int(qualiSegStr) else {
    exit(0)
}

//terça
print("\nTERÇA")
print("Temo de sono:")
let tempTerStr = readLine()!
print("Qualidade: ")
let qualiTerStr = readLine()!

//unwrapp e typecast terça
guard let tempTerInt = Int(tempTerStr), let qualiTerInt = Int(qualiTerStr) else {
    exit(0)
}

//quarta
print("\nQUARTA")
print("Tempo de sono: ")
let tempQuaStr = readLine()!
print("Qualidade: ")
let qualiQuaStr = readLine()!

//unwrapp e typecast quarta
guard let tempQuaInt = Int(tempQuaStr), let qualiQuaInt = Int(qualiQuaStr) else {
    exit(0)
}

//quinta
print("\nQUINTA")
print("Tempo de sono: ")
let tempQuiStr = readLine()!
print("Qualidade: ")
let qualiQuiStr = readLine()!

//unwrapp e typecast quinta
guard let tempQuiInt = Int(tempQuiStr), let qualiQuiInt = Int(qualiQuiStr) else {
    exit(0)
}

//sexta
print("\nSEXTA")
print("Tempo de sono: ")
let tempSexStr = readLine()!
print("Qualidade: ")
let qualiSexStr = readLine()!

//unwrapp e typecast Sexta
guard let tempSexInt = Int(tempSexStr), let qualiSexInt = Int(qualiSexStr) else {
    exit(0)
}

//sábado
print("\nSÁBADO")
print("Tempo de sono: ")
let tempSabStr = readLine()!
print("Qualidade: ")
let qualiSabStr = readLine()!

//unwrapp e typecast sábado
guard let tempSabInt = Int(tempSabStr), let qualiSabInt = Int(qualiSabStr) else {
    exit(0)
}

//domingo
print("\nDOMINGO")
print("Tempo de sono: ")
let tempDomStr = readLine()!
print("Qualidade: ")
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
print("\n\nAo longo dessa semana, você dormiu um total de \(totalHorasSemana) horas, tendo uma média de, aproximadamente, \(mediaTempSemana) horas dormidas por noite")
print("Seu sono apresentou uma \(mediaQualidadeSemana) de qualidade")

    

