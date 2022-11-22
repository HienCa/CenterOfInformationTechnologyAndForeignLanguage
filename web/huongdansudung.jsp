<%-- 
    Document   : huongdansudung
    Created on : Sep 25, 2022, 7:49:07 PM
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

        <div class="container bg-white mt-3 card  mb-3 p-3 text-justify">
            <div class="border border-light">
                <h3>#1 ĐĂNG KÝ HỌC</h3>
                <bold>Để sử dụng tính năng này bạn vui lòng chuyển khoản trước cho Trung tâm và lưu lại biên lại hoặc
                    chụp màn hình giao dịch thành công (file ảnh và dung lượng &lt 3MB).</bold> Trong quá trình đăng ký
                học, hệ thống sẽ yêu cầu bạn đính kèm file ảnh chụp giao dịch này vào
                <div class="p-3">
                    1. Nhập MSSV vào ô tìm kiếm, sau đó chọn đúng tên mình hiện bên dưới (xem hình)<br>
                    2. Chọn và sửa lại các thông tin liên lạc (nếu có). Trường hợp các Môn học đã được Trung tâm ấn định
                    cơ sở học thì khi chọn Môn học sẽ tự phát sinh cơ sở học (xem hình)
                    <div class="p-2">
                        <img src="imgs/anhminhhoa1.jpg" alt="">
                    </div>
                    3. Đính kèm hình chụp hóa đơn hoặc màn hình chuyển khoản thành công. Sau đó bấm vào nút Đăng ký (xem
                    hình)
                    <div class="p-2">
                        <img src="imgs/anhminhhoa2.jpg" alt="">
                    </div>
                    4. Đăng ký thành công hệ thống sẽ xuất hiện thông báo. Lưu ý ghi nhớ lại <span
                        class="text-primary">ID đăng ký</span> để kiểm tra tình trạng đăng ký. Bấm vào nút tra cứu để
                    xem lại thông tin đã đăng ký học (xem hình)
                    <div class="p-2">
                        <img src="imgs/anhminhhoa3.jpg" alt="">
                    </div>
                </div>

                <h3>#2 TRA CỨU TÌNH TRẠNG ĐĂNG KÝ</h3>
                <div class="p-2">
                    Trên góc phải của website luôn có 1 ô tìm kiếm để nhập ID đăng ký
                    Màn hình tra cứu <span class="text-primary">ID đăng ký</span> thành công để xem lại thông tin đã
                    đăng ký học (xem hình)
                    <div class="p-2">
                        <img src="imgs/anhminhhoa4.jpg" alt="" style="max-width: 100%">
                    </div>
                </div>

                <h3>#3 THANH TOÁN HỌC PHÍ</h3>
                <div class="p-2">
                    1. Thanh toán trực tiếp tại Phòng ghi danh của Trung Tâm Tin học - Ngoại ngữ<br>
                    <div class="p-3">
                        Vui lòng liên hệ vào giờ hành chính, trừ thứ bảy, chủ nhật và các ngày lễ tết.
                    </div>
                    <h3>Tại trường Đại học Tài nguyên và Môi trường</h3>
                    <div class="ml-3">
                        <h4 class=""><i class="far fa-building pr-2 text-success"></i>Phòng tài chính</h4>
                        <div class="ml-2">
                            236B, Lê Văn Sỹ, Quận Tân Bình<br>
                            Email:truongdaihoctainguyenvamoitruong@gmail.com
                        </div><br>
                        <h4 class=""><i class="fas fa-phone-alt pr-2 text-success"></i>Điện thoại</h4>
                        <div class="ml-2">
                            0384319201 (cơ sở Quận Tân Bình)
                        </div>
                    </div>

                </div>
                2. Chuyển khoản ngân hàng<br>
                <div class="ml-2">
                    Bạn có thể đến bất kỳ ngân hàng nào ở Việt Nam (hoặc sử dụng Internet Banking) để chuyển học phí
                    theo thông tin như sau:<br>

                    Số tài khoản: 0384319201, Chi nhánh Thủ Thiêm, Trung tâm Tin học - Ngoại ngữ Đại học Tài nguyên và Môi trường.
                    <br>

                    <span class="text-danger">Lưu ý:</span><br>
                    <div class="p-3">

                        Bạn phải viết chính xác 100% tên tài khoản và số tài khoản để đảm bảo học phí được chuyển khoản
                        đến
                        đúng nơi.<br>

                        Trong khi chuyển khoản, trong phần nội dung, bạn vui lòng điền đầy đủ thông tin: Họ tên học viên
                        (có
                        thể khác với họ tên người chuyển khoản) Số điện thoại liên hệ - Mã số sinh viên (số CMND hoặc số
                        CCCD) vào phiếu chuyển tiền.<br>
                        Do có rất nhiều giao dịch chuyển khoản, nên bạn nhớ giữ lại thông tin chuyển khoản, chụp màn
                        hình
                        hoặc phiếu biên nhận giao dịch thành công, sau đó bạn có thể dùng hình chụp này để ghi danh học
                        online hoặc gửi email về <span
                            class="text-primary">truongdaihoctainguyenvamoitruong@gmail.com</span> để Bộ phận Ghi danh
                        chúng tôi tiện đối chiếu và
                        xuất
                        biên lai cho bạn.<br>
                        Trung Tâm luôn kiểm tra các giao dịch chuyển khoản mỗi ngày (từ Thứ 2 đến Thứ 6) và sẽ liên hệ
                        với
                        bạn ngay khi nhận được chuyển khoản của bạn (tối đa khoảng 3 ngày).
                    </div>
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