// A staircase with a settable number of steps

module stairs(steps){
    // Main ramp
    union(){
        rotate([0,90,0])
            linear_extrude(height = 2, center=true) 
                polygon([
                        [1, 1],
                        [1, -1],
                        [-1, -1],
                ]);
        //Steps
        for (i=[0:steps-1], h=i+1/2) 
            translate([0, 2*(steps/2 - h)/steps, -2*(steps/2 - h)/steps])
                cube([2,2/steps,2/steps], center=true);
    }
}

stairs(steps=5);


