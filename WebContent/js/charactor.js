/**
 * 
 */
function setvalue(){//将选择框中的选项填入输入框中
				var select=document.querySelector('select');
				var index=select.selectedIndex;
				var input=document.querySelector('input');
				input.value=select[index].value;
			}

