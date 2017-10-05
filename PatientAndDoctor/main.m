#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
        Patient *patient = [[Patient alloc]initWithName:@"Steve" andAge:100 andHasValidHealthCard:NO];
        Doctor *doctor = [[Doctor alloc]initWithName:@"Carl" andSpecialization:@"PT"];
        
        [patient visitDoctor:doctor];
        
        
        
    }
    return 0;
}
