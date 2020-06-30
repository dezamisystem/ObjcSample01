//
//  ViewController.m
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import "ViewController.h"

#import "DebugLog.h"

#define TAG @"ViewController"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
	[super loadView];

    DebugLog(@"%@: loadView",TAG);
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
    DebugLog(@"%@: viewDidLoad",TAG);

    [self loadFromDocument];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
    DebugLog(@"%@: viewWillAppear",TAG);
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
    DebugLog(@"%@: viewWillLayoutSubviews",TAG);
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
	
    DebugLog(@"%@: viewDidLayoutSubviews",TAG);
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
    DebugLog(@"%@: viewDidAppear",TAG);
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
	
    DebugLog(@"%@: viewWillDisappear",TAG);
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	
    DebugLog(@"%@: viewDidDisappear",TAG);
}

- (void)loadFromDocument
{
    // /Documentのパスの取得
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* path = paths[0];
    DebugLog(@"%@ PATH = %@", TAG, path);
    // ファイル名の作成
    NSString *filename = [path stringByAppendingPathComponent:@"sample.txt"];
    DebugLog(@"%@ Filename = %@", TAG, filename);
    // ファイルの存在確認
    NSFileManager* fm = [NSFileManager defaultManager];
    if (![fm fileExistsAtPath:path]) {
        // NSStringオブジェクト
        NSString *sample = @"Hello, World";
        // ファイルへの保存
        if (![sample writeToFile:filename atomically:YES encoding:NSUTF8StringEncoding error:nil]) {
            DebugLog(@"%@ Failed to write to file", TAG);
            return;
        }
    }
    // ファルからの読込み
    NSString *content = [NSString stringWithContentsOfFile:filename encoding:NSUTF8StringEncoding error:nil];
    if (content == nil) {
        DebugLog(@"%@ Error:", TAG);
    }
    else {
        DebugLog(@"%@ Content: %@", TAG, content);
    }
}

@end
