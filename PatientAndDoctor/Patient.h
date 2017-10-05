#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic) int age;
@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;
- (void)askDoctorsName;
- (void)askDoctorsSpecialization;

@end
