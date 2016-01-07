# LBStyle

Since the release of iOS 8.0, we are no longer able to customize many of Apple's UI components such as UIActionSheet and UIAlertView by obtaning their subviews.
LBStyle provides a way to customize label's tintColor for those components through runttime methods.

EXAMPLES:

`
UIActionSheet *action = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:nil, nil];

NSString* editString = @"Edit";

editString.lb_tintColor = [UIColor greenColor];

[action addButtonWithTitle:editString];

`
