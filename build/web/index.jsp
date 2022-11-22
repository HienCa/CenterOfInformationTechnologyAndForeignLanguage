<%-- 
    Document   : index
    Created on : Sep 25, 2022, 7:39:59 PM
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
    <title>Trung tâm tin học ngoại ngữ HCMUNRE</title>
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

        <div class="container bg-white mt-3 mb-3 pt-4 pb-4">
            <div class="d-flex align-items-center  pb-2">
                <img src="imgs/logohcmunre.png" alt="" class=" mr-3" style="width: 150px">
                <div>
                    <span>
                        <i class="far fa-clock"></i>
                        <span>10/12/2022</span>
                    </span>
                    <a href="">

                        <p>
                            DANH SÁCH SINH VIÊN ĐÃ ĐÓNG LỆ PHÍ THI TIẾNG ANH TOEIC (ĐỢT NGÀY 16/10/2022)
                        </p>
                    </a>

                </div>
            </div>
        </div>
        <div class="container bg-white mt-3 mb-3 pt-4 pb-4">

            <div class="d-flex align-items-center  pb-2 mt-3">
                <img src="imgs/logohcmunre.png" alt="" class=" mr-3" style="width: 150px">
                <div>
                    <span>
                        <i class="far fa-clock"></i>
                        <span>10/12/2022</span>
                    </span>
                    <a href="">

                        <p>
                            THÔNG BÁO THI TIẾNG ANH TOEIC CHO SINH VIÊN CÁC KHÓA ĐANG THEO HỌC TẠI TRƯỜNG - ĐỢT NGÀY
                            16/10/2022
                        </p>
                    </a>

                </div>
            </div>
        </div>
        <div class="container bg-white mt-3 mb-3 pt-4 pb-4">

            <div class="d-flex align-items-center  pb-2 mt-3">
                <img src="imgs/logohcmunre.png" alt="" class=" mr-3" style="width: 150px">
                <div>
                    <span>
                        <i class="far fa-clock"></i>
                        <span>25/08/2022</span>
                    </span>

                    <p>
                        <a href="">

                            DANH SÁCH THÍ SINH ĐÃ ĐÓNG LỆ PHÍ THI CHỨNG CHỈ ỨNG DỤNG CÔNG NGHỆ THÔNG TIN CƠ BẢN (ĐỢT
                            NGÀY 16/10/2022
                        </a>
                        <br>
                        <span class="text-danger">Danh sách còn cập nhật đến 24h ngày 22/09/2022</span>
                    </p>

                </div>
            </div>
        </div>
        <div class="container bg-white mt-3 mb-3 pt-4 pb-4">

            <div class="d-flex align-items-center  pb-2 mt-3">
                <img src="imgs/logohcmunre.png" alt="" class=" mr-3" style="width: 150px">
                <div>
                    <span>
                        <i class="far fa-clock"></i>
                        <span>10/12/2022</span>
                    </span>
                    <a href="">

                        <p>
                            THÔNG BÁO THI CHỨNG CHỈ ỨNG DỤNG CÔNG NGHỆ THÔNG TIN CƠ BẢN (KHÓA NGÀY 16/10/2022)
                        </p>
                    </a>

                </div>
            </div>

        </div>
        <div class="container bg-white mt-3 mb-3 pt-4 pb-4">

            <div class="d-flex align-items-center  pb-2 mt-3">
                <img src="imgs/logohcmunre.png" alt="" class=" mr-3" style="width: 150px">
                <div>
                    <span>
                        <i class="far fa-clock"></i>
                        <span>23/08/2022</span>
                    </span>
                    <a href="">
                        <p>
                            DANH SÁCH SINH VIÊN THAM DỰ KỲ THI TIẾNG ANH TOEIC ĐẦU RA (ĐỢT NGÀY 28/8/2022)
                        </p>
                    </a>
                </div>
            </div>


        </div>

        <div class="container-fluid bg-info pt-2 pb-2 text-white">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <h3>GIỚI THIỆU FLIC</h3>
                        Trung tâm Ngoại ngữ - Tin học thuộc Trường Đại học Tài nguyên và Môi trường thành phố Hồ Chí
                        Minh có
                        tên giao dịch
                        quốc tế là
                        Foreign Languages - Informatics Center (Viết tắt là FLIC).

                    </div>

                    <div class="col-lg-4">
                        <h3>THÔNG BÁO</h3>
                        <i class="fas fa-greater-than mr-2"></i>1-Thông báo khai giảng lớp ôn tập kiến thức tiếng Anh từ
                        bậc 2 đến bậc 5 theo Khung năng lực ngoại
                        ngữ 6 bậc dùng cho Việt Nam – Khoá tháng 10/2022<br>
                        <i class="fas fa-greater-than mr-2"></i>2-Thông báo tổ chức thi và cấp chứng chỉ tiếng Anh bậc
                        2, bậc 3 – 5 theo Khung năng lực ngoại ngữ 6
                        bậc dùng cho Việt Nam – Khoá thi tháng 10<br>
                        <i class="fas fa-greater-than mr-2"></i>Thông báo khai giảng lớp ôn tập kiến thức tiếng Anh từ
                        bậc 1 đến bậc 5 theo Khung NLNN 6 bậc dùng
                        cho Việt Nam – Khóa tháng 12/2022<br>
                        <i class="fas fa-greater-than mr-2"></i>Thông báo về tổ chức thi và cấp chứng chỉ tiếng Anh bậc
                        2, bậc 3-5 – Tháng 7/2022

                    </div>

                    <div class="col-lg-4">
                        <h3>THÔNG TIN LIÊN HỆ</h3>
                        236B, Lê Văn Sỹ, Quận Tân Bình, Tp.HCM<br>
                        0384319201<br>
                        daihoctainguyenvamoitruong@flic.edu.com.com<br>
                        Website: https://www.hcmunre.edu.vn<br>

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