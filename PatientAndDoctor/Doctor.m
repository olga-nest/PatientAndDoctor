#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _allAcceptedPatients = [[NSMutableSet alloc]init];
    }
    return self;
}

//-(void)acceptPatient: (Patient *) patient {
//    
//}

- (void)prescribeMedication: (Patient *) patient {
    if ([patient.symptoms isEqual: @"insomnia"]) {
        NSLog(@"Here is your sleep pill");
    } else if ([patient.symptoms isEqual: @"headache"]) {
        NSLog(@"Here is your magic pill");
    } else {
        NSLog(@"You don't need a medication");
    }
}

@end
