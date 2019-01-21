// the 4 tiny screws 
kEdgeScrewX = 22.4 - 1.8;
kEdgeScrewY = 33.25 - 1.8;
kEdgeSrewDiameter = 1.4;
kEdgeSrewHoleDiameter = kEdgeSrewDiameter + .4;
kEdgeScrewHeight = 7;
// once we put it through the k-edge...
kEdgeScrewRestHeight = kEdgeScrewHeight - 2;

wahooSocketDiameter = 25 + 1; // +1 so it can go through easily
wahooNodgeDiameter = 29 + 1; // +1 so it can go through easily
wahooNodgeHeight = 1.5 + 0.4;
wahooNodgeWidth = 12 + 0.4;

wahooSpringSlideDiameter = 14;
wahooSocketHeight = 3;
wahooPawlWidth = 1.5;
wahooPawlOuterRadius = 23.3 / 2;
wahooPawlInnerRadius = 19.5 / 2;

kEdgeDiameter = 44.1;
kEdgeHeight = 5;
kEdgeSnapLayerHeight = 1;
kEdgeBaseLayerHeight = kEdgeHeight - kEdgeSnapLayerHeight - wahooSocketHeight;

pawlOffset = wahooPawlInnerRadius + (wahooPawlOuterRadius - wahooPawlInnerRadius) / 2;

baseHeight = kEdgeHeight - wahooSocketHeight;
