#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)card
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = card;
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

-(void)askDoctorsName {
    
}

-(void)askDoctorsSpecialization {
    
}


@end
