//
//  DebugLog.m
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import "DebugLog.h"

@implementation DebugLog

void printLog(const char* funcName, NSString *format, ...)
{
    va_list args;
    va_start(args, format);
    format = [format stringByAppendingString:@"\n"];
    NSString* message = [[NSString alloc] initWithFormat:[NSString stringWithFormat:@"%@",format] arguments:args];
    va_end(args);
    printf("D: %s; %s", funcName, [message UTF8String]);
}

@end
