package com.rusal;
import java.util.ArrayList;
import java.util.StringTokenizer;


public class TextToMethod {
	public static void main(String[] ar){
		
//		modifier	returnType	methodName	(	Arguments	)	{	}		
//		?��근�??��?��(0) 리턴?��(2) 메소?���?(1) (?��?��?�� ???��(1-2) ?��?���?(1-1)) '{  }' 
//		Index> [0]:?��근�??��?�� /[1] '(' ~ ')' : 메소?���? ([1-1] 0~':' : ?��?���? [1-2] ':'~'.length() : �??��???��)
//		[2] ':'~.length() : 리턴?��
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
		
//		---------?���? �??��?��-----------
		String modifier = String.valueOf(str.charAt(0));
		switch (modifier) {
		case "-": modifier ="private";	break;
		case "#": modifier  ="protected"; break;
		case "+": modifier ="public"; break;
		default : modifier=" "; break;
		}
		System.out.println("?��근�??��?�� : " + modifier );
		
		int split1 = str.indexOf("("); // :?�� ?��?��?���?.
		String methodName = str.substring(1, split1);
		System.out.println("메소?�� �? : " + methodName);
		
		int split2 = str.indexOf(")");
		String args = str.substring(split1+1,split2);
		System.out.println("매개�??�� : " + args);
		
//		----------매개�??��---------------
		System.out.println(args);
		ArrayList<String> arguments = new ArrayList<String>();
		StringTokenizer tk = new StringTokenizer(args, " : .");	 // ???��: 매개�??��?���?, 짝수: 매개�??��???��
		
		while(tk.hasMoreTokens()){
			arguments.add(tk.nextToken());
		}
		
		System.out.println("-- 매개�??�� --");
		for(int i=0; i<arguments.size(); i++){
			if(i%2==0){
				System.out.println("�??���? : " + arguments.get(i));
			}else{
				System.out.println("�??��???�� : " + arguments.get(i));
			}
		}
		
//		-------return--------------
		int split3 = str.lastIndexOf(":");
		String returnType= str.substring(split3+1, str.length());
		System.out.println("리턴???�� : " + returnType);

//		최종
//		modifier	returnType	methodName	(	Arguments	)	{	}
		System.out.println(modifier + "\t" + returnType + "\t" + methodName + "\t" + 
				"(" + arguments +")" + "{ }");	// arguments�? for문으�? 구성!!
		
		
		
	}
}

