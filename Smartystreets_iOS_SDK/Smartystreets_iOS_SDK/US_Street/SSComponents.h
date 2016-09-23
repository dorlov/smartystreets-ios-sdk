#import <Foundation/Foundation.h>

@interface SSComponents : NSObject

@property (readonly, nonatomic) NSString *urbanization;
@property (readonly, nonatomic) NSString *primaryNumber;
@property (readonly, nonatomic) NSString *streetName;
@property (readonly, nonatomic) NSString *streetPredirection;
@property (readonly, nonatomic) NSString *streetPostdirection;
@property (readonly, nonatomic) NSString *streetSuffix;
@property (readonly, nonatomic) NSString *secondaryNumber;
@property (readonly, nonatomic) NSString *secondaryDesignator;
@property (readonly, nonatomic) NSString *extraSecondaryNumber;
@property (readonly, nonatomic) NSString *extraSecondaryDesignator;
@property (readonly, nonatomic) NSString *pmbDesignator;
@property (readonly, nonatomic) NSString *pmbNumber;
@property (readonly, nonatomic) NSString *cityName;
@property (readonly, nonatomic) NSString *defaultCityName;
@property (readonly, nonatomic) NSString *state;
@property (readonly, nonatomic) NSString *zipCode;
@property (readonly, nonatomic) NSString *plus4Code;
@property (readonly, nonatomic) NSString *deliveryPoint;
@property (readonly, nonatomic) NSString *deliveryPointCheckDigit;

@end
