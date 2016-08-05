//
//  MyAnnotation.m
//  WhereAmI
//
//  
//

#import "MyAnnotation.h"

@implementation MyAnnotation

- (NSString *)title {
    return @"您的位置!";
}
- (NSString *)subtitle {
    
    NSMutableString *ret = [NSMutableString new];
    if (_state)
        [ret appendString:_state];
    if (_city)
        [ret appendString:_city];
    if (_city && _state)
        [ret appendString:@", "];
    if (_streetAddress && (_city || _state || _zip))
        [ret appendString:@" • "];
    if (_streetAddress)
        [ret appendString:_streetAddress];
    if (_zip)
        [ret appendFormat:@", %@", _zip];
    
    return ret;
}


@end
