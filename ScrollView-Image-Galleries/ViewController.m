//
//  ViewController.m
//  ScrollView-Image-Galleries
//
//  Created by Erik Goossens on 2018-06-18.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view addSubview:self.scrollView];
    self.scrollView.pagingEnabled = YES;
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *lField = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImageView *lFieldView = [[UIImageView alloc] initWithImage:lField];
    lFieldView.backgroundColor = UIColor.blackColor;

    [self.scrollView addSubview:lFieldView];
    
    
    UIImage *lNight = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImageView *lNightView = [[UIImageView alloc] initWithImage:lNight];
    lNightView.backgroundColor = UIColor.blackColor;

    [self.scrollView addSubview:lNightView];
    
    UIImage *lTall = [UIImage imageNamed:@"Lighthouse-Tall.jpg"];
    UIImageView *lTallView = [[UIImageView alloc] initWithImage:lTall];
    lTallView.backgroundColor = UIColor.blackColor;
    [self.scrollView addSubview:lTallView];
    
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    lFieldView.translatesAutoresizingMaskIntoConstraints = NO;
    lNightView.translatesAutoresizingMaskIntoConstraints = NO;
    lTallView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [lFieldView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [lFieldView.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    
    [lNightView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [lNightView.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    
    [lTallView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [lTallView.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    
    lFieldView.contentMode = UIViewContentModeScaleAspectFit;
    lNightView.contentMode = UIViewContentModeScaleAspectFit;
    lTallView.contentMode = UIViewContentModeScaleAspectFit;
    
    lFieldView.clipsToBounds = YES;
    lNightView.clipsToBounds = YES;
    lTallView.clipsToBounds = YES;
    
    
    [lFieldView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [lFieldView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
    [lFieldView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
    
    [lNightView.topAnchor constraintEqualToAnchor:lFieldView.bottomAnchor].active = YES;
    
    [lNightView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
    [lNightView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
    [lNightView.bottomAnchor constraintEqualToAnchor:lTallView.topAnchor].active = YES;
    
    [lTallView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
    
    [lTallView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
    
    [lTallView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;

    
    
    // give edge constraints or
    
    // setup constraints
    
    // lFieldView pinned to the all sides except bottom
    // 1Field needs a width and height. set the to the self.view width and height constraints
    
    // lNight top constraint is set to the bottom of lFieldView
    // needs height and width
    // edge constraints except the bottom
    
    //lTall has a bottom constraint to the scrollview
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
