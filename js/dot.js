// addEvnetListener to projects list
var projects=document.querySelectorAll('#projects tbody tr');
for(var i=0;i<projects.length;i++){
	projects[i].addEventListener("click", progressPage);
}
// click on projects entries to progress page
function progressPage(){
	var pid=this.querySelector('th').innerText;
	//var href=location.pathname.replace(/\/+$/, '') + "/" + pid;
	var href="/fgw/project/" + pid;
	//console.log(href);
	if(parent===window){
		location.pathname = href;
	}
	else{
		chParentHref(href.replace('/fgw',''));
	}
}

// addEvnetListener to users list
var projects=document.querySelectorAll('#userlist tbody tr');
for(var i=0;i<projects.length;i++){
	projects[i].addEventListener("click", moduser);
}
// click on users entries to moduser page
function moduser(){
	var user=this.querySelector('td').innerText;
	var href = '/fgw/admin/user/' + user;
	location.pathname = href;
}

// click on users entries to passwd page
function passwd(){
	var user=this.querySelector('td').innerText;
	var href = location.pathname + '/../chpwd/' + user;
	//console.log(href);
	if(parent===window){
		location.pathname = href;
	}
	else{
		chParentHref(href.replace('/fgw',''));
	}
	//var user1=document.querySelector('input').innerText;
	//console.log(user1);
}

// addEvnetListener to alertclosebtn
var alertclosebtn=document.getElementsByClassName('close');
for(var i=0;i<alertclosebtn.length;i++){
	alertclosebtn[i].addEventListener("click", closealert);
}
// close alerts
function closealert(){
	var i=this.parentElement
	i.classList.remove('show');
	setTimeout(function(){i.classList.add('d-none')}, 150);
	// set sth so this alert won't come out again when refresh
}

// addEvnetListener to dropdownbtn
var dropdownbtn=document.querySelectorAll('.dropdown button');
for(var i=0;i<dropdownbtn.length;i++){
	dropdownbtn[i].addEventListener("click", dropdown);
	//dropdownbtn[i].addEventListener("focusout", dropdown);
	dropdownbtn[i].addEventListener("blur", dropdownHide);
}
var dropdownlink=document.getElementsByClassName('dropdown-link');
for(var i=0;i<dropdownlink.length;i++){
	dropdownlink[i].removeEventListener('blur', dropdownHide);
}

// toggle dropdown menu
function dropdown(){
	// add class show to .dropdown
	this.parentElement.classList.toggle('show');
	// add class show to .dropdown-menu
	this.nextElementSibling.classList.toggle('show');
	// change aria-expanded value to true
	//console.log(this.getAttribute('aria-expanded'));
	//this.getAttribute('aria-expanded')=='true' ? this.setAttribute('aria-expanded', 'false') : this.setAttribute('aria-expanded', 'true');
}
function dropdownHide(){
	// add class show to .dropdown
	this.parentElement.classList.remove('show');
	// add class show to .dropdown-menu
	this.nextElementSibling.classList.remove('show');
}

// addEvnetListener to dropdown-item
var dropdownitem=document.querySelectorAll('.dropdown-menu .dropdown-item');
for(var i=0;i<dropdownitem.length;i++){
	dropdownitem[i].addEventListener("mousedown", dropdownmenu);
}
// dropdown menu
function dropdownmenu(){
	for(var i=0;i<dropdownitem.length;i++){
		dropdownitem[i].classList.remove('active');
	}
	this.classList.add('active');
	this.parentElement.previousElementSibling.innerHTML=this.innerHTML;
}

// addEvnetListener to #dates .dropdown-item
var datesDropdownitem=document.querySelectorAll('#dates .dropdown-menu .dropdown-item');
for(var i=0;i<datesDropdownitem.length;i++){
	datesDropdownitem[i].addEventListener("mousedown", toggleWritable);
}

