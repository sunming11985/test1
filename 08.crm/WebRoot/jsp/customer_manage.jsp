<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>客户管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- 导入easyui的资源文件 -->
<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
<link id="themeLink" rel="stylesheet" type="text/css"
	href="../easyui/themes/default/easyui.css">
</head>

<body>
	<table id="list"></table>

	<!-- 工具条 -->
	<div id="tb">
		<a id="addBtn" href="#" class="easyui-linkbutton"
			data-options="iconCls:'icon-add',plain:true">添加</a> <a id="editBtn"
			href="#" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit',plain:true">修改</a> <a
			id="deleteBtn" href="#" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove',plain:true">删除</a>
	</div>

	<!-- 编辑窗口 -->
	<div id="win" class="easyui-window" title="客户数据编辑"
		style="width: 500px; height: 300px"
		data-options="iconCls:'icon-save',modal:true,closed:true">
		<form id="editForm" method="post">
			<%--提供id隐藏域 --%>
			<input type="hidden" name="stu_id"> 客户姓名：<input id="name"
				type="text" name="stu_name" class="easyui-validatebox"
				data-options="required:true" onblur="isChinese();" /> <span
				id="nameMessage" style="color: red;"></span> <br /> 客户性别： <input
				type="radio" name="sex" value="男" />男 <input type="radio"
				name="sex" value="女" />女 <span id="genderMessage"
				style="color: red;"></span> <br /> 客户手机：<input type="text"
				name="mtel" class="easyui-validatebox"
				data-options="required:true" /><br /> 客户住址：<input type="text"
				name="address" class="easyui-validatebox"
				data-options="required:true" /><br /> <a id="saveBtn" href="#"
				class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		</form>
	</div>
	
	
	<div id="win1" class="easyui-window" title="客户数据编辑"
		style="width: 500px; height: 300px"
		data-options="iconCls:'icon-save',modal:true,closed:true">
		<form id="editForm1" method="post">
			<%--提供id隐藏域 --%>
			<input type="hidden" name="stu_id"> 客户姓名：<input id="stu_name"
				name="stu_name" class="easyui-textbox" /> <span
				id="nameMessage" style="color: red;"></span> <br /> 客户性别： <input
				type="radio" name="sex1" value="男" />男 <input type="radio"
				name="sex1" value="女" />女 <span id="genderMessage"
				style="color: red;"></span> <br /> 客户手机：<input
				name="mtel" class="easyui-textbox" id="mtel"
				/><br /> 客户住址：<input 
				name="address" class="easyui-textbox" id="address"
				/><br /> <a id="saveBtn1" href="#"
				class="easyui-linkbutton" onclick="saveBtn()" data-options="iconCls:'icon-save'">保存</a>
		</form>
	</div>
	

	<script type="text/javascript">
		$(function() {
			$("#list").datagrid({
				//url:后台数据查询的地址
				url : "../customer/listByPage.action",
				//columns：填充的列数据
				//field:后台对象的属性
				//tille:列标题
				columns : [ [ {
					field : "ck",
					checkbox : true
				}, {
					field : "stu_id",
					title : "学生编号",
					width : 100
				}, {
					field : "stu_name",
					title : "学生姓名",
					width : 200
				}, {
					field : "sex",
					title : "学生性别",
					width : 200
				}, {
					field : "mtel",
					title : "学生手机",
					width : 200
				}, {
					field : "qq",
					title : "QQ号",
					width : 200
				}, {
					field : "address",
					title : "地址",
					width : 200
				}, {
					field : "birthday",
					title : "生日",
					width : 200
				}, {
					field : "stu_status",
					title : "状态",
					width : 200
				} ] ],
				//显示分页
				pagination : true,
				//工具条
				toolbar : "#tb"
			});
		});
		//打开编辑窗口
		$("#addBtn").click(function() {
			//清空表单数据
			$("#editForm1").form("clear");
			$("#win1").window("open");
		});
		
		
		function saveBtn(){
			$.post("../customer/save.action",{
				stu_name:$("#stu_name").textbox("getValue"),
				sex:$('input:radio[name="sex1"]:checked').val(),
				mtel:$("#mtel").textbox("getValue"),
				address:$("#address").textbox("getValue")
			},function(res){
				alert(res.success);
				$("#win1").window("close");
				//刷新datagrid
				$("#list").datagrid("reload");
			})
		}
		

		//保存数据
		$("#saveBtn").click(function() {
			$("#editForm").form("submit", {
				//url: 提交到后台的地址
				url : "../customer/update.action",
				//onSubmit: 表单提交前的回调函数，true：提交表单   false：不提交表单
				onSubmit : function() {
					//判断表单的验证是否都通过了
					if (!isChecked()) {
						return false;
					}
					return $("#editForm").form("validate");
				},
				//success:服务器执行完毕回调函数
				success : function(data) { //data: 服务器返回的数据，类型字符串类
					//要求Controller返回的数据格式：  
					//成功：{success:true} 失败:{success:false,msg:错误信息}

					//把data字符串类型转换对象类型
					data = eval("(" + data + ")");

					if (data.success) {
						//关闭窗口
						$("#win").window("close");
						//刷新datagrid
						$("#list").datagrid("reload");

						$.messager.alert("提示", "保存成功", "info");
					} else {
						$.messager.alert("提示", "保存失败：" + data.msg, "error");
					}
				}
			});

		});

		//修改数据
		$("#editBtn").click(
				function() {
					//判断只能选择一行
					var rows = $("#list").datagrid("getSelections");
					if (rows.length != 1) {
						$.messager.alert("提示", "修改操作只能选择一行", "warning");
						return;
					}

					//表单回显
					$("#editForm").form("load",
							"../customer/findById.action?id=" + rows[0].stu_id);

					$("#win").window("open");
				});

		//导出

		function exportS() {

			var rows = $("#bg").datagrid("getSelections");
			var ids = [];
			for (var i = 0, j = rows.length; i < j; i++) {
				ids.push(rows[i].s_Id);
			}

			var datagridTitle = [];
			var fields = $("#bg").datagrid('getColumnFields');
			for (var i = 0; i < fields.length - 2; i++) {
				var option = $("#bg")
						.datagrid('getColumnOption', fields[i + 1]);
				if (option.field != "checkItem" && option.hidden != true) { //过滤勾选框和隐藏列
					if (option.title != null && option.title != "") {
						datagridTitle.push(option.title);
					}
				}
			}
			if (ids == null || ids == "") {
				alert("您还没有选择学生");
			} else {
				$.post("../customer/exports.action", {
					data : ids,
					title : datagridTitle
				}, function(res) {
					if (res.msg == true) {
						$.messager.alert('提示', '导出成功');
					} else {
						$.messager.alert('提示', '导出失败');
					}
				});
			}

		}
		//删除

		$("#deleteBtn").click(
				function() {
					var rows = $("#list").datagrid("getSelections");
					if (rows.length == 0) {
						$.messager.alert("提示", "删除操作至少选择一行", "warning");
						return;
					}

					//格式： id=1&id=2&id=3
					$.messager.confirm("提示", "确认删除数据吗?", function(value) {
						if (value) {
							/* var idStr = "";
							//遍历数据
							$(rows).each(function(i) {
								idStr += ("id=" + rows[i].stu_id + "&");
							});
							idStr = idStr.substring(0, idStr.length - 1); */
							
							var ids = [];
							for (var i = 0, j = rows.length; i < j; i++) {
								ids.push(rows[i].stu_id);
							}
							
							/* alert(ids); */
							//传递到后台
							$.post("../customer/delete.action", {
								id : ids
							}, function(data) {
								if (data.success) {
									//刷新datagrid
									$("#list").datagrid("reload");

									$.messager.alert("提示", "删除成功", "info");
								} else {
									$.messager.alert("提示", "删除失败：" + data.msg,
											"error");
								}
							}, "json");
						}
					});
				});
		/* }); */

		function isChinese(str) {
			var name = $("#name").val();
			if (!(escape(name).indexOf("%u") != -1)) {
				$("#name").focus();
				$("#nameMessage").text("请输入包含中文的名字！");
			} else {
				$("#nameMessage").text("");
			}
		}
		function isChecked() {
			var checkedFlg = false;
			$("input[name='sex']").each(function(i) {
				if ($("input[name='sex']")[i].checked) {
					checkedFlg = true;
				} else {
					checkedFlg = false;
				}
			});
			if (checkedFlg) {
				$("#genderMessage").text("");
			} else {
				$("#genderMessage").text("请选择性别！");
			}
			return checkedFlg;
		}
	</script>
</body>
</html>
