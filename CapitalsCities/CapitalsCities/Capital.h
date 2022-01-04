//
//  Capital.h
//  CapitalsCities
//
//  Created by Misael Landero on 02/01/22.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Capital : NSObject<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

- (id)initWithInfo:(NSString *)info title:(NSString *)aTitle cordinate:(CLLocationCoordinate2D)aCordinate;

@end

NS_ASSUME_NONNULL_END