// toggle input wirtable and submit btn visibility in progress page
function toggleWritable(){
	var input=document.querySelectorAll('.writable');
	var submit=document.querySelector('button[type=submit]');
	var yellow=document.getElementsByClassName('dup');
	//console.log(yellow);
	if(this!==document.getElementById('dates').querySelector('.dropdown-menu').firstElementChild){
		//console.log(this);
		// disable inputs
		for(var i=0;i<input.length;i++){
			input[i].setAttribute("disabled","");
			//input[i].setAttribute("readonly","");
		}
		// hide submit
		if(submit) submit.classList.add("d-none");
		// remove yellow color
		for(var i=0;i<yellow.length;i++){
			yellow[i].classList.remove('table-warning');
		}
	}
	else {
		// enable inputs
		for(var i=0;i<input.length;i++){
			input[i].removeAttribute("disabled");
			//input[i].removeAttribute("readonly");
		}
		// show submit
		if(submit) submit.classList.remove("d-none");
		// recover yellow color
		for(var i=0;i<yellow.length;i++){
			yellow[i].classList.add('table-warning');
		}
	}

	// ajax data of selected month
	var xhr =new XMLHttpRequest();
	xhr.onreadystatechange = updateform;
	xhr.open('POST', '/fgw/ajax/getform.php');
	xhr.responseType='json';
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.send("month=" + this.innerText + "&pid=" + document.getElementById('pid').placeholder);

	function updateform(){
		if(xhr.readyState === XMLHttpRequest.DONE){
			if(xhr.status === 200){
				var x = xhr.response;
				var nodata = document.getElementById('nodata');
				//console.log(x);
				if(x){
					document.getElementById('fillby').placeholder=x.fillby;
					document.getElementById('phone').placeholder=x.phone;
					document.getElementById('invest_mon').placeholder=x.invest_mon;
					document.getElementById('problem').placeholder=x.problem;
					document.getElementById('problem').innerText=x.problem;
					document.getElementById('prog').placeholder=x.progress;
					document.getElementById('prog').innerText=x.progress;
					// hide alert 'don't have data of selected month'
					nodata.classList.add('d-none');
				}
				else{
					// alert 'don't have data of selected month'
					//console.log(this);
					//nodata.firstChild.textContent='没有' + this.innerText + '的数据';
					nodata.classList.remove('d-none');
					nodata.classList.add('show');
					
					document.getElementById('fillby').placeholder='';
					document.getElementById('phone').placeholder='';
					document.getElementById('invest_mon').placeholder='';
					document.getElementById('problem').placeholder='';
					document.getElementById('problem').innerText='';
					document.getElementById('prog').placeholder='';
					document.getElementById('prog').innerText='';
				}
			}
		}

	}
}

// addEvnetListener to search
var s=document.getElementById('search');
var c=document.getElementById('clearsearch');
if(s) s.addEventListener('keyup', search);
// search
function search(){
	if(s){
		// value of input
		//var v=s.firstElementChild.value;
		var v=s.value;
		// if v is not empty, show clear icon
		if(v){c.classList.remove('d-none');
		}
		else{
			c.classList.add('d-none');
		}
	}

	var tr=document.getElementsByClassName('searchable');

	// search v in every tr
	for(var i=0;i<tr.length;i++){
		// search v in every td
		for(var j=tr[i].firstElementChild;j;j=j.nextElementSibling){
			// if v is not in j.innerText. NOTE: indexOf(v) returns 0 if v is empty
			if(j.innerText.indexOf(v) !== -1){
				tr[i].classList.remove('d-none');
				j=1; // if find any, j is no longer useful, so we can use it as a switch
				break;
			}
		}
		if(j!==1) tr[i].classList.add('d-none');
	}
}

// addEvnetListener to clearsearch
if(c) c.addEventListener('click', clearsearch);
function clearsearch(){
	s.value="";
	s.focus();
	search();
}

// addEvnetListener to #projects .dropdown-item
var pjDropdownitem=document.querySelectorAll('#type_menu .dropdown-item');
for(var i=0;i<pjDropdownitem.length;i++){
	pjDropdownitem[i].addEventListener("mousedown", searchType);
}

function searchType(i){
	var tr=document.getElementsByClassName('searchable');
	if(i==1){
		i=document.getElementById('type_btn');
	}
	else{
		i=this;
	}
	var type=i.firstChild.textContent.replace(/ /g,'');
	// console.log(type);
	for(var i=0;i<tr.length;i++){
		if(type == tr[i].getAttribute('data-type') || type == '所有类型'){
			tr[i].classList.remove('d-none');
		}
		else{
			tr[i].classList.add('d-none');
		}
	}
}

function countType(){
	var tr=document.getElementsByClassName('searchable');
	var type=document.getElementsByClassName('count');
	// every type
	for(var i=0;i<type.length;i++){
		type[i].innerText = document.querySelectorAll(".searchable[data-type='" + type[i].previousSibling.textContent.replace(/ /g,'') + "']").length;
	}
	// all types
	allType = document.getElementsByClassName('count_all');
	for(var i=0;i<allType.length;i++){
		allType[i].innerText = tr.length;
	}
}

