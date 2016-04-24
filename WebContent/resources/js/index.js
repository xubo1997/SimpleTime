var pageNo = 1,pageSize = 8;

$(function(){
	/*加载首页数据*/
	loadDate();
});

/**
 * 加载首页数据
 */
function loadDate(){
	/*记载图书数据*/
	loadBook();
	/*加载电影数据*/
	loadMovie();
}
/**
 * 加载图书数据
 */
function loadBook(){
	var param = {pageNo:pageNo,pageSize:pageSize}
	$.ajax({
		url:"book/book_getIndexData",
		type:"POST",
		data:param,
		success:function(result){
			getBookHtml(result.data);
		}
	});
}
/**
 * 将图书数据插入首页
 * @param data
 */
function getBookHtml(data){
	var str = "";
	for(var i=0;i<data.length;i++){
		var book = data[i];
		var name = book.name.length>8?book.name.substring(0, 8)+"...":book.name;
		var author = book.author.length>7?book.author.substring(0, 7)+"...":book.author;
		str += "<li><div><a href='#'><img src='"+book.photoUrl+"' data-origin='"+book.photoUrl+"' alt='"+book.name+
		"'></a></div><div class='title'><a href='#'>"+name+"</a></div><div class='author'><a href='#'>"+author+"</a></div></li>";
	}
	$("#book_ul").append(str);
}
function loadMovie(){
	var param = {pageNo:pageNo,pageSize:pageSize}
	$.ajax({
		url:"movie/movie_getIndexData",
		type:"POST",
		data:param,
		success:function(result){
			console.log(result);
			getMovieHtml(result.data);
		}
	});
}
function getMovieHtml(data){
	var str = "";
	for(var i=0;i<data.length;i++){
		var movie = data[i];
		var name = movie.name.length>8?movie.name.substring(0, 8)+"...":movie.name;
		str += "<li><div><a href='#'><img src='"+movie.photoUrl+"' data-origin='"+movie.photoUrl+"' alt='"+movie.name+
		"'></a></div><div class='title'><a href='#'>"+name+"</a></div></li>";
	}
	$("#movie_ul").append(str);
}