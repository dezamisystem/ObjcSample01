//
//  DebugLog.m
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import "DebugLog.h"

@implementation DebugLog

/// ログ：デバグ
/// @param tag タグ
/// @param comment コメント
+ (void)debug:(NSString*)tag comment:(NSString*)comment
{
#ifdef DEBUG
	NSLog(@"D: %@ : %@",tag, comment);
#endif
}

/// ログ：インフォ
/// @param tag タグ
/// @param comment コメント
+ (void)info:(NSString*)tag comment:(NSString*)comment
{
#ifdef DEBUG
	NSLog(@"I: %@ : %@",tag, comment);
#endif
}

/// ログ：ワーニング
/// @param tag タグ
/// @param comment コメント
+ (void)warning:(NSString*)tag comment:(NSString*)comment
{
#ifdef DEBUG
	NSLog(@"W: %@ : %@",tag, comment);
#endif
}

/// ログ：エラー
/// @param tag タグ
/// @param comment コメント
+ (void)error:(NSString*)tag comment:(NSString*)comment
{
#ifdef DEBUG
	NSLog(@"E: %@ : %@",tag, comment);
#endif
}

@end
