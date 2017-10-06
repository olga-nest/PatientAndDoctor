#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

static NSMutableArray *allPrescriptions;


@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _allAcceptedPatients = [[NSMutableSet alloc]init];
        allPrescriptions = [[NSMutableArray alloc]init];
    }
    return self;
}

//-(void)acceptPatient: (Patient *) patient {
//    
//}

- (void)prescribeMedication: (Patient *) patient {
    if ([patient.symptoms isEqual: @"insomnia"]) {
        Prescription *prescription = [[Prescription alloc]initWithPatientName:patient.name andMedication:@"sleeping pill"];
        [allPrescriptions addObject:prescription];
        NSLog(@"%@ got %@", patient.name, prescription.medication);
        NSLog(@"Total prescriptions %lu", (unsigned long)[allPrescriptions count]);
    } else if ([patient.symptoms isEqual: @"headache"]) {
        Prescription *prescription = [[Prescription alloc]initWithPatientName:patient.name andMedication:@"magic pill"];
        [allPrescriptions addObject:prescription];
        NSLog(@"%@ got %@", patient.name, prescription.medication);
        NSLog(@"Total prescriptions %lu", (unsigned long)[allPrescriptions count]);
    } else {
        NSLog(@"You don't need a medication");
    }
}

@end
