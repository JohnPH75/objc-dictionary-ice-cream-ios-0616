//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray*) namesForIceCream:(NSString *)iceCream {
    
    
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla"            ,
                                      @"Sophie" : @"Mexican Chocolate"          ,
                                      @"Deniz"  : @"Natural Vanilla"            ,
                                      @"Tom"    : @"Mexican Chocolate"          ,
                                      @"Jim"    : @"Natural Vanilla"            ,
                                      @"Mark"   : @"Cookies 'n Cream"          };
    //translate notes into dictionary
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    //create empty array for returning desired results
    
    for (NSString *key in [iceCreamByName allKeys]) {
        //create key string and put all keys from *iceCreamByName dictionary
        
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            // cycles through each name (key) and returns corresponding flavor (value)
                            //if "key" is equal to "string" then add "key" to array
            [names addObject:key];
            //inserts results of *key string into empty *names array
        }
    }
    
    return [NSArray arrayWithArray:names];
    //returns an array with contents of *names array
    
}

- (NSDictionary*) countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    //empty dictionary object
    
    for (NSString *key in iceCreamByName) {
        //puts all contents of *iceCreamByName dictionary into string
        
        //NSLog(@"\n\n%@",key);
        
        NSString *iceCreamFlavors = iceCreamByName[key];
        //access dictionary - puts all info in *iceCreamByName dictionary into string
        
        //NSLog(@"\n\niceCreamFlavors: %@\n\n",iceCreamFlavors);
        
        NSArray *instructorNames = [self namesForIceCream:iceCreamFlavors];
        //get results of previous method and combine with string and put into array
        
        //NSLog(@"\n\ninstructorNames: %@\n\n",instructorNames);
        
        countsOfIceCream[iceCreamFlavors] = [NSNumber numberWithInteger:instructorNames.count];
        //returns number (value) of people who like each flavor of ice cream (key)
    }
    
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
    //creates and returns a dictionary containing keys and values from another dictionary
}



@end
