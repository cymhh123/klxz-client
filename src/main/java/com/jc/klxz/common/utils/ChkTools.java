package com.jc.klxz.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 校验工具栏
 * 
 * @author uninf
 * 
 */
public class ChkTools {
	
	public static boolean isNullAllString(String[] str){
		for(int i=0;i<str.length;i++){
			if (str[i] == null || "".equals(str[i].toString())) {
				return true;
			}
		}
		return false;
	}// #isNull

	public static boolean isNull(Integer num) {
		if (num == null || num == 0) {
			return true;
		} else {
			return false;
		}
	}// #isNull

	public static boolean isNull(Object str) {
		if (str == null || "".equals(str.toString())) {
			return true;
		} else {
			return false;
		}
	}// #isNull

	public static boolean isNull(Object[] strs) {
		if (strs == null || strs.length == 0) {
			return true;
		} else {
			return false;
		}
	}// #isNull

	public static boolean isNull(List<?> list) {
		if (list == null || list.size() == 0) {
			return true;
		} else {
			return false;
		}
	}// #isNull
	
	
	public static boolean isNotNullAllString(String[] str){
		return !isNullAllString(str);
	}
	public static boolean isNotNull(List<?> list) {
		return !isNull(list);
	}// #isNotNull

	public static boolean isNotNull(Object str) {
		return !isNull(str);
	}// #isNotNull

	public static boolean isNotNull(Object[] str) {
		return !isNull(str);
	}// #isNotNull

	public static boolean isNotNull(Integer num) {
		return !isNull(num);
	}// #isNotNull

	/**
	 * 验证是否为邮箱
	 * 
	 * @param arg
	 * @return
	 */
	public static boolean isMail(String acc) {
		/**
		 * 判断帐号是否为Email 鉴于现在Email帐号前缀和后缀复杂性，所以判断 @ 和 .} 是否存在以及其的位置
		 * 
		 * @param acc
		 * @return
		 */
		if (acc == null || acc.length() < 5) {
			// #如果帐号小于5位，则肯定不可能为邮箱帐号eg: x@x.x
			return false;
		}
		if (!acc.contains("@")) {// 判断是否含有@符号
			return false;// 没有@则肯定不是邮箱
		}
		String[] sAcc = acc.split("@");
		if (sAcc.length != 2) {// # 数组长度不为2则包含2个以上的@符号，不为邮箱帐号
			return false;
		}
		if (sAcc[0].length() <= 0) {// #@前段为邮箱用户名，自定义的话至少长度为1，其他暂不验证
			return false;
		}
		if (sAcc[1].length() < 3 || !sAcc[1].contains(".")) {
			// # @后面为域名，位数小于3位则不为有效的域名信息
			// #如果后端不包含.则肯定不是邮箱的域名信息
			return false;
		} else {
			if (sAcc[1].substring(sAcc[1].length() - 1).equals(".")) {
				// # 最后一位不能为.结束
				return false;
			}
			String[] sDomain = sAcc[1].split("\\.");
			// #将域名拆分 coowhy.com/ 或者 .com.cn.xxx
			for (String s : sDomain) {
				if (s.length() <= 0) {
					System.err.println(s);
					return false;
				}
			}

		}
		return true;
	}

	public static boolean isIngteger(String arg) {
		if (isNull(arg)) {
			return false;
		}
		return arg.matches("-{0,1}\\d+");
	}
	
	/**
	 *无法解析 返回-1
	 * @param arg
	 * @return
	 */
	public static Integer getInteger(String arg) {
		if (isIngteger(arg)) {
			return new Integer(arg);
		} else {
			return -1;
		}
	}
	
	/**
	 * @Description 获取页码数，无法解析返回1
	 * @param arg
	 * @return
	 */
	public static Integer getPageInteger(String arg) {
		if (isIngteger(arg)) {
			return new Integer(arg);
		} else {
			return 1;
		}
	}

