//
//  dataBaseHelper.swift
//  demoForCoreData
//
//  Created by Rails on 12/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DataBaseHelper {
    
    static var shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func save(object: [String: String]) {
       
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context) as! Student
      
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.number = object["number"]
        do {
            try context.save()
        } catch {
            print("Not Saveed")
        }
    }
    
    func getStudentData() -> [Student] {
        var student = [Student]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do{
            student = try context.fetch(fetchRequest) as! [Student]
        } catch {
            print("Cannot Get Data")
        }
        return student
    }
    
    func deleteData(index: Int) ->[Student] {
        var student = getStudentData()
        context.delete(student[index])
        student.remove(at: index)
        do {
            try context.save()
        } catch {
            print("Cannot Delete Data")
        }
        return student
    }
}
