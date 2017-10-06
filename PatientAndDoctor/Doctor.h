#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableSet<Patient *> *allAcceptedPatients;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization;

//-(void)acceptPatient: (Patient *) patient;
-(void)prescribeMedication: (Patient *) patient;

@end
