#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

-(void)askDoctorsName {
    
}

-(void)askDoctorsSpecialization {
    
}


@end
