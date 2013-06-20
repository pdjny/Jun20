//
//  Jun20AppDelegate.h
//  Jun20
//
//  Created by PHILIP JACOBS on 6/19/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Jun20AppDelegate : UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}


@property (strong, nonatomic) UIWindow *window;

@end
