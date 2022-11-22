<%-- 
    Document   : tracuudiem
    Created on : Sep 25, 2022, 7:49:26 PM
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
                
                <a href="tracuudiem.jsp" class="text-decoration-none p-2 position-relative rounded itemRelativeParent">
                    <i class="fas fa-book-reader"></i>
                    <span>Tra cứu điểm</span>

                    <ul class="position-absolute bg-light rounded  itemAbsoluteParent d-none"
                        style="min-width: 250px; left:0; bottom:-230px;">
                        <li class="p-3 hover"><i class="fas fa-laptop mr-2 "></i>Tin học đầu vào</li>
                        <li class="p-3 hover"><i class="fas fa-desktop mr-2"></i>Ứng dụng CNTT Cơ bản</li>
                        <li class="p-3 hover"><i class="fas fa-language mr-2"></i>Tiếng Anh B1</li>
                        <li class="p-3 hover position-relative itemRelativeChild"><i class="fas fa-globe mr-2"></i>Tiếng
                            Anh chuẩn TOEIC
                            <ul class="position-absolute bg-success  itemAbsoluteChild"
                                style="right:-200px; bottom:-80px;">
                                <li class=" p-3 hover" style="min-width: 200px; ">Đầu ra</li>
                                <li class=" p-3 hover" style="min-width: 200px;">Đầu vào</li>
                            </ul>
                        </li>
                    </ul>
                </a>
                <a href="huongdansudung.jsp" class="text-decoration-none p-2">
                    <i class="fas fa-question-circle"></i>
                    <span>Hướng dẫn sử dụng</span>
                </a>
                <input type="text" class="position-relative rounded border-primary pl-5 border-0 bg-light " placeholder="Tra cứu thông tin">
                <i class="fas fa-search position-absolute text-primary" style="right: 480px; top:210px"></i>
            </div>
        </div>

        <div class="container bg-white mt-3 p-3 mb-3 text-center">
            <h2>TRA CỨU ĐIỂM THI</h2>
               <div class="d-flex align-items-center">
                     <span class="w-25">MSSV, CCCD, CMND:</span> <input type="text" class="w-75 p-2 rounded card"  placeholder="Nhập MSSV, MSHV vào đây...">
               </div>
                <!-- <select name="monhoc" id=" " class="p-2 rounded">
                    <option value="" class="bg-success font-weight-bold">Chọn môn học để tra cứu điểm</option>
                    <option value=""> Ứng dụng CNTT Cơ bản</option>
                    <option value="">Tin học đầu vào</option>
                    <option value="">Tiếng Anh B1</option>
                    <option value="">Tiếng Anh tăng cường</option>
                    <option value="">Tiếng Anh chuẩn TOEIC đầu vào</option>
                    <option value="">Tiếng Anh chuẩn TOEIC đầu ra</option>
                </select> -->
                <div class="d-flex mt-2 align-items-center">
                    <span class="w-25">Kỳ Thi: </span ><input type="text" class="w-75 p-2 rounded card" placeholder="Nhập mã kỳ thi theo đ/mm/yyyy">

                </div>


            <button class="bg-primary border-0 rounded text-white p-2 w-25 mt-2">Xem kết quả</button>
        </div>

        <div class="container">
            <table class="table text-center">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Môn học</th>
                        <th scope="col">Điểm LT</th>
                        <th scope="col">Điểm TH</th>
                        <th scope="col">Thời Gian Đăng Ký</th>
                        <th scope="col">Thời Gian Thi</th>
                        <th scope="col">Kết quả</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Tiếng Anh chuẩn TOEIC đầu vào</td>
                        <td>450</td>
                        <td></td>
                        <td>01/01/2022</td>
                        <td>01/02/2022</td>
                        <td class="text-success">Đạt</td>

                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Tiếng Anh chuẩn TOEIC đầu ra</td>
                        <td>990</td>
                        <td></td>
                        <td>01/08/2022</td>
                        <td>01/09/2022</td>
                        <td class="text-success">Đạt</td>

                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Ứng dụng CNTT Cơ bản</td>
                        <td>9.0</td>
                        <td>8.5</td>
                        <td>01/08/2022</td>
                        <td>02/09/2022</td>
                        <td class="text-success">Đạt</td>

                    </tr>
                </tbody>
            </table>

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