package com.rusal;

public class TextToVariable {
	public static void main(String[] ar){
		
//		private String username;
		String str = "#number:int";
		StringBuffer sb = new StringBuffer("	");

//		?��근�??��?��(0) ?��?��?��???��(2) �??���?(1)
//		Index> [0]:?��근�??��?�� /[1] 1~ before ':' : �??���? / [2]then~.length() : ?��?��?�� ???��   
		
		String modifier = String.valueOf(str.charAt(0));
		switch (modifier) {
		case "-": modifier="private";	break;
		case "#": modifier="protected"; break;
		case " ": modifier=" ";	break;
		case "+": modifier="public"; break;
		}
		System.out.println(modifier);
		
		int split1 = str.indexOf(":"); // :?�� ?��?��?���?.
		String dataName = str.substring(1, split1);
		System.out.println(dataName);
		
		String dataType = str.substring(split1+1,str.length());
		System.out.println(dataType);
		
//		최종
//		modifier	dataType	dataName	(	Arguments	)	{	}
		String changedStr = modifier +" "+ dataType +" " + dataName;
		System.out.println(changedStr);
	
		
	}
}
