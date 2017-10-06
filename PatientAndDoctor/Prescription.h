//
//  Prescription.h
//  PatientAndDoctor
//
//  Created by Olga on 10/5/17.
//  Copyright © 2017 Olga. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;
@class Patient;

@interface Prescription : NSObject

@property NSString *medication;
@property NSString *patientName;

-(instancetype)initWithPatientName:(NSString *)patientName andMedication:(NSString *)medication;

@end
