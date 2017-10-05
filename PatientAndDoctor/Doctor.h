#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray<Patient *> *allAcceptedPatients;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization;

-(void)acceptPatient: (Patient *) patient;

@end
