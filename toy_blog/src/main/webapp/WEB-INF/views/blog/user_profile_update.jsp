<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#fileUpload {

 border: 4px dashed #bcbcbc;
 height: 100px;
 width: 700px;
 text-align: center;
 margin: auto;



}
</style>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
</head>

<body>
   <script type="text/javascript">
            $(document).ready(function(){
                var objDragAndDrop = $(".dragAndDropDiv");

                $(document).on("dragenter",".dragAndDropDiv",function(e){
                    e.stopPropagation();
                    e.preventDefault();
                    $(this).css('border', '2px solid #0B85A1');
                });
                $(document).on("dragover",".dragAndDropDiv",function(e){
                    e.stopPropagation();
                    e.preventDefault();
                });
                $(document).on("drop",".dragAndDropDiv",function(e){

                    $(this).css('border', '2px dotted #0B85A1');
                    e.preventDefault();
                    var files = e.originalEvent.dataTransfer.files;

                    handleFileUpload(files,objDragAndDrop);
                });

                $(document).on('dragenter', function (e){
                    e.stopPropagation();
                    e.preventDefault();
                });
                $(document).on('dragover', function (e){
                  e.stopPropagation();
                  e.preventDefault();
                  objDragAndDrop.css('border', '2px dotted #0B85A1');
                });
                $(document).on('drop', function (e){
                    e.stopPropagation();
                    e.preventDefault();
                });

                function handleFileUpload(files,obj)
                {
                   for (var i = 0; i < files.length; i++)
                   {
                        var fd = new FormData();
                        fd.append('file', files[i]);

                        var status = new createStatusbar(obj); //Using this we can set progress.
                        status.setFileNameSize(files[i].name,files[i].size);
                        sendFileToServer(fd,status);

                   }
                }

                var rowCount=0;
                function createStatusbar(obj){

                    rowCount++;
                    var row="odd";
                    if(rowCount %2 ==0) row ="even";
                    this.statusbar = $("<div class='statusbar "+row+"'></div>");
                    this.filename = $("<div class='filename'></div>").appendTo(this.statusbar);
                    this.size = $("<div class='filesize'></div>").appendTo(this.statusbar);
                    this.progressBar = $("<div class='progressBar'><div></div></div>").appendTo(this.statusbar);
                    this.abort = $("<div class='abort'>중지</div>").appendTo(this.statusbar);

                    obj.after(this.statusbar);

                    this.setFileNameSize = function(name,size){
                        var sizeStr="";
                        var sizeKB = size/1024;
                        if(parseInt(sizeKB) > 1024){
                            var sizeMB = sizeKB/1024;
                            sizeStr = sizeMB.toFixed(2)+" MB";
                        }else{
                            sizeStr = sizeKB.toFixed(2)+" KB";
                        }

                        this.filename.html(name);
                        this.size.html(sizeStr);
                    }

                    this.setProgress = function(progress){
                        var progressBarWidth =progress*this.progressBar.width()/ 100;
                        this.progressBar.find('div').animate({ width: progressBarWidth }, 10).html(progress + "% ");
                        if(parseInt(progress) >= 100)
                        {
                            this.abort.hide();
                        }
                    }

                    this.setAbort = function(jqxhr){
                        var sb = this.statusbar;
                        this.abort.click(function()
                        {
                            jqxhr.abort();
                            sb.hide();
                        });
                    }
                }

                function sendFileToServer(formData,status)
                {
                    var uploadURL = "/lxa/blog/fileUpload/profile"; //Upload URL
                    var extraData ={}; //Extra Data.
                    var jqXHR=$.ajax({
                            xhr: function() {
                            var xhrobj = $.ajaxSettings.xhr();
                            if (xhrobj.upload) {
                                    xhrobj.upload.addEventListener('progress', function(event) {
                                        var percent = 0;
                                        var position = event.loaded || event.position;
                                        var total = event.total;
                                        if (event.lengthComputable) {
                                            percent = Math.ceil(position / total * 100);
                                        }
                                        //Set progress
                                        status.setProgress(percent);
                                    }, false);
                                }
                            return xhrobj;
                        },
                        url: uploadURL,
                        type: "POST",
                        contentType:false,
                        processData: false,
                        cache: false,
                        data: formData,
                        success: function(data){
                            status.setProgress(100);

                            //$("#status1").append("File upload Done<br>");
                        }
                    });

                    status.setAbort(jqXHR);
                }

            });
        </script>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
<div style="max-width: 1000px; margin-right: auto; margin-left: auto; margin-top: 100px;">
<div style="margin-left: auto; margin-right: auto; text-align:center; margin-top: 30px; margin-bottom: 20px;">


	<h2><p class="mb-0"><spring:message code="profileinfo"/></p></h2>

</div>

			<form action="profile_info" method="post" onsubmit="return validate()">
				<table style="margin-left:auto; margin-right: auto;  margin-top : 30px; width: 70%; margin-bottom: 100px;">
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputname1">프로필 사진</label>
							<%-- <input type="text" class="form-control" name="profile_img" value="${blog_info.profile_img}"> --%>
							<div id="fileUpload" class="dragAndDropDiv"><h5 style="margin-top: 40px;">사진을 드래그해주세요.</h5></div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group">
							<label for="exampleInputPassword1">프로필 한줄설명</label>
							<input type="text" class="form-control" name="profile_info" value = "${blog_info.profile_info }">
						</div>
					</td>
				</tr>



				<tr>
					<td>
						<button type="submit" class="btn btn-primary"><i class="fas fa-edit">&nbsp;update</i></button>
					</td>
				</tr>
				</table>
			</form>

</div>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>