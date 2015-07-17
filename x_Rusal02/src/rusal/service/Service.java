package rusal.service;

import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rusal.TextToVariable;

import rusal.dao.RusalDAO;
import rusal.dto.TranslatorDTO;

public class Service {

	public void ttc(HttpServletRequest request, HttpServletResponse response) {
		String[] varList = request.getParameterValues("variables");
		String[] methodList = request.getParameterValues("methods");
		ArrayList<String> arrVar = new ArrayList<String>();
		ArrayList<String> arrMethod = new ArrayList<String>();

		
		System.out.println(varList.length);
		System.out.println(methodList.length);
		
		RusalDAO dao = new RusalDAO();
		TranslatorDTO dto = new TranslatorDTO();
		arrVar = this.textToVariables(varList);
		arrMethod = this.textToMethods(methodList);
		System.out.println("*******************");
		System.out.println(arrVar);
		System.out.println(arrMethod);
		System.out.println("*******************");

		
	}

	private ArrayList<String> textToMethods(String[] arrMethod) {
		ArrayList<String> result = new ArrayList<String>();

		// String str = "+sum2(str:String.str2:String):String";
		// String str2 = "+sum2(int x):String";
		// String str3 = "-sum( ):int";
		// Method�ɰ���1 ��

		for (int i = 0; i < arrMethod.length; i++) {
			String temp = arrMethod[i];
			String mModi = null;
			String mReturn = null;
			String mName = null;
			String mArgs = null;
			ArrayList<String> argsList = new ArrayList<String>();

			// 1. ����������
			switch (temp.charAt(0)) {
			case '-':
				mModi = "private";
				break;
			case '+':
				mModi = "public";
				break;
			case '#':
				mModi = "protect";
				break;
			default:
				mModi = "void";
				temp = " " + temp;
				break;
			}
			temp = temp.substring(1);
			StringTokenizer tk = new StringTokenizer(temp, "()");

			// ����������, ���� Ÿ��, �޼ҵ� �̸�, �Ű������� ������.
			while (tk.hasMoreTokens()) {
				mName = tk.nextToken();
				mArgs = tk.nextToken();
				mReturn = tk.nextToken();
				mReturn = mReturn.replaceAll(":", "");

				StringTokenizer tk2 = new StringTokenizer(mArgs, ".:");
				while (tk2.hasMoreTokens()) {
					argsList.add(tk2.nextToken());
				}
			}

			// �Ű����� �ڸ���� ������
			mArgs = "";
			for (int j = 0; j < argsList.size(); j += 2) {
				mArgs += argsList.get(j + 1) + " " + argsList.get(j) + ",";
			}
			mArgs = mArgs.substring(0, mArgs.length() - 1);

			String changedMethods = mModi + " " + mReturn + " " + mName + "("
					+ mArgs + "){}";

			result.add(changedMethods);
		}
		return result;
	}

	private ArrayList<String> textToVariables(String[] str) {
		ArrayList<String> result = new ArrayList<String>();

		for (int i = 0; i < str.length; i++) {
			String temp = str[i];
			String modifier = String.valueOf(temp.charAt(0));
			switch (modifier) {
			case "-":
				modifier = "private";
				break;
			case "#":
				modifier = "protected";
				break;
			case " ":
				modifier = " ";
				break;
			case "+":
				modifier = "public";
				break;
			}

			int split1 = temp.indexOf(":"); // :?�� ?��?��?���?.

			String dataName = temp.substring(1, split1);
			String dataType = temp.substring(split1 + 1, temp.length());

			String changedVar = modifier + " " + dataType + " " + dataName
					+ ";";
			result.add(changedVar);

			System.out.println("changed Methods : " + changedVar);

		}
		return result;
	}
}
