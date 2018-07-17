<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<mapper namespce="boardns">
	<!--  USe type aliases to avoid tying the full classname every time.  -->
	<resultMap id="boardResult"			type="board">
		<result property="num"	     column="num" />
		<result property="writer"    column="writer" />
		<result property="subject"   column="subject" />
		<result property="content"   column="content" />
		<result property="email"     column="email" />
		<result property="readcount" column="readcount" />
		<result property="passwd"    column="passwd" />
		<result property="ref"     	 column="ref" />
		<result property="re_step"	 column="re_step" />
		<result property="re_level"  column="re_level" />
		<result property="ip"  		 column="ip" />
		<result property="reg_date"	 column="reg_date" />
		<result property="del" 		 column="del" />
	</resultMap>
	<!-- <select id="list" parameterType="hashMap" resultMap="boardResult"> -->
	<select id="list" parameterType="board" resultMap="boardResult">
		select * from (select a.*,rowNum rn from(
			select * from board
			<where>
				<if test="keyword != null and search!='subcon'">
					${search} like '%'			
			
			))
	
	</select>	