#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) int age;
@property (nonatomic) NSString *name;
@property BOOL hasValidHealthCard;
@property BOOL acceptedByDoctor;
@property (nonatomic) NSString *symptoms;

- (instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)card andSymptoms:(NSString *)symptoms;
- (void)visitDoctor: (Doctor *) doctor;
- (void)requestMedication: (Doctor *) doctor;

@end
