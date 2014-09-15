//
//  ViewController.h
//  CalendarTests
//
//  Created by Aidan Cornelius-Bell on 14/09/2014.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePickerOutlet;
@property (strong, nonatomic) IBOutlet UITextField *eventNameOutlet;
@property (strong, nonatomic) IBOutlet UITextField *eventLocationOutlet;

- (IBAction)createEventButton:(id)sender;

@end

