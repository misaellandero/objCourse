//
//  main.m
//  HolaMundo
//
//  Created by Francisco Landero on 7/5/21.
//

#import <Foundation/Foundation.h>

//Function

//In Objc the retun value is at the begin of the fuction
//also for the parameters value tipes are before name of the parameter
int getSquare(int a) {
    // Value tipe before var name, not func or var keywork
    int value = a * a;
    return value;
}

int main(int argc, const char * argv[]) {
    
    //ARC count of instation automatic
    @autoreleasepool {
        // print hello world
        //@ for strings
        NSLog(@"Hello, World!");
        
        //Call the square
        NSLog(@"The Square of 2 is %i",getSquare(2));
        
    }
    //Returning the Int value
    return 2;
}

