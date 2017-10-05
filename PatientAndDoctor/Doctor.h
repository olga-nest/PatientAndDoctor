#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization;

-(void)acceptPatient: (Patient *) patient;

@end
