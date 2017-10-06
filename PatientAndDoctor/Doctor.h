#import <Foundation/Foundation.h>

@class Patient;
@class Prescription;

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableSet<Patient *> *allAcceptedPatients;
@property (nonatomic) NSMutableArray *allPrescriptions;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString*)specialization;

//-(void)acceptPatient: (Patient *) patient;
-(void)prescribeMedication: (Patient *) patient;

@end
