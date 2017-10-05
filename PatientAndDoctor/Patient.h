#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) int age;
@property (nonatomic) NSString *name;
@property BOOL hasValidHealthCard;
@property BOOL acceptedByDoctor;

- (instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)card;
- (void)visitDoctor: (Doctor *) doctor;
- (void)askDoctorsName;
- (void)askDoctorsSpecialization;

@end
