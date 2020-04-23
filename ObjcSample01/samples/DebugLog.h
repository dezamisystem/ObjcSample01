//
//  DebugLog.h
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DebugLog : NSObject

+ (void)debug:(NSString*)tag comment:(NSString*)comment;

+ (void)info:(NSString*)tag comment:(NSString*)comment;

+ (void)warning:(NSString*)tag comment:(NSString*)comment;

+ (void)error:(NSString*)tag comment:(NSString*)comment;

@end

NS_ASSUME_NONNULL_END
