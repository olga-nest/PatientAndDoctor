#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString)specialization;

@end
