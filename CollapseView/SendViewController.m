//
//  ViewController.m
//  CollapseView
//
//  Created by Alexandro on 9/14/15.
//  Copyright (c) 2015 Alexandro. All rights reserved.
//

#import "SendViewController.h"

@interface SendViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightGrayView;

@property (weak, nonatomic) IBOutlet UIView *grayView;
@property (assign) BOOL isOpened;

@end

@implementation SendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionCollapse:(id)sender {
    if (!self.isOpened)
        self.heightGrayView.constant = (self.grayView.frame.size.height -50) * -1;
    else
        self.heightGrayView.constant = 0;
    
    self.isOpened = !self.isOpened;
}

@end
