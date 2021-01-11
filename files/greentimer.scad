// type in the number down below. pay attention. its an array.
// this was initally coded by Emil and improved by Mr. Baldauf

//a = ["1","2","3","4","5","6"];
//a = [1,2,3,4,5,6];
 a = [0,0,0,8,1,5];

module nummer1(){
    translate([61,1,13])cube([2,3,8]);
    translate([61,1,3])cube([2,3,8]);
}
module nummer2(){
    translate([70,1,3])cube([2,3,8]);
    translate([63.5,1,11])cube([6,2,2]);
    translate([63.5,1,1])cube([6,2,2]);
    translate([63.5,1,21])cube([6,2,2]);
    translate([61,1,13])cube([2,3,8]);
}
module nummer3(){
    translate([63.5,1,11])cube([6,2,2]);
        translate([63.5,1,1])cube([6,2,2]);
        translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,13])cube([2,3,8]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer4(){
    translate([70,1,13])cube([2,3,8]);
        translate([63.5,1,11])cube([6,2,2]);
        translate([61,1,13])cube([2,3,8]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer5(){
    translate([70,1,13])cube([2,3,8]);
        translate([63.5,1,11])cube([6,2,2]);
        translate([63.5,1,1])cube([6,2,2]);
        translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer6(){
    translate([70,1,13])cube([2,3,8]);
        translate([70,1,3])cube([2,3,8]);
        translate([63.5,1,11])cube([6,2,2]);
        translate([63.5,1,1])cube([6,2,2]);
        translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer7(){
    translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,13])cube([2,3,8]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer8(){
    translate([70,1,13])cube([2,3,8]);
        translate([70,1,3])cube([2,3,8]);
        translate([63.5,1,11])cube([6,2,2]);
        translate([63.5,1,1])cube([6,2,2]);
        translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,13])cube([2,3,8]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer9(){
    translate([70,1,13])cube([2,3,8]);
        translate([63.5,1,11])cube([6,2,2]);
        translate([63.5,1,1])cube([6,2,2]);
        translate([63.5,1,21])cube([6,2,2]);
        translate([61,1,13])cube([2,3,8]);
        translate([61,1,3])cube([2,3,8]);
}
module nummer0(){
    translate([70,1,13])cube([2,3,8]);
    translate([70,1,3])cube([2,3,8]);
    translate([63.5,1,1])cube([6,2,2]);
    translate([63.5,1,21])cube([6,2,2]);
    translate([61,1,13])cube([2,3,8]);
    translate([61,1,3])cube([2,3,8]);
}
module Ziffer(c){
    if (a[c] == 0){
        nummer0();
    }
    if (a[c] == 1){
        nummer1();
    }
    if (a[c] == 2){
        nummer2();
    }
     if (a[c] == 3){
        nummer3();
    }
     if (a[c] == 4){
        nummer4();
    }
     if (a[c] == 5){
        nummer5();
    }
     if (a[c] == 6){
        nummer6();
    }
     if (a[c] == 7){
        nummer7();
    }
     if (a[c] == 8){
        nummer8();
    }
     if (a[c] == 9){
        nummer9();
    }
}

difference()
{
    translate([-17,0,0])cube([92,2,24]);
    union(){
        Ziffer(0);
        translate([-15,0,0])Ziffer(1);
        translate([-30,0,0])Ziffer(2);
        translate([-45,0,0])Ziffer(3);
        translate([-60,0,0])Ziffer(4);
        translate([-75,0,0])Ziffer(5);
    }
}