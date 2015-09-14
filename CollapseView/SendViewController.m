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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomGrayView;

@property (weak, nonatomic) IBOutlet UIView *optionsCameraView;
@end

@implementation SendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.optionsCameraView.alpha = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)actionCollapse:(id)sender {
    
    if (!self.isOpened) {
        self.bottomGrayView.constant = (self.grayView.frame.size.height -50) * -1;
    }
    else {
        self.bottomGrayView.constant = 0;
    }
    
    [UIView animateWithDuration:0.75 animations:^{
        if (!self.isOpened)
            self.optionsCameraView.alpha = 1;
        else
            self.optionsCameraView.alpha = 0;
        
        [self.view layoutIfNeeded];
    }];
    self.isOpened = !self.isOpened;
}

@end
