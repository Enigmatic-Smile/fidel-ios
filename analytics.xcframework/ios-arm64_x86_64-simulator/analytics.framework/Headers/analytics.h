#import <Foundation/NSArray.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSError.h>
#import <Foundation/NSObject.h>
#import <Foundation/NSSet.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>

@class AnalyticsSdkDetails, NSUUID, NSUserDefaults, AnalyticsAnalyticsValueBoolean, AnalyticsAnalyticsValueDouble, AnalyticsAnalyticsValueInt, AnalyticsAnalyticsValueString, AnalyticsKotlinEnumCompanion, AnalyticsKotlinEnum<E>, AnalyticsHttpHeader, AnalyticsKotlinArray<T>;

@protocol AnalyticsAnalyticsValue, AnalyticsPlatform, AnalyticsReadOnlyRepository, AnalyticsRepository, AnalyticsKotlinComparable, AnalyticsKotlinIterator;

NS_ASSUME_NONNULL_BEGIN
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunknown-warning-option"
#pragma clang diagnostic ignored "-Wincompatible-property-type"
#pragma clang diagnostic ignored "-Wnullability"

#pragma push_macro("_Nullable_result")
#if !__has_feature(nullability_nullable_result)
#undef _Nullable_result
#define _Nullable_result _Nullable
#endif

__attribute__((swift_name("KotlinBase")))
@interface AnalyticsBase : NSObject
- (instancetype)init __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
+ (void)initialize __attribute__((objc_requires_super));
@end

@interface AnalyticsBase (AnalyticsBaseCopying) <NSCopying>
@end

__attribute__((swift_name("KotlinMutableSet")))
@interface AnalyticsMutableSet<ObjectType> : NSMutableSet<ObjectType>
@end

__attribute__((swift_name("KotlinMutableDictionary")))
@interface AnalyticsMutableDictionary<KeyType, ObjectType> : NSMutableDictionary<KeyType, ObjectType>
@end

@interface NSError (NSErrorAnalyticsKotlinException)
@property (readonly) id _Nullable kotlinException;
@end

__attribute__((swift_name("KotlinNumber")))
@interface AnalyticsNumber : NSNumber
- (instancetype)initWithChar:(char)value __attribute__((unavailable));
- (instancetype)initWithUnsignedChar:(unsigned char)value __attribute__((unavailable));
- (instancetype)initWithShort:(short)value __attribute__((unavailable));
- (instancetype)initWithUnsignedShort:(unsigned short)value __attribute__((unavailable));
- (instancetype)initWithInt:(int)value __attribute__((unavailable));
- (instancetype)initWithUnsignedInt:(unsigned int)value __attribute__((unavailable));
- (instancetype)initWithLong:(long)value __attribute__((unavailable));
- (instancetype)initWithUnsignedLong:(unsigned long)value __attribute__((unavailable));
- (instancetype)initWithLongLong:(long long)value __attribute__((unavailable));
- (instancetype)initWithUnsignedLongLong:(unsigned long long)value __attribute__((unavailable));
- (instancetype)initWithFloat:(float)value __attribute__((unavailable));
- (instancetype)initWithDouble:(double)value __attribute__((unavailable));
- (instancetype)initWithBool:(BOOL)value __attribute__((unavailable));
- (instancetype)initWithInteger:(NSInteger)value __attribute__((unavailable));
- (instancetype)initWithUnsignedInteger:(NSUInteger)value __attribute__((unavailable));
+ (instancetype)numberWithChar:(char)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedChar:(unsigned char)value __attribute__((unavailable));
+ (instancetype)numberWithShort:(short)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedShort:(unsigned short)value __attribute__((unavailable));
+ (instancetype)numberWithInt:(int)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedInt:(unsigned int)value __attribute__((unavailable));
+ (instancetype)numberWithLong:(long)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedLong:(unsigned long)value __attribute__((unavailable));
+ (instancetype)numberWithLongLong:(long long)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedLongLong:(unsigned long long)value __attribute__((unavailable));
+ (instancetype)numberWithFloat:(float)value __attribute__((unavailable));
+ (instancetype)numberWithDouble:(double)value __attribute__((unavailable));
+ (instancetype)numberWithBool:(BOOL)value __attribute__((unavailable));
+ (instancetype)numberWithInteger:(NSInteger)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedInteger:(NSUInteger)value __attribute__((unavailable));
@end

