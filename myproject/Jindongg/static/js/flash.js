
list=["/static/image/数字0.jpg","/static/image/数字1.jpg","/static/image/数字2.jpg","/static/image/数字3.jpg","/static/image/数字4.jpg","/static/image/数字5.jpg","/static/image/数字6.jpg","/static/image/数字7.jpg","/static/image/数字8.jpg","/static/image/数字9.jpg"]
function clocks(){
	date=new Date()
	hours=date.getHours()
	hhours=23-hours
	minu=date.getMinutes()
	mminu=59-minu
	scond=date.getSeconds()
	sscond=59-scond
	console.log(scond)
	H1=list[Math.floor(hhours/10)]/*小时的十位 */
	H2=list[Math.floor(hhours%10)]/*小时的个位*/
	
	m1=list[Math.floor(mminu/10)]/*分钟的十位*/
	m2=list[Math.floor(mminu%10)]/*分钟的个位*/
	
	s1=list[Math.floor(sscond/10)]/*秒钟的十位*/
	s2=list[Math.floor(sscond%10)]/*秒钟的个位*/
	
	document.getElementById("time").src=H1
	document.getElementById("time1").src=H2

		
	document.getElementById("time2").src=m1
	document.getElementById("time3").src=m2
	
	document.getElementById("time4").src=s1
	document.getElementById("time5").src=s2
	setTimeout("clocks()",100)
}

