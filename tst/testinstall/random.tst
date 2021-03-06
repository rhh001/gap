gap> START_TEST("random.tst");
gap> Read( Filename( DirectoriesLibrary( "tst" ), "testrandom.g" ) );

#
gap> randomTest(Integers, Random);
gap> randomTest(Rationals, Random);

#
gap> randomTest(SymmetricGroup(2), Random);
gap> randomTest(SymmetricGroup(3), Random);
gap> randomTest(SymmetricGroup(4), Random);
gap> randomTest(AlternatingGroup(3), Random);
gap> randomTest(AlternatingGroup(4), Random);
gap> randomTest(AlternatingGroup(5), Random);

#
gap> randomTest(Group((1,2),(3,4)), Random);
gap> randomTest(PrimitiveGroup(5,2), Random);
gap> randomTest(PrimitiveGroup(5,3), Random);
gap> randomTest(Group((1,2),(3,4))*(1,2,3), Random);
gap> randomTest(PrimitiveGroup(5,2)*(1,2,6), Random);
gap> randomTest(PrimitiveGroup(5,3)*(1,4,6), Random);

#
gap> randomTest(DoubleCoset(Group((1,2),(3,4)), (1,2,3,4,5,6), Group((1,2,3)) ), Random);
gap> randomTest(DoubleCoset(Group(()), (1,2), Group((1,2,3)) ), Random);
gap> randomTest(DoubleCoset(Group((1,2),(3,4)), (), Group((1,2,3)) ), Random);

#
gap> randomTest([1..10], Random);
gap> randomTest([1,-6,"cheese", Group(())], Random);

#
gap> randomTest(PadicExtensionNumberFamily(3, 5, [1,1,1], [1,1]), Random, function(x,y) return IsPadicExtensionNumber(x); end);
gap> randomTest(PurePadicNumberFamily(2,20), Random, function(x,y) return IsPurePadicNumber(x); end);
gap> STOP_TEST("random.tst", 1);
