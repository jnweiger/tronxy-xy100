
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_yendstopmount_5mm(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-40.749028,-47.834962],[-51.377934,-37.204101],[-51.377934,37.204101],[-40.749028,47.834962],[33.661133,47.834962],[33.661133,33.661141],[51.377934,33.661141],[51.377934,12.401370],[32.952143,12.401370],[32.952143,5.315430],[12.401362,5.315430],[12.401362,9.920900],[1.770502,9.920900],[1.770502,5.315430],[-19.489259,5.315430],[-19.489259,-5.315430],[1.770502,-5.315430],[1.770502,-9.920900],[12.401362,-9.920900],[12.401362,-5.315430],[32.952143,-5.315430],[33.661133,-47.834962],[-40.749028,-47.834962]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-25.049809,-21.190431],[-25.047859,-21.190431],[3.297852,-21.190431],[4.368980,-21.082473],[5.366594,-20.772840],[6.269335,-20.282890],[7.055841,-19.633983],[7.704752,-18.847479],[8.194706,-17.944735],[8.504343,-16.947113],[8.612302,-15.875971],[8.504343,-14.804840],[8.194706,-13.807224],[7.704752,-12.904483],[7.055841,-12.117978],[6.269335,-11.469068],[5.366594,-10.979115],[4.368980,-10.669479],[3.297852,-10.561520],[-25.047859,-10.561520],[-25.049809,-10.561520],[-26.120676,-10.669811],[-27.118169,-10.979658],[-28.020894,-11.469714],[-28.807459,-12.118630],[-29.456471,-12.905062],[-29.946537,-13.807660],[-30.256265,-14.805079],[-30.364261,-15.875971],[-30.256265,-16.946880],[-29.946537,-17.944312],[-29.456471,-18.846920],[-28.807459,-19.633357],[-28.020894,-20.282274],[-27.118169,-20.772324],[-26.120676,-21.082159],[-25.049809,-21.190431]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-25.049809,10.698250],[-25.047859,10.698250],[3.297852,10.698250],[4.368980,10.806209],[5.366594,11.115845],[6.269335,11.605798],[7.055841,12.254708],[7.704752,13.041213],[8.194706,13.943954],[8.504343,14.941570],[8.612302,16.012701],[8.504343,17.083915],[8.194706,18.081752],[7.704752,18.984805],[7.055841,19.771668],[6.269335,20.420936],[5.366594,20.911201],[4.368980,21.221058],[3.297852,21.329101],[-25.047859,21.329101],[-25.049809,21.329101],[-26.120675,21.220726],[-27.118167,20.910660],[-28.020892,20.420293],[-28.807457,19.771020],[-29.456470,18.984231],[-29.946536,18.081320],[-30.256264,17.083679],[-30.364261,16.012701],[-30.256264,14.941792],[-29.946536,13.944359],[-29.456470,13.041751],[-28.807457,12.255315],[-28.020892,11.606400],[-27.118167,11.116352],[-26.120675,10.806519],[-25.049809,10.698250]]);
    }
  }
}

module yendstopmount(h)
{

poly_yendstopmount_5mm(5);
}

yendstopmount(5);