component
	extends = "TestCase"
	output = false
	hint = "I test the Base32 component."
	{

	// ---
	// TEST METHODS.
	// ---


	public void function testBase32Encoding() {

		// Set up our known Base32-encoded values.
		var tests = {
			"C" = "IM======",
			"Co" = "INXQ====",
			"Com" = "INXW2===",
			"Come" = "INXW2ZI=",
			"Come " = "INXW2ZJA",
			"Come w" = "INXW2ZJAO4======",
			"Come wi" = "INXW2ZJAO5UQ====",
			"Come wit" = "INXW2ZJAO5UXI===",
			"Come with" = "INXW2ZJAO5UXI2A=",
			"Come with " = "INXW2ZJAO5UXI2BA",
			"Come with m" = "INXW2ZJAO5UXI2BANU======",
			"Come with me" = "INXW2ZJAO5UXI2BANVSQ====",
			"Come with me " = "INXW2ZJAO5UXI2BANVSSA===",
			"Come with me i" = "INXW2ZJAO5UXI2BANVSSA2I=",
			"Come with me if" = "INXW2ZJAO5UXI2BANVSSA2LG",
			"Come with me if " = "INXW2ZJAO5UXI2BANVSSA2LGEA======",
			"Come with me if y" = "INXW2ZJAO5UXI2BANVSSA2LGEB4Q====",
			"Come with me if yo" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W6===",
			"Come with me if you" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65I=",
			"Come with me if you " = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JA",
			"Come with me if you w" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO4======",
			"Come with me if you wa" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QQ====",
			"Come with me if you wan" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW4===",
			"Come with me if you want" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45A=",
			"Come with me if you want " = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BA",
			"Come with me if you want t" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAOQ======",
			"Come with me if you want to" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXQ====",
			"Come with me if you want to " = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA===",
			"Come with me if you want to l" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA3A=",
			"Come with me if you want to li" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA3DJ",
			"Come with me if you want to liv" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA3DJOY======",
			"Come with me if you want to live" = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA3DJOZSQ====",
			"Come with me if you want to live." = "INXW2ZJAO5UXI2BANVSSA2LGEB4W65JAO5QW45BAORXSA3DJOZSS4===",
			"#chr( 224 )##chr( 225 )##chr( 226 )##chr( 227 )##chr( 228 )##chr( 229 )##chr( 230 )#" = "YOQMHIODULB2HQ5EYOS4HJQ="
		};

		var base32 = new lib.Base32();

		var testInputs = structKeyArray( tests );
		
		arraySort( testInputs, "text", "asc" );

		for ( var input in testInputs ) {

			// Encode the value.
			var encodedInput = base32.encode( input );

			// Decode the encoded-value.
			var decodedOutput = base32.decode( encodedInput );

			// Assert that the process worked in both directions.
			assert( encodedInput == tests[ input ] );
			assert( input == decodedOutput );

		}

	}

}