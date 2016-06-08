//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    [self solveTrivia];
    
    return YES;
}

- (NSString *)solveTrivia{
    
    NSString *answer = [NSMutableString new];
    
    NSDictionary *stateAndCapital = @{@"Alabama": @"Montgomery",
                                      @"Alaska" : @"Juneau",
                                      @"Arizona": @"Phoenix",
                                      @"Arkansas": @"Little Rock",
                                      @"California": @"Sacramento",
                                      @"Colorado": @"Denver",
                                      @"Connecticut": @"Hartford",
                                      @"Delaware": @"Dover",
                                      @"Florida": @"Tallahassee",
                                      @"Georgia": @"Atlanta",
                                      @"Hawaii": @"Honolulu",
                                      @"Idaho": @"Boise",
                                      @"Illinois": @"Springfield",
                                      @"Indiana": @"Indianapolis",
                                      @"Iowa": @"Des Moines",
                                      @"Kansas": @"Topeka",
                                      @"Kentucky": @"Frankfort",
                                      @"Louisiana": @"Baton Rouge",
                                      @"Maine": @"Augusta",
                                      @"Maryland": @"Annapolis",
                                      @"Massachusetts": @"Boston",
                                      @"Michigan": @"Lansing",
                                      @"Minnesota": @"St. Paul",
                                      @"Mississippi": @"Jackson",
                                      @"Missouri": @"Jefferson City",
                                      @"Montana": @"Helena",
                                      @"Nebraska": @"Lincoln",
                                      @"Nevada": @"Carson City",
                                      @"New Hampshire": @"Concord",
                                      @"New Jersey": @"Trenton",
                                      @"New Mexico": @"Santa Fe",
                                      @"New York": @"Albany",
                                      @"North Carolina": @"Raleigh",
                                      @"North Dakota": @"Bismarck",
                                      @"Ohio": @"Columbus",
                                      @"Oklahoma": @"Oklahoma City",
                                      @"Oregan": @"Salem",
                                      @"Pennsylvania": @"Harrisburg",
                                      @"Rhode Island": @"Providence",
                                      @"South Carolina": @"Columbia",
                                      @"South Dakota": @"Pierre",
                                      @"Tennessee": @"Nashville",
                                      @"Texas": @"Austin",
                                      @"Utah": @"Salt Lake City",
                                      @"Vermont": @"Montepelier",
                                      @"Virginia": @"Richmond",
                                      @"Washington": @"Olympia",
                                      @"West Virginia": @"Charleston",
                                      @"Wisconsin": @"Madison",
                                      @"Wyoming": @"Cheyenne"};
    
    
    
    NSArray *state = [stateAndCapital allKeys]; //get all keys
    
    for (NSUInteger i = 0; i < [state count]; i++){
        
        NSString *lowerState = [state[i] lowercaseString]; // lowercase states
        lowerState = [lowerState stringByReplacingOccurrencesOfString:@" " withString:@""]; //remove space from states
        NSString *lowerCapital = [stateAndCapital[state[i]] lowercaseString]; //set capital and lowercase them
        lowerCapital = [lowerCapital stringByReplacingOccurrencesOfString:@" " withString:@""]; //remove space from captial
        
        NSCharacterSet *characters = [NSCharacterSet characterSetWithCharactersInString:lowerState]; //convert state to character set
        NSRange range = [lowerCapital rangeOfCharacterFromSet:characters]; //compare capital with character range from state
        
        if (range.location == NSNotFound){ //if range is not found
            answer = state[i]; //return state
        }
        
        else { //else continue
            continue;

        }
    }

    
    return answer;
}

@end
