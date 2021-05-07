// A ramp

module ramp(){
    rotate([0,90,0])
        linear_extrude(height = 2, center=true) 
            polygon([
                    [1, 1],
                    [1, -1],
                    [-1, -1],
            ]);
}

ramp();
