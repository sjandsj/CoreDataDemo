//
//  Student+CoreDataProperties.swift
//  demoForCoreData
//
//  Created by Rails on 12/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var address: String?
    @NSManaged public var city: String?
    @NSManaged public var number: String?

}
