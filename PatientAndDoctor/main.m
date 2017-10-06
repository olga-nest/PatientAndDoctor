#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
        Patient *patient = [[Patient alloc]initWithName:@"Steve" andAge:100 andHasValidHealthCard:YES andSymptoms:@"insomnia"];
        Doctor *doctor = [[Doctor alloc]initWithName:@"Carl" andSpecialization:@"PT"];
        Patient *newPatient = [[Patient alloc]initWithName:@"Mindy" andAge:90 andHasValidHealthCard:YES andSymptoms:@"headache"];
        
        [patient visitDoctor:doctor];
        [patient requestMedication:doctor];
        
        [newPatient visitDoctor:doctor];
        [newPatient requestMedication:doctor];
        
        
    }
    return 0;
}