__attribute__((swift_name("KotlinByte")))
@interface AnalyticsByte : AnalyticsNumber
- (instancetype)initWithChar:(char)value;
+ (instancetype)numberWithChar:(char)value;
@end

__attribute__((swift_name("KotlinUByte")))
@interface AnalyticsUByte : AnalyticsNumber
- (instancetype)initWithUnsignedChar:(unsigned char)value;
+ (instancetype)numberWithUnsignedChar:(unsigned char)value;
@end

__attribute__((swift_name("KotlinShort")))
@interface AnalyticsShort : AnalyticsNumber
- (instancetype)initWithShort:(short)value;
+ (instancetype)numberWithShort:(short)value;
@end

__attribute__((swift_name("KotlinUShort")))
@interface AnalyticsUShort : AnalyticsNumber
- (instancetype)initWithUnsignedShort:(unsigned short)value;
+ (instancetype)numberWithUnsignedShort:(unsigned short)value;
@end

__attribute__((swift_name("KotlinInt")))
@interface AnalyticsInt : AnalyticsNumber
- (instancetype)initWithInt:(int)value;
+ (instancetype)numberWithInt:(int)value;
@end

__attribute__((swift_name("KotlinUInt")))
@interface AnalyticsUInt : AnalyticsNumber
- (instancetype)initWithUnsignedInt:(unsigned int)value;
+ (instancetype)numberWithUnsignedInt:(unsigned int)value;
@end

__attribute__((swift_name("KotlinLong")))
@interface AnalyticsLong : AnalyticsNumber
- (instancetype)initWithLongLong:(long long)value;
+ (instancetype)numberWithLongLong:(long long)value;
@end

__attribute__((swift_name("KotlinULong")))
@interface AnalyticsULong : AnalyticsNumber
- (instancetype)initWithUnsignedLongLong:(unsigned long long)value;
+ (instancetype)numberWithUnsignedLongLong:(unsigned long long)value;
@end

__attribute__((swift_name("KotlinFloat")))
@interface AnalyticsFloat : AnalyticsNumber
- (instancetype)initWithFloat:(float)value;
+ (instancetype)numberWithFloat:(float)value;
@end

__attribute__((swift_name("KotlinDouble")))
@interface AnalyticsDouble : AnalyticsNumber
- (instancetype)initWithDouble:(double)value;
+ (instancetype)numberWithDouble:(double)value;
@end

__attribute__((swift_name("KotlinBoolean")))
@interface AnalyticsBoolean : AnalyticsNumber
- (instancetype)initWithBool:(BOOL)value;
+ (instancetype)numberWithBool:(BOOL)value;
@end

__attribute__((swift_name("Analytics")))
@interface AnalyticsAnalytics : AnalyticsBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)identifyDataSourceAnalyticsApiKey:(NSString *)analyticsApiKey sdkDetails:(AnalyticsSdkDetails *)sdkDetails __attribute__((swift_name("identifyDataSource(analyticsApiKey:sdkDetails:)")));
- (void)identifyMultiplatformDataSourceSdkDetails:(AnalyticsSdkDetails *)sdkDetails __attribute__((swift_name("identifyMultiplatformDataSource(sdkDetails:)")));
- (void)identifyUserUserId:(NSString *)userId __attribute__((swift_name("identifyUser(userId:)")));
- (void)trackEvent:(NSString *)event properties:(NSDictionary<NSString *, id<AnalyticsAnalyticsValue>> * _Nullable)properties __attribute__((swift_name("track(event:properties:)")));
@end

