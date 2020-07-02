function menu(one, two) {// 子菜单显示（one：大菜单 ，two：小菜单）
	var two = document.querySelectorAll(two);
	var set = document.getElementById(one);
	set.onmouseover = function() {
		for (var i = two.length - 1; i >= 0; i--) {
			two[i].style.display = 'block';
		}
	}
	set.onmouseout = function() {
		for (var i = two.length - 1; i >= 0; i--) {
			two[i].style.display = 'none';
		}
	}
	for (var i = two.length - 1; i >= 0; i--) {
		two[i].onmouseover = function() {
			for (var i = two.length - 1; i >= 0; i--) {
				two[i].style.display = 'block';
			}
		}
	}
	for (var i = two.length - 1; i >= 0; i--) {
		two[i].onmouseleave = function() {
			for (var i = two.length - 1; i >= 0; i--) {
				two[i].style.display = 'none';
			}
		}
	}
}
function table_discoloration(tbody) {// 表格颜色跟着鼠标变化
	var body = document.querySelector(tbody);
	var tr = body.querySelectorAll('tr');
	for (var i = tr.length - 1; i >= 0; i--) {
		tr[i].onmouseover = function() {
			this.className = 'background-gray';
		}
		tr[i].onmouseout = function() {
			this.className = '';
		}
	}
}
function getCookie(name) {// 获取cookie值
	var strcookie = document.cookie;// 获取cookie字符串
	var arrcookie = strcookie.split("; ");// 分割
	// 遍历匹配
	for (var i = 0; i < arrcookie.length; i++) {
		var arr = arrcookie[i].split("=");
		if (arr[0] == name) {
			return arr[1];
		}
	}
	return "";
}
function Judge_option(select) {// 判断选择的选项
	var option = getCookie('select');
	var select = document.querySelector(select);
	for (var i = select.options.length - 1; i >= 0; i--) {
		if (select.options[i].value == option) {
			select.options[i].selected = true;
			break;
		}
	}
}
function Page_location(table, page) {// 列表页数提示字显示位置
	var tables = document.querySelectorAll(table);
	var page = document.querySelector(page);
	var table;
	if (getCookie('select') == '非在职员工') {
		table = tables[1];
	} else {
		table = tables[0];
	}
	page.style.top = table.offsetHeight + window.screen.availHeight * 0.2
			+ 'px';
}
function Option_subString(select) {// 将最后的代码删除显示
	var select = document.querySelector(select);
	var options = select.children;
	for (var i = 0; i < options.length; i++) {
		if (options[i].innerHTML != '全部' && options[i].innerHTML != '非在职员工'&& options[i].innerHTML != '已禁用用户') {
			var last = options[i].innerHTML.lastIndexOf('-');
			var word = options[i].innerHTML.substring(0, last);
			options[i].innerHTML = word;
		}
	}
}
function delCookie(name)
{//删除cookie
var exp = new Date();
exp.setTime(exp.getTime() - 1);
var cval=getCookie(name);
if(cval!=null)
document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}