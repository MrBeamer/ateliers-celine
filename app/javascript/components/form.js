function checkboxlimit(checkgroup, limit){
	for (let i=0; i<checkgroup.length; i++){
		checkgroup[i].onclick=function(){
		let checkedcount=0;
		for (let i=0; i<checkgroup.length; i++)
			checkedcount+=(checkgroup[i].checked)? 1 : 0;
		if (checkedcount>limit){
			alert("You can only select a maximum of "+limit+" workshops");
			this.checked=false;
			};
		};
	};
};

export { checkboxlimit }