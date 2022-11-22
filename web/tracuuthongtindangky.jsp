<%-- 
    Document   : tracuuthongtindangky
    Created on : Sep 25, 2022, 7:49:44 PM
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tra cứu thông tin đã đăng ký</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/index.css">
</head>

<body>
    <div class="container-fluid bg-info">
        <div class=" p-2 container  text-white d-flex align-items-center rounded">
            <img src="imgs/logohcmunre.png" alt="" class="" style="height:100px">
            <p class="pl-4 ">TRUNG TÂM NGOẠI NGỮ - TIN HỌC 
                <br>TRƯỜNG ĐẠI HỌC TÀI NGUYÊN VÀ MÔI TRƯỜNG TP. HỒ CHÍ MINH
        </div>
    </div>
    <div class="app bg-light">
        <div class="container text-center p-3">
            <div class="text-info bg-white p-2">Số tài khoản:0384319201, Chi nhánh Vietcombank Thủ Thiêm, Trung tâm
                Ngoại ngữ - Tin học Đại học Tài nguyên và Môi trường TPHCM</div>
        </div>

        <div class="container-fluid bg-white">
            <div class="container d-flex align-item-center justify-content-between p-2">
                <a href="index.jsp" class="text-decoration-none p-2">
                    <i class="fas fa-home"></i>
                    <span>Trang chủ</span>
                </a>

                <a href="LoadFormInfo" class="text-decoration-none p-2">
                    <i class="fas fa-home"></i>
                    <span>Đăng ký học</span>
                </a>
                <a href="dangkythi.jsp" class="text-decoration-none p-2">
                    <i class="fas fa-home"></i>
                    <span>Đăng ký thi</span>
                </a>
                
                <a href="tracuudiem.jsp" class="text-decoration-none p-2">
                    <i class="fas fa-book-reader"></i>
                    <span>Tra cứu điểm</span>
                </a>
                <a href="huongdansudung.jsp" class="text-decoration-none p-2">
                    <i class="fas fa-question-circle"></i>
                    <span>Hướng dẫn sử dụng</span>
                </a>
                <input type="text" class="position-relative rounded border-primary pl-5 border-0 bg-light " placeholder="Tra cứu thông tin">
                <i class="fas fa-search position-absolute text-primary" style="right: 480px; top:210px"></i>
            </div>
        </div>

        <div class="container bg-light mt-3  mb-3">
            <div class="mb-3 text-center ">
                <span class="font-weight-bolder lead  ">ID: #0018</span>
            </div>
            <div class="bg-white p-5">
                <div class="row">
                    <div class="col-lg-6">
                        <h5>Thông tin cá nhân</h5>
                        Họ tên: <span class="font-weight-bold">Nguyễn Văn Hiền</span><br>
                        Lớp: <span class="font-weight-bold">10AB</span><br>
                        Email: <span class="font-weight-bold">nguyenvanhien@gmail.com</span><br>
                        Điện thoại: <span class="font-weight-bold">0384319202</span>
                    </div>
                    <div class="col-lg-6 text-right">
                        <h5>Thông tin đăng ký</h5>
                        MSSV/CCCD/CMND: <span class="font-weight-bold">342032301</span><br>
                        Thời gian: <span class="font-weight-bold">01/09/2022</span>
                    </div>
                </div>
                <div class="row mt-5">
                    <h2>Chi tiết đăng ký</h2>
                    <table class="table table-striped text-center">
                        <thead class="">
                          <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Môn học</th>
                            <th scope="col">Cơ sở</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Buổi học</th>
                            <th scope="col">Tình trạng</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>TOEIC đầu ra</td>
                            <td>Trung tâm HCMUNRE</td>
                            <td>236B, Lê Văn Sỹ, Quận Tân Bình, Tp.HCM</td>
                            <td>Tối 2, 4, 6</td>
                            <td><span class="text-success">Đã duyệt <i class="fas fa-check"></i></span></td>
                          </tr>
                          
                          <tr>
                            <th scope="row">2</th>
                            <td>Ứng dụng CNTT cơ bản</td>
                            <td>Trung tâm HCMUNRE</td>
                            <td>236B, Lê Văn Sỹ, Quận Tân Bình, Tp.HCM</td>
                            <td>Tối 3, 5, 7</td>
                            <td><span class="text-warning">Đang chờ duyệt</span></td>
                          </tr>

                        </tbody>
                      </table>
                </div>
            </div>
        </div>

    </div>




    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>