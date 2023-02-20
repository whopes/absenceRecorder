//
//  DivisionTests.swift
//  Absence RecorderTests
//
//  Created by Hopes, William (AMM) on 19/02/2023.
//

import XCTest
@testable import Absence_Recorder

class DivisionTests: XCTestCase {

    

    func testGetAbsenceForADivisionWithAnAbsenceOnThatDayReturnsAnAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 10000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }
}
