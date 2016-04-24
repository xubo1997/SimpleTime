<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>轻简时光</title>
<link rel="stylesheet" href="resources/css/amaze/amazeui.css" />
<link rel="stylesheet" href="resources/css/common/common.css" />
<script type="text/javascript" src="resources/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="resources/js/amaze/amazeui.js"></script>
<link rel="stylesheet" href="resources/css/index.css" />
<script type="text/javascript" src="resources/js/index.js" ></script>
</head>
<body>
	<div>
		<!-- 导航头Strat -->
		<header class="am-topbar am-topbar-fixed-top">
			<div class="widthlimit">
				<h1 class="am-topbar-brand">
					<a href="#">轻简时光</a>
				</h1>

				<button
					class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
					data-am-collapse="{target: '#doc-topbar-collapse'}">
					<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
				</button>

				<div class="am-collapse am-topbar-collapse">
					<ul class="am-nav am-nav-pills am-topbar-nav">
						<li><a href="#">读书</a></li>
						<li><a href="#">电影</a></li>
						<li><a href="#">音乐</a></li>
						<li><a href="#">文章</a></li>
					</ul>

					<form class="am-topbar-form am-topbar-left am-form-inline"
						role="search">
						<div class="am-form-group">
							<input type="text" class="am-form-field am-input-sm"
								placeholder="书籍、电影、音乐、文章" style="width:350px">
							<button type="button" class="am-btn am-btn-sm am-btn-success am-radius"><i class="am-icon-search"></i></button>
						</div>
					</form>

					<div class="am-topbar-right">
						<div class="am-dropdown"
							data-am-dropdown="{boundary: '.am-topbar'}">
							<button
								class="am-btn am-btn-secondary am-topbar-btn am-btn-sm am-dropdown-toggle"
								data-am-dropdown-toggle>
								其他 <span class="am-icon-caret-down"></span>
							</button>
							<ul class="am-dropdown-content">
								<li><a href="#">注册</a></li>
								<li><a href="#">随便看看</a></li>
							</ul>
						</div>
					</div>

					<div class="am-topbar-right">
						<button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
					</div>
				</div>
			</div>
		</header>
		<!-- 导航头End -->
		<!--  -->
		<!--  -->
		<!-- 书籍Strat -->
		<div class="book_div">
			<div class="widthlimit">
				<div class="group_left">
					<h2><a href="#">读书</a></h2>
					<div>
						<ul class="am-list">
						  <li><a href="#">分类浏览</a></li>
						  <li><a href="#">阅读</a></li>
						  <li><a href="#">书评</a></li>
						  <li><a href="#">作者</a></li>
						</ul>
					</div>
				</div>
				<div class="group_middle">
					<h3>新书速递</h3>
					<div>
						<ul id="book_ul">
							<!-- <li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li> -->
						</ul>
					</div>
				</div>
				<div class="group_right">
					<h3>热门标签</h3>
					<div>
						<ul>
							<li>
								<a href="#">青春文学</a>
							</li>
							<li>
								<a href="#">历史小说</a>
							</li>
							<li>
								<a href="#">武侠小说</a>
							</li>
							<li>
								<a href="#">军事小说</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 书籍End -->
		<!-- 电影Strat -->
		<div class="movie_div">
			<div class="widthlimit">
				<div class="group_left">
					<h2><a href="#">电影</a></h2>
					<div>
						<ul class="am-list">
						  <li><a href="#">分类浏览</a></li>
						  <li><a href="#">阅读</a></li>
						  <li><a href="#">书评</a></li>
						  <li><a href="#">作者</a></li>
						</ul>
					</div>
				</div>
				<div class="group_middle">
					<h3>火爆新片</h3>
					<div>
						<ul id="movie_ul">
							<!-- <li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li> -->
							
						</ul>
					</div>
				</div>
				<div class="group_right">
					<h3>热门标签</h3>
					<div>
						<ul>
							<li>
								<a href="#">恐怖</a>
							</li>
							<li>
								<a href="#">喜剧</a>
							</li>
							<li>
								<a href="#">武侠</a>
							</li>
							<li>
								<a href="#">纪实</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 电影End -->
		<!-- 音乐Strat -->
		<div class="music_div">
			<<div class="widthlimit">
				<div class="group_left">
					<h2><a href="#">音乐</a></h2>
					<div>
						<ul class="am-list">
						  <li><a href="#">分类浏览</a></li>
						  <li><a href="#">阅读</a></li>
						  <li><a href="#">书评</a></li>
						  <li><a href="#">作者</a></li>
						</ul>
					</div>
				</div>
				<div class="group_middle">
					<h3>音乐推荐</h3>
					<div>
						<ul>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
								
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
								
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img3.doubanio.com/mpic/s28476570.jpg" data-origin="https://img3.doubanio.com/mpic/s28476570.jpg" alt="人生只差好好静度时光">
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="group_right">
					<h3>热门标签</h3>
					<div>
						<ul>
							<li>
								<a href="#">青春文学</a>
							</li>
							<li>
								<a href="#">历史小说</a>
							</li>
							<li>
								<a href="#">武侠小说</a>
							</li>
							<li>
								<a href="#">军事小说</a>
							</li>
						</ul>
					</div>
				</div>
		</div>
		<!-- 音乐End -->
		<!-- 文章Strat -->
		<div class="article_div">
			<div class="widthlimit">
				<div class="group_left">
					<h2><a href="#">文章</a></h2>
					<div>
						<ul class="am-list">
						  <li><a href="#">分类浏览</a></li>
						  <li><a href="#">阅读</a></li>
						  <li><a href="#">书评</a></li>
						  <li><a href="#">作者</a></li>
						</ul>
					</div>
				</div>
				<div class="group_middle">
					<h3>火爆新片</h3>
					<div>
						<ul>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
							<li>
								<div>
									<a href="#">
										<img src="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" data-origin="https://img1.doubanio.com/view/movie_poster_cover/spst/public/p2324130709.jpg" alt="奇幻森林">
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="group_right">
					<h3>热门标签</h3>
					<div>
						<ul>
							<li>
								<a href="#">恐怖</a>
							</li>
							<li>
								<a href="#">喜剧</a>
							</li>
							<li>
								<a href="#">武侠</a>
							</li>
							<li>
								<a href="#">纪实</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 文章End -->
	</div>
</body>
</html>
