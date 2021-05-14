// A thin staircase with a settable number of steps

module stairs_thin(steps, offset=0){
    difference(){
        union(){
            //Steps
            for (i=[0:steps-1], h=i+1/2) 
                translate([0, 2*(steps/2 - h)/steps, -2*(steps/2 - h)/steps])
                    cube([2,2/steps,2/steps], center=true);
            // Main ramp
            rotate([0,90,0])
                linear_extrude(height = 2, center=true) 
                    polygon([
                            [1, 1],
                            [1, -1],
                            [-1, -1],
                    ]);
        };
        // Cutting ramp
        translate([0, -2*offset/steps, 0])
            rotate([0,90,0])
                linear_extrude(height = 2, center=true) 
                    polygon([
                            [1, 1],
                            [1, -1],
                            [-1, -1],
                    ]);
    }
}

stairs_thin(steps=5, offset=1);


