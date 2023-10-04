<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성하기</title>
<style type="text/css">
	div.grid{
		display: grid;
		grid-template-columns: 80px 1fr;
		grid-template-rows: 28px 28px 28px 320px 1fr;
		row-gap: 10px;
	}
	div.grid > div.btn-group {
		display: grid;
		grid-column: 1 / 3;
	}
	div.grid div.right-align {
		text-align: right;
	}
	label {
		padding-left: 10px;
	}
	button, input, textarea {
		padding: 10px;
	}
	input[type=file] {
		padding: 0px;
	}
	
</style>
</head>
<body>
	<h1>게시글 작성</h1>
	<form method="post" enctype="multipart/form-data">
		<div class="grid">
			<label for="subject">제목</label>
			<input id="subject" type="text" name="subject" value="${boardVO.subject}" />
			
			<label for="email">이메일</label>
			<input id="email" type="email" name="email" value="${boardVO.email}" />

			<label for="file">첨부파일</label>
			<input id="file" type="file" name="file"/>
			
			<label for="content">내용</label>
			<textarea id="content" name="content" style="height: 300px;" value="${boardVO.content}"></textarea>
			
			<div class="btn-group">
				<div class="right-align">
					<input type="submit" value="저장" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>