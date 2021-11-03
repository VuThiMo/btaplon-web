-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2021 lúc 12:51 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email_phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `idTheme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `email_phone`, `password`, `role`, `website`, `idTheme`) VALUES
(1, 'lan@gmail.com', '123', 'admin', 'web ban dong ho', 4),
(13, 'lanhoaiquy@gmail.com', '123', 'user', 'shopbanhang', 5),
(14, 'hang@gmail.com', '123', 'user', 'web ban hang', 6),
(16, 'nam@gmail.com', '123', 'user', 'shopbanhoa', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feeds`
--

CREATE TABLE `feeds` (
  `id` int(11) NOT NULL,
  `content` varchar(800) NOT NULL,
  `urlimage` varchar(200) NOT NULL,
  `idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feeds`
--

INSERT INTO `feeds` (`id`, `content`, `urlimage`, `idAccount`) VALUES
(1, 'chao cac ban', 'mailndndnd', 13),
(2, '', './uploads/1635948245132924758618296d519874hinh-nen-dep-cho-may-tinh-full-hd-1.jpg', 13),
(3, 'hello', './uploads/16359482811837838732618296f9799ce', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theme`
--

INSERT INTO `theme` (`id`, `content`) VALUES
(4, '<!doctype html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <!-- Required meta tags -->\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n    <!-- Bootstrap CSS -->\r\n    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n        integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/user.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/chat.css\">\r\n\r\n    <title>gapo</title>\r\n</head>\r\n\r\n<body>\r\n    <!--  bỏ cái height: 80px; ở row  và thêm padding: 20px; ở img đầu tiên để như cũ reponsive bị vỡ layout -->\r\n    <div class=\"row\" style=\"background-color: rgb(115, 204, 245); \">\r\n        <div class=\"col\" >\r\n            <img src=\"https://www.gapo.vn/assets/images/logo%20gapo.svg\" style=\"padding: 20px\" ;alt=\"\">\r\n        </div>\r\n        <div class=\"col\">\r\n            <div style=\"height: 15px;\"></div>\r\n            <div class=\"message\">\r\n                <a href=\"\">\r\n                    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"25\" height=\"25\" fill=\"currentColor\"\r\n                        class=\"bi bi-chat-quote\" viewBox=\"0 0 16 16\">\r\n                        <path\r\n                            d=\"M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z\" />\r\n                        <path\r\n                            d=\"M7.066 6.76A1.665 1.665 0 0 0 4 7.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 0 0 .6.58c1.486-1.54 1.293-3.214.682-4.112zm4 0A1.665 1.665 0 0 0 8 7.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 0 0 .6.58c1.486-1.54 1.293-3.214.682-4.112z\" />\r\n                    </svg>message\r\n                </a>\r\n                <a href=\"\">\r\n                   <img src=\"https://xemanhdep.com/wp-content/uploads/2016/04/anh-girl-xinh-9x-de-thuong.jpg\" class=\"canhan\" alt=\"\">###Email_phone \r\n                </a>\r\n                <a href=\"\" style=\"margin-left:10%;\">\r\n                    logout\r\n                </a>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"container\" style=\"background-color: rgb(236, 229, 200);\">\r\n        <br><br><br><br><br>\r\n    \r\n        <form action=\"?controller=website\" enctype=\"multipart/form-data\" method=\"POST\">\r\n          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-pen\" viewBox=\"0 0 16 16\">\r\n            <path d=\"m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z\" />\r\n          </svg>\r\n          <h3 style=\" text-align: center; color:red\"> Viết blog</h3>\r\n          <div class=\"giua\" style=\" justify-content: center;\">\r\n            <textarea id=\"tutorial\" name=\"tutorial\" rows=\"5\" cols=\"45\" placeholder=\"bạn đang nghĩ gì \"></textarea>\r\n            <br>\r\n            <input type=\"file\" name=\"upload_file\">\r\n    \r\n            <input type=\"submit\" value=\"Upload \" name=\"submit\" style=\" background-color: rgb(0, 81, 255); color: cornsilk; \">\r\n          </div>\r\n        </form>\r\n    </div>\r\n\r\n    ###Content\r\n\r\n    <div>Footer</div>\r\n    <ul id=\"messages\" ></ul>\r\n    <form id=\"form\" action=\"\">\r\n        <input id=\"input\" autocomplete=\"off\" /><button style=\"background-color:red\">Send</button>\r\n    </form>\r\n\r\n    <!-- Optional JavaScript; choose one of the two! -->\r\n\r\n    <!-- Option 1: Bootstrap Bundle with Popper -->\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"\r\n        integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\"\r\n        crossorigin=\"anonymous\"></script>\r\n\r\n    <!-- Option 2: Separate Popper and Bootstrap JS -->\r\n    <!--\r\n    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js\" integrity=\"sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB\" crossorigin=\"anonymous\"></script>\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13\" crossorigin=\"anonymous\"></script>\r\n    -->\r\n    <script src=\"http://localhost:3000/socket.io/socket.io.js\"></script>\r\n    <script>\r\n        var socket = io(\'http://localhost:3000\');\r\n\r\n        var form = document.getElementById(\'form\');\r\n        var input = document.getElementById(\'input\');\r\n\r\n        form.addEventListener(\'submit\', function (e) {\r\n            e.preventDefault();\r\n            if (input.value) {\r\n                socket.emit(\'chat message\', input.value);\r\n                input.value = \'\';\r\n            }\r\n        });\r\n           //nhận dữ liệu trả về từ server\r\n        socket.on(\'chat message\', function (msg) {\r\n            console.log(\"msg\",msg);\r\n            var item = document.createElement(\'li\');\r\n            item.textContent = msg;\r\n            messages.appendChild(item);\r\n            window.scrollTo(0, document.body.scrollHeight);\r\n        });\r\n    </script>\r\n</body>\r\n\r\n</html>'),
(5, '<!doctype html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <!-- Required meta tags -->\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n    <!-- Bootstrap CSS -->\r\n    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n        integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/user.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/chat.css\">\r\n    <title>gapo</title>\r\n</head>\r\n\r\n<body>\r\n    <!-- <div class=\"container\"> -->\r\n    \r\n    <div class=\"row\" style=\"background-color: rgb(138, 208, 236); \">\r\n        <div class=\"col\">\r\n            <img src=\"https://www.gapo.vn/assets/images/logo%20gapo.svg\" style=\"padding: 20px\" ;alt=\"\">\r\n        </div>\r\n        <div class=\"col\">\r\n            <div style=\"height: 15px;\"></div>\r\n            <div class=\"message\">\r\n\r\n                <a href=\"\">\r\n                    <img src=\"https://xemanhdep.com/wp-content/uploads/2016/04/anh-girl-xinh-9x-de-thuong.jpg\"\r\n                        class=\"canhan\" alt=\"\">###Email_phone\r\n                </a>\r\n                <a href=\"\" style=\"margin-left:10%;\">\r\n                    logout\r\n                </a>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n    <div>\r\n\r\n        <div>\r\n            <br><br><br><br><br>\r\n\r\n            <form action=\"?controller=website\" enctype=\"multipart/form-data\" method=\"POST\">\r\n               \r\n                <h3 style=\" text-align: center; color:red\">\r\n                    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-pen\"\r\n                        viewBox=\"0 0 16 16\">\r\n                        <path\r\n                            d=\"m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z\" />\r\n                    </svg>\r\n                   Xin chào Gapoer\r\n                </h3>\r\n                <div class=\"giua\" style=\" justify-content: center;\">\r\n                    <textarea id=\"tutorial\" name=\"tutorial\" rows=\"5\" cols=\"45\"\r\n                        placeholder=\"bạn đang nghĩ gì \"></textarea>\r\n                    <br>\r\n                    <input type=\"file\" name=\"upload_file\">\r\n\r\n                    <input type=\"submit\" value=\"Upload \" name=\"submit\"\r\n                        style=\" background-color: rgb(0, 81, 255); color: cornsilk; \">\r\n                </div>\r\n            </form>\r\n\r\n        </div>\r\n        ###Content\r\n\r\n\r\n        <!-- <ul id=\"messages\" ></ul>\r\n    <form id=\"form\" action=\"\" >\r\n        <input id=\"input\" autocomplete=\"off\" /><button style=\"background-color:red\">Send</button>\r\n    </form> -->\r\n\r\n\r\n        <div style=\"height: 300px;width: 300px;float: right;\">\r\n            <div id=\"chat\" style=\"background-color: rgb(255, 164, 60);height: 300px;width: 300px; float:right  \">\r\n                <ul id=\"messages\" style=\"height: 300px;width: 300px;background-color: snow;\"></ul>\r\n               \r\n                <div class=\"row g-3 align-items-center\" style=\"margin-left: 5px;\">\r\n\r\n                    <div class=\"col-auto\">\r\n                        <form id=\"form\" action=\"\" style=\"width: 300px; margin-left:955px ;\">\r\n                            <input id=\"input\" autocomplete=\"off\" /><button style=\"background-color:red\">Send</button>\r\n                        </form> \r\n                    </div>\r\n                    <!-- <div class=\"col-auto\" style=\"float:left;margin-top: 20px;\">\r\n                        <button style=\"background-color: red;color: rgb(236, 229, 200);\">Send</button>\r\n                    </div> -->\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n    <!-- <div style=\"height: 90px; background-color: rgb(60, 242, 255);\"></div> -->\r\n\r\n    <!-- Optional JavaScript; choose one of the two! -->\r\n\r\n    <!-- Option 1: Bootstrap Bundle with Popper -->\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"\r\n        integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\"\r\n        crossorigin=\"anonymous\"></script>\r\n\r\n    <!-- Option 2: Separate Popper and Bootstrap JS -->\r\n    <!--\r\n    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js\" integrity=\"sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB\" crossorigin=\"anonymous\"></script>\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13\" crossorigin=\"anonymous\"></script>\r\n    -->\r\n    <script src=\"http://localhost:3000/socket.io/socket.io.js\"></script>\r\n    <script>\r\n        var socket = io(\'http://localhost:3000\');\r\n\r\n        var form = document.getElementById(\'form\');\r\n        var input = document.getElementById(\'input\');\r\n\r\n        form.addEventListener(\'submit\', function (e) {\r\n            e.preventDefault();\r\n            if (input.value) {\r\n                socket.emit(\'chat message\', input.value);\r\n                input.value = \'\';\r\n            }\r\n        });\r\n        //nhận dữ liệu trả về từ server\r\n        socket.on(\'chat message\', function (msg) {\r\n            console.log(\"msg\", msg);\r\n            var item = document.createElement(\'li\');\r\n            item.textContent = msg;\r\n            messages.appendChild(item);\r\n            window.scrollTo(0, document.body.scrollHeight);\r\n        });\r\n    </script>\r\n</body>\r\n\r\n</html>'),
(6, '<!doctype html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n    <!-- Required meta tags -->\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n    <!-- Bootstrap CSS -->\r\n    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n        integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/user.css\">\r\n    <link rel=\"stylesheet\" href=\"../css/chat.css\">\r\n    <title>gapo</title>\r\n</head>\r\n\r\n<body>\r\n    <!-- <div class=\"container\"> -->\r\n    \r\n    <div class=\"row\" style=\"background-color: rgb(30, 35, 37); \">\r\n        <div class=\"col\">\r\n            <img src=\"https://www.gapo.vn/assets/images/logo%20gapo.svg\" style=\"padding: 20px\" ;alt=\"\">\r\n        </div>\r\n        <div class=\"col\">\r\n            <div style=\"height: 15px;\"></div>\r\n            <div class=\"message\">\r\n\r\n                <a href=\"\">\r\n                    <img src=\"https://xemanhdep.com/wp-content/uploads/2016/04/anh-girl-xinh-9x-de-thuong.jpg\"\r\n                        class=\"canhan\" alt=\"\">###Email_phone\r\n                </a>\r\n                <a href=\"\" style=\"margin-left:10%;\">\r\n                    logout\r\n                </a>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n    <div>\r\n\r\n        <div>\r\n            <br><br><br><br><br>\r\n\r\n            <form action=\"?controller=website\" enctype=\"multipart/form-data\" method=\"POST\">\r\n               \r\n                <h3 style=\" text-align: center; color:red\">\r\n                    <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-pen\"\r\n                        viewBox=\"0 0 16 16\">\r\n                        <path\r\n                            d=\"m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z\" />\r\n                    </svg>\r\n                   Xin chào Gapoer\r\n                </h3>\r\n                <div class=\"giua\" style=\" justify-content: center;\">\r\n                    <textarea id=\"tutorial\" name=\"tutorial\" rows=\"5\" cols=\"45\"\r\n                        placeholder=\"bạn đang nghĩ gì \"></textarea>\r\n                    <br>\r\n                    <input type=\"file\" name=\"upload_file\">\r\n\r\n                    <input type=\"submit\" value=\"Upload \" name=\"submit\"\r\n                        style=\" background-color: rgb(0, 81, 255); color: cornsilk; \">\r\n                </div>\r\n            </form>\r\n\r\n        </div>\r\n        ###Content\r\n\r\n\r\n        <!-- <ul id=\"messages\" ></ul>\r\n    <form id=\"form\" action=\"\" >\r\n        <input id=\"input\" autocomplete=\"off\" /><button style=\"background-color:red\">Send</button>\r\n    </form> -->\r\n\r\n\r\n        <div style=\"height: 300px;width: 300px;float: right;\">\r\n            <div id=\"chat\" style=\"background-color: rgb(255, 164, 60);height: 300px;width: 300px; float:right  \">\r\n                <ul id=\"messages\" style=\"height: 300px;width: 300px;background-color: snow;\"></ul>\r\n               \r\n                <div class=\"row g-3 align-items-center\" style=\"margin-left: 5px;\">\r\n\r\n                    <div class=\"col-auto\">\r\n                        <form id=\"form\" action=\"\" style=\"width: 300px; margin-left:955px ;\">\r\n                            <input id=\"input\" autocomplete=\"off\" /><button style=\"background-color:red\">Send</button>\r\n                        </form> \r\n                    </div>\r\n                    <!-- <div class=\"col-auto\" style=\"float:left;margin-top: 20px;\">\r\n                        <button style=\"background-color: red;color: rgb(236, 229, 200);\">Send</button>\r\n                    </div> -->\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n    <!-- <div style=\"height: 90px; background-color: rgb(60, 242, 255);\"></div> -->\r\n\r\n    <!-- Optional JavaScript; choose one of the two! -->\r\n\r\n    <!-- Option 1: Bootstrap Bundle with Popper -->\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"\r\n        integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\"\r\n        crossorigin=\"anonymous\"></script>\r\n\r\n    <!-- Option 2: Separate Popper and Bootstrap JS -->\r\n    <!--\r\n    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js\" integrity=\"sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB\" crossorigin=\"anonymous\"></script>\r\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13\" crossorigin=\"anonymous\"></script>\r\n    -->\r\n    <script src=\"http://localhost:3000/socket.io/socket.io.js\"></script>\r\n    <script>\r\n        var socket = io(\'http://localhost:3000\');\r\n\r\n        var form = document.getElementById(\'form\');\r\n        var input = document.getElementById(\'input\');\r\n\r\n        form.addEventListener(\'submit\', function (e) {\r\n            e.preventDefault();\r\n            if (input.value) {\r\n                socket.emit(\'chat message\', input.value);\r\n                input.value = \'\';\r\n            }\r\n        });\r\n        //nhận dữ liệu trả về từ server\r\n        socket.on(\'chat message\', function (msg) {\r\n            console.log(\"msg\", msg);\r\n            var item = document.createElement(\'li\');\r\n            item.textContent = msg;\r\n            messages.appendChild(item);\r\n            window.scrollTo(0, document.body.scrollHeight);\r\n        });\r\n    </script>\r\n</body>\r\n\r\n</html>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTheme` (`idTheme`);

--
-- Chỉ mục cho bảng `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAccount` (`idAccount`);

--
-- Chỉ mục cho bảng `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`idTheme`) REFERENCES `theme` (`id`);

--
-- Các ràng buộc cho bảng `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`idAccount`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
