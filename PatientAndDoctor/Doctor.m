#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _allAcceptedPatients = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)acceptPatient: (Patient *) patient {
    
}


@end