__attribute__((swift_name("Platform")))
@protocol AnalyticsPlatform
@required
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("IOSPlatform")))
@interface AnalyticsIOSPlatform : AnalyticsBase <AnalyticsPlatform>
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("IosUUIDFactory")))
@interface AnalyticsIosUUIDFactory : AnalyticsBase
- (instancetype)initWithUuid:(NSUUID *)uuid __attribute__((swift_name("init(uuid:)"))) __attribute__((objc_designated_initializer));
- (NSString *)makeUUID __attribute__((swift_name("makeUUID()")));
@end

__attribute__((swift_name("ReadOnlyRepository")))
@protocol AnalyticsReadOnlyRepository
@required
- (id _Nullable)getData:(id _Nullable)data __attribute__((swift_name("get(data:)")));
@end

__attribute__((swift_name("Repository")))
@protocol AnalyticsRepository <AnalyticsReadOnlyRepository>
@required
- (void)setKey:(id _Nullable)key value:(id _Nullable)value __attribute__((swift_name("set(key:value:)")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NSUserDefaultsRepository")))
@interface AnalyticsNSUserDefaultsRepository : AnalyticsBase <AnalyticsRepository>
- (instancetype)initWithUserDefaults:(NSUserDefaults *)userDefaults __attribute__((swift_name("init(userDefaults:)"))) __attribute__((objc_designated_initializer));
- (NSString * _Nullable)getData:(NSString *)data __attribute__((swift_name("get(data:)")));
- (void)setKey:(NSString *)key value:(NSString *)value __attribute__((swift_name("set(key:value:)")));
@property (readonly) NSUserDefaults *userDefaults __attribute__((swift_name("userDefaults")));
@end

__attribute__((swift_name("AnalyticsValue")))
@protocol AnalyticsAnalyticsValue
@required
@property (readonly) NSString *jsonValue __attribute__((swift_name("jsonValue")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AnalyticsValueBoolean")))
@interface AnalyticsAnalyticsValueBoolean : AnalyticsBase <AnalyticsAnalyticsValue>
- (instancetype)initWithValue:(BOOL)value __attribute__((swift_name("init(value:)"))) __attribute__((objc_designated_initializer));
- (AnalyticsAnalyticsValueBoolean *)doCopyValue:(BOOL)value __attribute__((swift_name("doCopy(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) BOOL value __attribute__((swift_name("value")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AnalyticsValueDouble")))
@interface AnalyticsAnalyticsValueDouble : AnalyticsBase <AnalyticsAnalyticsValue>
- (instancetype)initWithValue:(double)value __attribute__((swift_name("init(value:)"))) __attribute__((objc_designated_initializer));
- (AnalyticsAnalyticsValueDouble *)doCopyValue:(double)value __attribute__((swift_name("doCopy(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) double value __attribute__((swift_name("value")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AnalyticsValueInt")))
@interface AnalyticsAnalyticsValueInt : AnalyticsBase <AnalyticsAnalyticsValue>
- (instancetype)initWithValue:(int32_t)value __attribute__((swift_name("init(value:)"))) __attribute__((objc_designated_initializer));
- (AnalyticsAnalyticsValueInt *)doCopyValue:(int32_t)value __attribute__((swift_name("doCopy(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t value __attribute__((swift_name("value")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AnalyticsValueString")))
@interface AnalyticsAnalyticsValueString : AnalyticsBase <AnalyticsAnalyticsValue>
- (instancetype)initWithValue:(NSString *)value __attribute__((swift_name("init(value:)"))) __attribute__((objc_designated_initializer));
- (AnalyticsAnalyticsValueString *)doCopyValue:(NSString *)value __attribute__((swift_name("doCopy(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *value __attribute__((swift_name("value")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SdkDetails")))
@interface AnalyticsSdkDetails : AnalyticsBase
- (instancetype)initWithName:(NSString *)name version:(NSString *)version __attribute__((swift_name("init(name:version:)"))) __attribute__((objc_designated_initializer));
- (AnalyticsSdkDetails *)doCopyName:(NSString *)name version:(NSString *)version __attribute__((swift_name("doCopy(name:version:)")));
- (BOOL)equalsOther:(id _Nullable)other __attribute__((swift_name("equals(other:)")));
- (int32_t)hashCode __attribute__((swift_name("hashCode()")));
- (NSString *)toString __attribute__((swift_name("toString()")));
@property (readonly) NSString *json __attribute__((swift_name("json")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@property (readonly) NSString *version __attribute__((swift_name("version")));
@end

__attribute__((swift_name("KotlinComparable")))
@protocol AnalyticsKotlinComparable
@required
- (int32_t)compareToOther:(id _Nullable)other __attribute__((swift_name("compareTo(other:)")));
@end

__attribute__((swift_name("KotlinEnum")))
@interface AnalyticsKotlinEnum<E> : AnalyticsBase <AnalyticsKotlinComparable>
- (instancetype)initWithName:(NSString *)name ordinal:(int32_t)ordinal __attribute__((swift_name("init(name:ordinal:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) AnalyticsKotlinEnumCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)compareToOther:(E)other __attribute__((swift_name("compareTo(other:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@property (readonly) int32_t ordinal __attribute__((swift_name("ordinal")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("HttpHeader")))
@interface AnalyticsHttpHeader : AnalyticsKotlinEnum<AnalyticsHttpHeader *>
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (instancetype)initWithName:(NSString *)name ordinal:(int32_t)ordinal __attribute__((swift_name("init(name:ordinal:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
@property (class, readonly) AnalyticsHttpHeader *contentType __attribute__((swift_name("contentType")));
@property (class, readonly) AnalyticsHttpHeader *authorization __attribute__((swift_name("authorization")));
+ (AnalyticsKotlinArray<AnalyticsHttpHeader *> *)values __attribute__((swift_name("values()")));
@property (class, readonly) NSArray<AnalyticsHttpHeader *> *entries __attribute__((swift_name("entries")));
@property (readonly) NSString *key __attribute__((swift_name("key")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Platform_iosKt")))
@interface AnalyticsPlatform_iosKt : AnalyticsBase
+ (id<AnalyticsPlatform>)getPlatform __attribute__((swift_name("getPlatform()")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("LocalStorageRepositoryKt")))
@interface AnalyticsLocalStorageRepositoryKt : AnalyticsBase
+ (id<AnalyticsRepository>)getLocalStorageRepository __attribute__((swift_name("getLocalStorageRepository()")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AnalyticsValueMapToJsonKt")))
@interface AnalyticsAnalyticsValueMapToJsonKt : AnalyticsBase
+ (NSString *)json:(NSDictionary<NSString *, id<AnalyticsAnalyticsValue>> *)receiver __attribute__((swift_name("json(_:)")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinEnumCompanion")))
@interface AnalyticsKotlinEnumCompanion : AnalyticsBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) AnalyticsKotlinEnumCompanion *shared __attribute__((swift_name("shared")));
@end

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinArray")))
@interface AnalyticsKotlinArray<T> : AnalyticsBase
+ (instancetype)arrayWithSize:(int32_t)size init:(T _Nullable (^)(AnalyticsInt *))init __attribute__((swift_name("init(size:init:)")));
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (T _Nullable)getIndex:(int32_t)index __attribute__((swift_name("get(index:)")));
- (id<AnalyticsKotlinIterator>)iterator __attribute__((swift_name("iterator()")));
- (void)setIndex:(int32_t)index value:(T _Nullable)value __attribute__((swift_name("set(index:value:)")));
@property (readonly) int32_t size __attribute__((swift_name("size")));
@end

__attribute__((swift_name("KotlinIterator")))
@protocol AnalyticsKotlinIterator
@required
- (BOOL)hasNext __attribute__((swift_name("hasNext()")));
- (id _Nullable)next __attribute__((swift_name("next()")));
@end

#pragma pop_macro("_Nullable_result")
#pragma clang diagnostic pop
NS_ASSUME_NONNULL_END
