//
//  Capital.m
//  CapitalsCities
//
//  Created by Misael Landero on 02/01/22.
//

#import "Capital.h"

@implementation Capital

-(id)initWithInfo:(NSString *)info title:(NSString *)aTitle cordinate:(CLLocationCoordinate2D)aCordinate{
    self  = [super init];
    
    if (self){
        _title = aTitle;
        _coordinate = aCordinate;
        _subtitle = info;
        
    }
    
    return self;
}


@end
