$fn=50;


translate([-55,-20,50])color("blue")spant(0);
translate([-55,-20,100])color("blue")spant(0);
translate([-55,-20,150])color("blue")spant(0);
translate([-55,-20,200])color("blue")spant(0);
translate([0,0,120])  color("lightblue")cube([10,10,200],center=true);

color("red")fluegel_anschluss();
color("green")gehaeuse();
achse();
color("purple")deckel_vorn();


module spant(holes){
    difference()
    {
        translate([0,30,0])linear_extrude(5)scale([0.3,0.3])import("Examples_of_Airfoils.svg");
        if(holes==1)
        {
            for(i=[0:20]){
                for(k=[0:10]){
                    translate([i*10,k*8,-1]) cylinder(20,2,2,center=true);
                }
            }
        }
        translate([55,20,0])cube([10.1,10.1,20],center=true);
    }
}

module fluegel_anschluss(){
    
    difference()
    {
        union()
        {
            cylinder(25,20,20);
            translate([0,0,-15])cylinder(5,10,10);
            translate([0,0,-5])cylinder(5,10,10);
            translate([0,0,-15])cylinder(25,8,8);
            translate([0,0,15])cube([60,10,3], center=true);
        }
        union()
        {
            translate([0,0,105])  cube([10,10,200],center=true);
            translate([0,0,15])rotate([90,0,0])cylinder(50,2,2, center=true);
            
            translate([0,0,15])cube([60,10,3], center=true);
            
            translate([25,0,0])rotate([0,0,0])cylinder(50,2,2, center=true);
            translate([-25,0,0])rotate([0,0,0])cylinder(50,2,2, center=true);
        }
    }
    
}

module gehaeuse(){
    difference()
    {
        translate([0,0,-25])cube([50,50,50], center=true);
        union()
        {
            translate([0,0,-25])cube([40,70,40], center=true);
            translate([0,0,0])cylinder(200,10,10, center=true);
            translate([0,0,-25])rotate([0,90,0])cylinder(200,20,20, center=true);
        }
    }
}

module achse(){
    translate([0,0,-25]) rotate([90,0,0]) cylinder(200,4,4, true);
}

module deckel_vorn(){
    difference()
    {
        union()
        {
            translate([0,50,-25])cube([40,3,40], center=true);
            //translate([0,53,-25])cube([50,3,50], center=true);
            translate([0,56,-25])cube([10,10,100], center=true);
            translate([0,56,15])cube([60,10,3], center=true);        
        }
        union()
        {
            translate([25,56,0])rotate([0,0,0])cylinder(50,2,2, center=true);
            translate([-25,56,0])rotate([0,0,0])cylinder(50,2,2, center=true);
        }

            
    }
    
}