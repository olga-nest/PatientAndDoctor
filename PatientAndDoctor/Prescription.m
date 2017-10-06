//
//  Prescription.m
//  PatientAndDoctor
//
//  Created by Olga on 10/5/17.
//  Copyright © 2017 Olga. All rights reserved.
//

#import "Prescription.h"
#import "Patient.h"
#import "Doctor.h"

@implementation Prescription

-(instancetype)initWithPatientName:(NSString *)patientName andMedication:(NSString *)medication {
  
    self = [super init];
    if (self) {
        _patientName = patientName;
        _medication = medication;
    }
    return self;
}

@end
