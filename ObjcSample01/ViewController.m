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

    printLog(__PRETTY_FUNCTION__, @"Hoge");
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.

    printLog(__PRETTY_FUNCTION__, @"Hogege");

//    [self loadFromDocument];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
    printLog(__PRETTY_FUNCTION__, @"Hogegegeg");
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
    printLog(__PRETTY_FUNCTION__, @"Hogehoge");
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
	
    printLog(__PRETTY_FUNCTION__, @"Geogeo");
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
    printLog(__PRETTY_FUNCTION__, @"Gegegege");
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
	
    printLog(__PRETTY_FUNCTION__, @"");
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	
    printLog(__PRETTY_FUNCTION__, @"");
}

- (void)loadFromDocument
{
    // /Documentのパスの取得
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* path = paths[0];
    printLog(__PRETTY_FUNCTION__, @"PATH=%@", path);
    // ファイル名の作成
    NSString *filename = [path stringByAppendingPathComponent:@"sample.txt"];
    printLog(__PRETTY_FUNCTION__, @"Filename=%@", filename);
    // ファイルの存在確認
    NSFileManager* fm = [NSFileManager defaultManager];
    if (![fm fileExistsAtPath:path]) {
        // NSStringオブジェクト
        NSString *sample = @"Hello, World";
        // ファイルへの保存
        if (![sample writeToFile:filename atomically:YES encoding:NSUTF8StringEncoding error:nil]) {
            printLog(__PRETTY_FUNCTION__, @"Failed to write to file");
            return;
        }
    }
    // ファルからの読込み
    NSString *content = [NSString stringWithContentsOfFile:filename encoding:NSUTF8StringEncoding error:nil];
    if (content == nil) {
        printLog(__PRETTY_FUNCTION__, @"Error");
    }
    else {
        printLog(__PRETTY_FUNCTION__, @"Content: %@", content);
    }
}

@end
