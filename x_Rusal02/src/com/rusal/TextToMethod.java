package com.rusal;
import java.util.ArrayList;
import java.util.StringTokenizer;


public class TextToMethod {
	public static void main(String[] ar){
		
//		modifier	returnType	methodName	(	Arguments	)	{	}		
//		? κ·Όμ?? ?(0) λ¦¬ν΄?(2) λ©μ?λͺ?(1) (?°?΄?° ???(1-2) ?Έ?λͺ?(1-1)) '{  }' 
//		Index> [0]:? κ·Όμ?? ? /[1] '(' ~ ')' : λ©μ?λͺ? ([1-1] 0~':' : ?Έ?λͺ? [1-2] ':'~'.length() : λ³?????)
//		[2] ':'~.length() : λ¦¬ν΄?
//		
		
		String str = "+setUsername(username:String.hello:Integer):double";
/*
  		String modifier = String.valueOf(str.charAt(0));
		str = str.substring(1,str.length());
		
		System.out.println(modifier);
		StringTokenizer tk = new StringTokenizer(str, ". : ( )");
		while(tk.hasMoreTokens()){
			System.out.println(tk.nextToken());
		}
*/		
		
//		---------? κ·? μ§?? ?-----------
		String modifier = String.valueOf(str.charAt(0));
		switch (modifier) {
		case "-": modifier ="private";	break;
		case "#": modifier  ="protected"; break;
		case "+": modifier ="public"; break;
		default : modifier=" "; break;
		}
		System.out.println("? κ·Όμ?? ? : " + modifier );
		
		int split1 = str.indexOf("("); // :?΄ ???λ¦?.
		String methodName = str.substring(1, split1);
		System.out.println("λ©μ? λͺ? : " + methodName);
		
		int split2 = str.indexOf(")");
		String args = str.substring(split1+1,split2);
		System.out.println("λ§€κ°λ³?? : " + args);
		
//		----------λ§€κ°λ³??---------------
		System.out.println(args);
		ArrayList<String> arguments = new ArrayList<String>();
		StringTokenizer tk = new StringTokenizer(args, " : .");	 // ???: λ§€κ°λ³???΄λ¦?, μ§μ: λ§€κ°λ³?????
		
		while(tk.hasMoreTokens()){
			arguments.add(tk.nextToken());
		}
		
		System.out.println("-- λ§€κ°λ³?? --");
		for(int i=0; i<arguments.size(); i++){
			if(i%2==0){
				System.out.println("λ³??λͺ? : " + arguments.get(i));
			}else{
				System.out.println("λ³????? : " + arguments.get(i));
			}
		}
		
//		-------return--------------
		int split3 = str.lastIndexOf(":");
		String returnType= str.substring(split3+1, str.length());
		System.out.println("λ¦¬ν΄??? : " + returnType);

//		μ΅μ’
//		modifier	returnType	methodName	(	Arguments	)	{	}
		System.out.println(modifier + "\t" + returnType + "\t" + methodName + "\t" + 
				"(" + arguments +")" + "{ }");	// argumentsλ₯? forλ¬ΈμΌλ‘? κ΅¬μ±!!
		
		
		
	}
}