var myProj=document.getElementById('myproject');
if(myProj){
	// count my projs;
	var myOid=myProj.getAttribute('data-oid');
	countMy = document.querySelectorAll('tr[data-oid="' + myOid + '"]').length;
	document.getElementById('count_my').innerText = countMy;
	// count type
	//count_all = document.getElementsByClassName('count_all')[0];
	//count_type_a= document.getElementsByClassName('count_type_a')[0];
	//count_type_b= document.getElementsByClassName('count_type_b')[0];
	//count_type_c= document.getElementsByClassName('count_type_c')[0];
	//count_type_d= document.getElementsByClassName('count_type_d')[0];
	
	//count_all.innerText = '';
	//count_type_a.innerText = '';
	//count_type_b.innerText = '';
	//count_type_c.innerText = '';
	//count_type_d.innerText = '';
	
	countType();
	// addEvnetListener to #myproject
	myProj.addEventListener('click', toggleMy);
}
// toggle my projects
function toggleMy(){
	this.classList.toggle('btn-outline-info');
	this.classList.toggle('btn-info');


	// tr(s) that "data-oid" attribute NOT equal to myOid
	var selector='table tbody tr:not([data-oid="' + myOid + '"])';
	var tr=document.querySelectorAll(selector);
	//console.log(tr);

	// search oid in every tr's data-oid
	for(var i=0;i<tr.length;i++){
		if(this.classList.contains('btn-info')){
			tr[i].classList.add('d-none');
			tr[i].classList.remove('searchable');
		}
		else{
			tr[i].classList.remove('d-none');
			tr[i].classList.add('searchable');
		}
	}
	countType();
	searchType(1);
	if (s && s.value) {
		search(); // to filter
	}
}

// addEvnetListener to upload
var u=document.querySelector('#upload input');
if(u) u.addEventListener('change', chname);
function chname(){
	u.nextElementSibling.innerText=u.value;
}

// addEvnetListener to monthpicker
var m=document.getElementsByClassName('pickmonth');
for(var i=0;i<m.length;i++){
	//m[i].addEventListener("click", pickmonth);
	//m[i].addEventListener("blur", function(){ pickmonth(1, m[i]); });
}
function pickmonth(i){
	if(i===1){
		//var m=document.querySelectorAll('.pickmonth');
		//console.log(this);
		//console.log(m);
		//m.nextElementSibling.classList.add('d-none');
		//var m=document.getElementsByClassName('monthpicker');
		//for(var i=0; i<m.length; i++)
		//	m[i].classList.add('d-none');
		//console.log(this);
		return;
	}
	if(! this.hasAttribute('readonly')){
		if(! this.nextElementSibling){
			var html=document.getElementById('monthpicker').cloneNode(true);
			html.className="position-absolute monthpicker";
			html.removeAttribute('id');
			this.parentElement.appendChild(html);
		}
		else{
			this.nextElementSibling.classList.remove('d-none');
		}
	}
}

// addEvnetListener to login password
var p=document.getElementById('inputPassword');
if(p) p.addEventListener("keyup", encrytpass);
function  encrytpass(){
	//console.log(md5('1'));
	//console.log(p.value);
	//p.value=(md5(p.value));
}

// addEvnetListener to img thumbnails
var thumb=document.getElementsByClassName('img-fluid');
for(var i=0;i<thumb.length;i++){
	thumb[i].addEventListener("click", showImg);
}
function showImg(){
	var d = document.getElementById('popimg');
	d.firstElementChild.src=this.src.replace('thumb/','');
	d.classList.remove('d-none');
	d.classList.add('show');
	layer.classList.remove('d-none');
	layer.classList.add('show');
	d.setAttribute('style', 'margin-left: ' + -d.clientWidth/2 +'px; margin-top:' + -d.clientHeight/2 + 'px;');
}

// addEvnetListener to popimgclose btn
var popimgclose=document.getElementById('popimgclose');
if(popimgclose) popimgclose.addEventListener('click', closelayer);
// addEvnetListener to layer
var layer=document.getElementById('layer');
if(layer) layer.addEventListener('click', closelayer);
// close opacity layer
function closelayer(){
	layer.classList.remove('show');
	setTimeout(function(){layer.classList.add('d-none')}, 150);
	popimgclose.click();
}

