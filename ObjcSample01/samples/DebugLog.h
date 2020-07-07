//
//  DebugLog.h
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DebugLog : NSObject

void printLog(const char* funcName, NSString *format, ...);

@end
