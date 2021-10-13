//
//  main.m
//  Frameworks
//
//  Created by Misael Landero on 13/10/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         //Start a var and init the value on memory
        NSString * helloString = [[NSString alloc] init];
        //le asingnamos ahora un valor
        helloString = @"Misael";
        
        //Init var directly
        NSString * helloStringWithName = [[NSString alloc] initWithString:@"Misael"];
        //Iniciar var without redundace
        NSString * helloStringWithNameSimple = @"Misael";
        
        
        
        //Samples
        
        NSString * name = @"Misael";
        NSString * lastName = @"Landero";
        
        NSLog(@"%@ %@", name, lastName);
        
        
        //Set and get methods
        NSLog(@"You name has %lu letters",(unsigned long) name.length);
         
        //Set and get mutable string
        NSMutableString * mutableName = [[NSMutableString alloc] initWithString:@"Francisco"];
        //append more strings
        [mutableName appendString:@" is my name"];
        
        //print strings
        NSLog(@"%@", mutableName);
        
        
        //Arrays
        //Unmutable can´t be edited
        NSArray * myArray = @[@"A",@"B",@"C",@"D"];
        
        
        //Unmutable can be edited
        NSMutableArray * myArrayMutable = [[NSMutableArray alloc] initWithObjects:@"A",@"B",@"C",@"D", nil];
        
        [myArrayMutable addObject:@"E"];
       
        NSLog(@"%@", myArrayMutable);
        
    }
    return 0;
}
