#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)card andSymptoms:(NSString *)symptoms
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = card;
        _symptoms = symptoms;
        
    }
    return self;
}

- (void)visitDoctor: (Doctor *) doctor {
    if (self.hasValidHealthCard == YES) {
        self.acceptedByDoctor = YES;
        [doctor.allAcceptedPatients addObject:self];
        NSLog(@"%@ has a valid health card and is accepted by %@ %@", self.name, doctor.specialization, doctor.name);
    } else {
        self.acceptedByDoctor = NO;
        NSLog(@"%@ doesn't have a valid health card and is not accepted by %@ %@", self.name, doctor.specialization, doctor.name);
    }
}


-(void)requestMedication:(Doctor *)doctor {
    if ([doctor.allAcceptedPatients containsObject:self] == YES) {
        [doctor prescribeMedication:self];
    } else {
        NSLog(@"No medication for %@", self.name);
    }
}



@end
