// Solution.m

#import "Solution.h"

@interface A ()
@property (nonatomic, weak) B *b; // Changed to weak
@end

@implementation A
- (void)retainB:(B *)bObject {
    self.b = bObject; //Assign directly
}
@end

@interface B ()
@property (nonatomic, assign) A *a; // Changed to assign
@end

@implementation B
- (void)retainA:(A *)aObject {
    self.a = aObject; //Assign directly
}
@end
