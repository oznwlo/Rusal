package com.rusal;
import java.util.ArrayList;
import java.util.StringTokenizer;


public class TextToMethod {
	public static void main(String[] ar){
		
//		modifier	returnType	methodName	(	Arguments	)	{	}		
//		? ‘ê·¼ì?? •?(0) ë¦¬í„´?˜•(2) ë©”ì†Œ?“œëª?(1) (?°?´?„° ???…(1-2) ?¸?ëª?(1-1)) '{  }' 
//		Index> [0]:? ‘ê·¼ì?? •? /[1] '(' ~ ')' : ë©”ì†Œ?“œëª? ([1-1] 0~':' : ?¸?ëª? [1-2] ':'~'.length() : ë³??ˆ˜???…)
//		[2] ':'~.length() : ë¦¬í„´?˜•
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
		
//		---------? ‘ê·? ì§?? •?-----------
		String modifier = String.valueOf(str.charAt(0));
		switch (modifier) {
		case "-": modifier ="private";	break;
		case "#": modifier  ="protected"; break;
		case "+": modifier ="public"; break;
		default : modifier=" "; break;
		}
		System.out.println("? ‘ê·¼ì?? •? : " + modifier );
		
		int split1 = str.indexOf("("); // :?´ ?ˆ?Š”?ë¦?.
		String methodName = str.substring(1, split1);
		System.out.println("ë©”ì†Œ?“œ ëª? : " + methodName);
		
		int split2 = str.indexOf(")");
		String args = str.substring(split1+1,split2);
		System.out.println("ë§¤ê°œë³??ˆ˜ : " + args);
		
//		----------ë§¤ê°œë³??ˆ˜---------------
		System.out.println(args);
		ArrayList<String> arguments = new ArrayList<String>();
		StringTokenizer tk = new StringTokenizer(args, " : .");	 // ???ˆ˜: ë§¤ê°œë³??ˆ˜?´ë¦?, ì§ìˆ˜: ë§¤ê°œë³??ˆ˜???…
		
		while(tk.hasMoreTokens()){
			arguments.add(tk.nextToken());
		}
		
		System.out.println("-- ë§¤ê°œë³??ˆ˜ --");
		for(int i=0; i<arguments.size(); i++){
			if(i%2==0){
				System.out.println("ë³??ˆ˜ëª? : " + arguments.get(i));
			}else{
				System.out.println("ë³??ˆ˜???… : " + arguments.get(i));
			}
		}
		
//		-------return--------------
		int split3 = str.lastIndexOf(":");
		String returnType= str.substring(split3+1, str.length());
		System.out.println("ë¦¬í„´???… : " + returnType);

//		ìµœì¢…
//		modifier	returnType	methodName	(	Arguments	)	{	}
		System.out.println(modifier + "\t" + returnType + "\t" + methodName + "\t" + 
				"(" + arguments +")" + "{ }");	// argumentsë¥? forë¬¸ìœ¼ë¡? êµ¬ì„±!!
		
		
		
	}
}

