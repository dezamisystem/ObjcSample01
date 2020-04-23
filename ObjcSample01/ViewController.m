//
//  ViewController.m
//  Copyright (c) 2020 東亜プリン秘密研究所. All rights reserved.
//

#import "ViewController.h"

#import "samples/DebugLog.h"

#define TAG @"ViewController"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
	[super loadView];

	[DebugLog debug:TAG comment:@"loadView"];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	[DebugLog debug:TAG comment:@"viewDidLoad"];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	[DebugLog debug:TAG comment:@"viewWillAppear"];
}

- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
	[DebugLog debug:TAG comment:@"viewWillLayoutSubviews"];
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
	
	[DebugLog debug:TAG comment:@"viewDidLayoutSubviews"];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	[DebugLog debug:TAG comment:@"viewDidAppear"];
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
	
	[DebugLog warning:TAG comment:@"viewWillDisappear"];
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	
	[DebugLog warning:TAG comment:@"viewDidDisappear"];
}

@end