	/**
	 * 
	 * @Description: 根据(方法中,访问地址中)的参数类型返回相应的数据类型
	 * @param reqParamValue
	 * @param paramType
	 * @return
	 * @throws
	 */
	public static Object getNumber(String reqParamValue, Class<?> paramType) {
		if (reqParamValue == null) {
			reqParamValue = "0";
		}
		if (paramType == char.class || paramType == Character.class) {
			throw new RuntimeException("参数不支持char,请改用String.");
		} else if (paramType == byte.class || paramType == Byte.class) {
			return ChkTools.isIngteger(reqParamValue) ? new Byte(reqParamValue)
					: (byte) 0;
		} else if (paramType == short.class || paramType == Short.class) {
			return ChkTools.isIngteger(reqParamValue) ? new Short(reqParamValue)
					: (short) 0;
		} else if (paramType == int.class || paramType == Integer.class) {
			return ChkTools.getInteger(reqParamValue);
		} else if (paramType == long.class || paramType == Long.class) {
			return ChkTools.isIngteger(reqParamValue) ? new Long(reqParamValue)
					: (long) 0;
		} else if (paramType == float.class || paramType == Float.class) {
			return ChkTools.isIngteger(reqParamValue) ? new Float(reqParamValue)
					: (float) 0;
		} else if (paramType == double.class || paramType == Double.class) {
			return ChkTools.isIngteger(reqParamValue) ? new Double(
					reqParamValue) : (double) 0;
		} else if (paramType == boolean.class || paramType == Boolean.class) {
			throw new RuntimeException("参数不支持boolean,请改用String的true,false.");
		}
		return reqParamValue;
	}

	/**
	 * 
	 * @Description:判断是否为基本数据类型
	 * @param paramType
	 * @return
	 * @throws
	 */
	public static boolean isBasicType(Class<?> paramType) {
		Class<?>[] basic = { Boolean.class, Character.class, Byte.class,
				Short.class, Integer.class, Long.class, Float.class,
				Double.class };
		for (Class<?> b : basic) {
			if (b.equals(paramType)) {
				return true;
			}
		}
		if (paramType.isPrimitive()) {
			return true;
		}
		return false;
	}

	/**
	 * 
	 * @Description:判断时间格式00:00:00
	 * @param time
	 * @return
	 * @throws
	 */
	public static boolean isTimeFormat(String time) {
		String format = "^([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$";
		if (isNull(time)) {
			return false;
		}
		if (time.matches(format)) {
			return true;
		}
		return false;
	}
	/**
	 * 验证是否为手机号
	 * 
	 * @param arg
	 * @return
	 */
	public static boolean isMobileNO(String mobiles) {
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(17[^4,\\D])|(18[0-9]))\\d{8}$");
		Matcher m = p.matcher(mobiles);
		return m.matches();
	}
	
	public static boolean isIdcard(String idcard){
		Pattern p=Pattern.compile("([0-9]{17}([0-9]|X|x))|([0-9]{15})");
		Matcher m=p.matcher(idcard);
		return m.matches();
	}
	
	public static boolean isStandardDate(String [] date){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0;i<date.length;i++){
			try {
				sdf.parse(date[i]);
			} catch (ParseException e) {
				return false;
			}
		}
		return true;
	}
	
	public static boolean isMobilePhone1NOArray(String [] phone){
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(17[^4,\\D])|(18[0-9]))\\d{8}$");
		for(int i=0;i<phone.length;i++){
			Matcher m = p.matcher(phone[i]);
			if(!m.matches()){
				return false;
			}
		}
		return true;
	}
	
	public static boolean isMobilePhone2NOArray(String [] phone){
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(17[^4,\\D])|(18[0-9]))\\d{8}$");
		for(int i=0;i<phone.length;i++){
			if(isNull(phone[i])){
				continue;
			}
			Matcher m = p.matcher(phone[i]);
			if(!m.matches()){
				return false;
			}
		}
		return true;
	}
	
	public static boolean isStandardSex(String [] sex){
		for(int i=0;i<sex.length;i++){
			if("男".equals(sex[i])||"女".equals(sex[i])){
				continue;
			}else{
				return false;
			}
		}
		
		return true;
	}
	
	public static void phoneTrim(String[] phone){
		for(int i=0;i<phone.length;i++){
			phone[i]=phone[i].trim();
		}
	}
	
	public static void main(String[] args) {
		ChkTools c=new ChkTools();
		System.out.println(c.isNullAllString(new String[]{"454",""}));
	}
 

       
}
