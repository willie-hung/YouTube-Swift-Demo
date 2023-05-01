//
//  UFCService.swift
//  UFCAthleteListDemo
//
//  Created by 洪崧傑 on 2023/4/7.
//

import Foundation

// We will hard code UFC athletes' data in this tutorial

class UFCService {
    func getAthletes() -> [Athlete] {
        return [
            Athlete(named: "JON JONES", description: "27-1-0", image: "1"),
            Athlete(named: "ALEXANDER VOLKANOVSKI", description: "25-2-0", image: "2"),
            Athlete(named: "ISLAM MAKHACHEV", description: "24-1-0", image: "3"),
            Athlete(named: "LEON EDWARDS", description: "21-3-0", image: "4"),
            Athlete(named: "ISRAEL ADESANYA", description: "23-2-0", image: "5"),
            Athlete(named: "ALEX PEREIRA", description: "7-1-0", image: "6"),
            Athlete(named: "ALJAMAIN STERLING", description: "22-3-0", image: "7"),
            Athlete(named: "KAMARU USMAN", description: "20-3-0", image: "8"),
            Athlete(named: "CHARLES OLIVEIRA", description: "33-9-0", image: "9"),
            Athlete(named: "BRANDON MORENO", description: "21-6-2", image: "10"),
            Athlete(named: "JIŘÍ PROCHÁZKA", description: "29-3-1", image: "11"),
            Athlete(named: "DUSTIN POIRIER", description: "29-7-0", image: "12"),
            Athlete(named: "JAMAHAL HILL", description: "12-1-0", image: "13"),
            Athlete(named: "ROBERT WHITTAKER", description: "25-6-0", image: "14"),
            Athlete(named: "MAX HOLLOWAY", description: "23-7-0", image: "15")
        ]
    }
}