// some jquery
if(m.length > 0){
	$('.pickmonth').datepicker({
		format: 'yyyy-mm',
		minViewMode: 1,
		language: "zh-CN",
		autoclose: true
	});
}

//var a = document.getElementsByTagName('a');
//for(var i=0; i<a.length; i++){
//	if(a[i].href!==0){
//		//a[i].addEventListener('click', callParent);
//	}
//}

function callParent(){
	//parent.postMessage(location.pathname, '*');
	var h=this.href;
	var hh=h.slice(h.indexOf('fgw')+3);
	//console.log(hh);
	parent.postMessage(hh, '*');
}
function chParentHref(path){
	parent.postMessage(path, '*');
}

// addEvnetListener to btn in 404
var backbtn = document.querySelector('#notfound button');
if(backbtn) backbtn.addEventListener("click", function(){history.back()});

function tdToObject(){
	var a = document.getElementsByTagName('tr');
	o={};
	for (var i=0; i<a.length; i++) {
		o[i]=[];
		if (i == 0) {
			var b = a[i].getElementsByTagName('th');
		}
		else {
			var b = a[i].getElementsByTagName('td');
		}
		for (var j=0; j<b.length; j++){
			o[i][j] = b[j].innerText;

		}
	}
}
// addEvnetListener to #exportbtn
var expbtn = document.getElementById('exportbtn');
if(expbtn) expbtn.addEventListener("click", xlsx);

function xlsx(){
	var t = document.getElementById('allprog');
	var tt = t.cloneNode(true);
	var tr = tt.getElementsByClassName('d-none');
	var l = tr.length;
	for (var i=0; i < l; i++){
		if (tr[0]) tr[0].remove();
	}
	var wb = XLSX.utils.table_to_book(tt, {sheet:"进度月报"});
	//console.log(wb);
	// var a = '我的';
	// var b = ['工业类', '商贸类', '基建类', '乡村振兴类'];
	// filename = a + b[i] + '进度月报' + date + '.xlsx';
	var month = document.getElementById('month').innerText.trim();
	filename = month;
	var b1 = document.getElementById('myproject');
	if (b1.classList.contains('btn-info')) {
		filename += '我的';
	}
	var b2 = document.getElementById('type_btn');
	if (b2.firstElementChild.classList.contains('count')) {
		filename += b2.firstChild.textContent.replace(/ /g, '') + '类';
	}
	var t = new Date();
	var date = '';
	date += t.getFullYear()
		+ ('0' + (t.getMonth() + 1)).slice(-2)
		+ ('0' + t.getDate()).slice(-2)
		+ ('0' + t.getHours()).slice(-2)
		+ ('0' + t.getMinutes()).slice(-2)
		+ ('0' + t.getSeconds()).slice(-2);
	filename += '进度月报_' + date + '.xlsx' ;
	XLSX.writeFile(wb, filename ,{bookType: "xlsx"});
}

// addEvnetListener to #nav-tab .nav-item
var navitems = document.getElementsByClassName('nav-item');
if(navitems) {
	for (var i=0;i<navitems.length; i++) navitems[i].addEventListener("click", shownavitem);
}

function shownavitem(){
	//console.log('fuck');
	//active tab;
	for (var i=0;i<navitems.length; i++) navitems[i].classList.remove('active');
	this.classList.add('active');
	//console.log(this.id.replace('-tab', ''));
	
	//active tab content
	//var tabcon = document.getElementById(this.id.replace('-tab', ''));
}


// addEvnetListener to .procradio
var radioProc = document.getElementsByClassName('procradio');
if(radioProc) {
	for (var i=0;i<radioProc.length; i++) radioProc[i].addEventListener("click", updateProc);
}

function updateProc(){
	// var pid;
	var code = this.firstElementChild.getAttribute('name');
	var v = this.firstElementChild.id.replace(code + '-', '');
	var xhr = new XMLHttpRequest();
	// xhr.onreadystatechange = updateform;
	xhr.open('POST', '/fgw/ajax/updateproc.php');
	xhr.responseType='json';
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.send("v=" + v + "&code=" + code + "&pid=" + document.getElementById('pid').placeholder);
	// console.log("v=" + v + "&code=" + code + "&pid=" + document.getElementById('pid').placeholder);
}
