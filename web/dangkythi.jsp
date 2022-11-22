<%-- 
    Document   : dangkythi
    Created on : Sep 25, 2022, 7:48:04 PM
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
        <div class=" p-2 container  text-white d-flex align-items-center rounded ">
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

        <div class="container bg-white mt-3 card  mb-3">
            <div class=" m-4 ">
                <a href="" class="text-decoration-none text-center  p-2 text-dark">
                        <h2>
                            <i class="fas fa-university"></i>
                            ĐĂNG KÝ THI
                        </h2>
                </a>
                <div class=" p-5 card mt-2 position-relative">

                    <div class="p-2">
                        <p class="text-danger">* là các tiêu chí bắt buộc không được bỏ trống!</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <span>Mã định danh</span>
                                <a href="#" id="" class="tutorial">
                                    <span class="text-primary">Hướng dẫn cách nhập</span>
                                    <div id="tutorial" class="tutorialPopup rounded">
                                        <div class="contentTutorial w-100 m-auto bg-secondary p-5">
                                            <div class="contentTutorial__head d-flex justify-content-between">
                                                <h4 class="text-white m-auto ">Hướng dẫn nhập Mã</h4>

                                            </div>
                                            <div class="contentTutorial__body">
                                                <div class="contentTutorial__body__item bg-light p-2 m-3 rounded">
                                                    <div class="text-primary">Nhập MSSV đối với:</div>
                                                    <p class="">Sinh viên Đại học tại HCMUNRE</p>
                                                </div>
                                                <div class="contentTutorial__body__item bg-light p-2 m-3 rounded">
                                                    <div class="text-primary">Nhập Mã học viên đối với:</div>
                                                    <p class="">Học viên Cao học tại HCMUNRE</p>
                                                </div>
                                                <div class="contentTutorial__body__item bg-light p-2 m-3 rounded">
                                                    <div class="text-primary">Nhập CMND, CCCD đối với:</div>
                                                    <p class="">Người đăng ký hiên không học tại HCMUNRE</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>

                                <span class="text-danger">*</span>
                                <input type="text" class="w-100 p-2 card" placeholder="Nhập MSSV, Mã học viên, CCCD, CMND">

                            </div>
                            <div class="col-lg-6">
                                <span>Môn thi</span><span class="text-danger"> *</span>
                                <select name="" id="" class="w-100 h-75 p-2 ">
                                    <option value="">
                                        Chọn môn thi
                                    </option>
                                    <option value="">
                                        Tiếng anh đầu vào
                                    </option>
                                    <option value="">
                                        Tin học đầu vào
                                    </option>
                                    <option value="">
                                        TOEIC chuẩn đầu ra trường đại học
                                    </option>
                                    <option value="">
                                        Ứng dụng CNTT cơ bản
                                    </option>
                                </select>
                            </div>

                            <button class="btn btn-primary p-2 w-100 mt-3">Đăng ký</button>

                        </div>

                        
                    </div>
                </div>

            </div>
                <div class="position-absolute w-50 bg-primary p-5 rounded text-center d-none">
                    <h3 class="text-success p-2 fa-border-3 ">Đăng ký thành công!</h3>
                    <div class="successPopup__item">
                        <div class="">
                            <i class="fas fa-user-check mr-2"></i> ID đăng ký của bạn là: <span class="text-danger">111</span> 
                        </div>
                        <div class="">
                            <i class="fas fa-info mr-2"></i> Để xem lại thông tin đăng ký, bấm vào nút Tra cứu. 
                        </div>
                    </div>
                    <div class="d-flex mt-3 justify-content-center">
                        <a href="index.html" class="p-2 bg-success mr-2 rounded text-white text-decoration-none">
                            <span class="">Trang chủ</span>
                        </a>
                        <span class="bg-success p-2 rounded text-white border-0">
                          Tra cứu
                        </span>
                    </div>
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