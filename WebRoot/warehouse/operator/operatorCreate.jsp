<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- easyUI CSS -->
<link rel="stylesheet" type="text/css"
	href="../../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../themes/icon.css">
<!-- easyui js -->
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
</head>
<body style="padding-left: 30%">
	<div class="easyui-panel" title="填写员工信息"
		style="width:100%;max-width:400px;padding:30px 60px;">
		<form id="operator" method="post">
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="id" style="width:100%"
					data-options="label:'员工编号：',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="name" style="width:100%"
					data-options="label:'姓名：',required:true,">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="pwd" style="width:100%"
					data-options="label:'密码',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="power" style="width:100%"
					data-options="label:'权限',required:true">
			</div>
			<div style="text-align:center;padding:5px 0">
				<a href="#" class="easyui-linkbutton" onclick="submitForm()"
					style="width:80px">创建</a> <a href="#" class="easyui-linkbutton"
					onclick="clearForm()" style="width:80px">清除</a><a
					class="easyui-linkbutton"
					href="${pageContext.request.contextPath}/warehouse/operator/operatorList.jsp"
					style="width:80px">返回</a>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	function submitForm() {
		$('#operator')
				.form(
						'submit',
						{
							url : '${pageContext.request.contextPath}/warehouse/operator/add.action',
							success : function() {
								alert("添加成功")
							}

						})
	}
	function clearForm() {
		$('#operator').form('clear');
	}
</script>
</html>

