<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <title>武汉只因美大学</title>
    <meta name="Keywords" content="武汉只因美大学">
    <meta name="Description" content="武汉只因美大学">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/swiper-3.4.0.min.css">
    <link rel="stylesheet" href="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/jquery.mmenu.all.css">
    <link rel="stylesheet" href="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/common.css">
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/jquery.min.js"></script>
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/swiper-3.4.0.jquery.min.js"></script>
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/jquery.mmenu.min.all.js"></script>
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/common.js"></script>
    <!--[if lt IE 9]>
    <script src="/templates/main/js/html5shiv.min.js"></script>
    <![endif]-->
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/web_extend.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            if (isPhone() == true) {
                //window.location.href = '/m_index.aspx';
                //window.location.href = '/m_list_p1.aspx';
                //window.location.href = '/m_list_p2.aspx';
            }
        })
        //检查当前设备是否为手机
        function isPhone() {
            //根据userAgent判断是否是手机
            var userAgentInfo = navigator.userAgent;
            var mobileAgents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
            var mobile_flag = false;
            for (var v = 0; v < mobileAgents.length; v++) {
                if (userAgentInfo.indexOf(mobileAgents[v]) > 0) {
                    mobile_flag = true;
                    break;
                }
            }
            //根据屏幕分辨率判断是否是手机
            var screen_width = window.screen.width;
            var screen_height = window.screen.height;
            if (screen_width < 500 && screen_height < 800) {
                mobile_flag = true;
            }
            return mobile_flag;
        }
    </script>


    <link rel="stylesheet" href="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/banner.css">
    <script src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/share.js"></script><link rel="stylesheet" href="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/share_style2_24.css"></head>
<body><nav id="menu" class="m_nav mm-menu mm-offcanvas" style="display:none;"><div class="mm-panels"><div class="mm-panel mm-opened mm-current" id="mm-1"><ul class="mm-listview">
    <!--获取在头部显示的频道列表-->
    <li class="home"><a href="#">网站首页</a></li>


    <li>
        <a class="mm-next" href="#mm-2" data-target="#mm-2"></a><a href="#">学院概况</a>
        <!--第二层-->

        <!--第二层End-->
    </li>

    <li>
        <a class="mm-next" href="#mm-3" data-target="#mm-3"></a><a href="#">机构设置</a>
        <!--第二层-->

        <!--第二层End-->
    </li>

    <li>
        <a class="mm-next" href="#mm-4" data-target="#mm-4"></a><a href="#">党建思政</a>
        <!--第二层-->

        <!--第二层End-->
    </li>

    <li>
        <a class="mm-next" href="#mm-5" data-target="#mm-5"></a><a href="#">教育教学</a>
        <!--第二层-->

        <!--第二层End-->
    </li>

    <li>
        <a class="mm-next" href="#mm-6" data-target="#mm-6"></a><a href="#">师资队伍</a>
        <!--第二层-->

        <!--第二层End-->
    </li>

    <li>
        <a class="mm-next" href="#mm-7" data-target="#mm-7"></a><a href="#">招生就业</a>
        <!--第二层-->

        <!--第二层End-->
    </li>


    <li><a href="#">学院要闻</a></li>
    <li><a href="#">通知公告</a></li>
    <li>

        <a class="mm-next" href="#mm-8" data-target="#mm-8"></a><a href="#">学院专题 </a>



    </li>

    <li>
        <a class="mm-next" href="#mm-9" data-target="#mm-9"></a><a href="#">其他入口</a>

    </li>


</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-2"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">学院概况</a></div><ul class="mm-listview">



</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-3"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">机构设置</a></div><ul class="mm-listview">



</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-5"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">教育教学</a></div><ul class="mm-listview">



</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-6"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">师资队伍</a></div><ul class="mm-listview">


</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-7"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">招生就业</a></div><ul class="mm-listview">



</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-8"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">学院专题 </a></div><ul class="mm-listview">

    <li><a href="#" class="tran300" target="_blank">学习宣传二十大精神</a></li>

    <li><a href="#" class="tran300">学习贯彻习近平新时代中国特色社会主义思想</a></li>

    <li><a href="#" class="tran300" target="_blank">政策·理论</a></li>

    <li><a href="#" class="tran300" target="_blank">共抗疫情</a></li>

    <li><a href="#" class="tran300" target="_blank">党群在线</a></li>

    <li><a href="#" class="tran300" target="_blank">文明素养养成</a></li>

    <li><a href="#" class="tran300" target="_blank">学院荣誉</a></li>

</ul></div><div class="mm-panel mm-hasnavbar mm-hidden" id="mm-9"><div class="mm-navbar"><a class="mm-btn mm-prev" href="#mm-1" data-target="#mm-1"></a><a class="mm-title" href="#mm-1">其他入口</a></div><ul class="mm-listview">

    <li><a href="#" class="tran300">领导信箱</a></li>

    <li><a href="#" class="tran300">学生缴费</a></li>

    <li><a href="#" target="_blank" class="tran300">校友在线</a></li>

    <li><a href="#" target="_blank" class="tran300">信息公开</a></li>

    <li><a href="#" target="_blank" class="tran300">网上报销</a></li>

    <li><a href="login.jsp" target="_blank" class="tran300">教务系统</a></li>

    <li><a href="#" target="_blank" class="tran300">学生</a></li>

    <li><a href="#" target="_blank" class="tran300">教工</a></li>

    <li><a href="#" target="_blank" class="tran300">访客</a></li>

    <li><a href="#" target="_blank" class="tran300">校内网</a></li>

    <li><a href="#" class="tran300">校历</a></li>

    <li><a href="javascript:void(0)" class="tran300">校园地图</a></li>

    <li><a href="#" target="_blank" class="tran300">认证自助服务系统</a></li>

    <li><a href="login.jsp" target="_blank" class="tran300">教务系统</a></li>

</ul></div></div><!--第一层--><!--第一层End--></nav>
<div id="mm-0" class="mm-page mm-slideout"><div id="page" class="">

    <!--top-->
    <div class="hTop">
        <div class="hTop w1200 clearfix">
            <ul class="fl clearfix">

                <li class="li1"><a href="#" class="tran300">领导信箱</a></li>

                <li class="li2"><a href="#" target="_blank">学生缴费</a></li>

                <li class="li3"><a href="#" class="tran300" target="_blank">校友在线</a></li>

                <li class="li4"><a href="#" target="_blank">信息公开</a></li>

                <li class="li5"><a href="#" class="tran300" target="_blank">网上报销</a></li>

                <li class="li6"><a href="login.jsp" class="tran300" target="_blank">教务系统</a></li>

            </ul>

            <ul class="fr clearfix">

                <li class="li1"><a href="#" class="tran300" target="_blank">学生</a></li>

                <li class="li2"><a href="#" class="tran300" target="_blank">教工</a></li>

                <li class="li3"><a href="#" class="tran300" target="_blank">访客</a></li>

                <li class="li4"><a href="#" target="_blank">校内网</a></li>

            </ul>
        </div>
    </div>

    <!--logo-->
    <div class="header">
        <div class="w1200 clearfix">
            <!--logo-->
            <a href="#" class="logo fl">
                <img src="武汉只因美大学_files/logo.jpg" alt="">
            </a>

            <!--校训-->
            <span class="fl slogan">
            <img src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/slogan20210306.png" alt="">
        </span>
            <!--小屏菜单-->
            <a href="#menu" class="menuIcon fr">
                <span class="line1"></span>
                <span class="line2"></span>
                <span class="line3"></span>
            </a>

            <!--搜索放大镜-->
            <i class="searchBtn fr"></i>
            <!--邮箱系统-->
            <a href="#" class="hMailBtn fr" target="_blank"></a>
            <!--新浪微博-->
            <div class="bdsharebuttonbox fr bdshare-button-style2-24" data-tag="share_1" data-bd-bind="1687060422513">
                <!--<a class="shareItem bds_weixin" data-cmd="weixin"></a>-->
                <a class="shareItem bds_tsina" data-cmd="tsina" href="#" title="分享到新浪微博"></a>
            </div>
            <!--微信-->
            <div class="hWx fr">
                <span class="icon"></span>
                <div class="codeImg">
                    <i></i>
                    <div class="pic"><img src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/weixin.jpg" alt=""></div>
                </div>
            </div>

        </div>
    </div>
    <!--nav-->

    <div class="nav">
        <!--获取在头部显示的频道列表-->
        <ul class="clearfix w1200">
            <li class="nLi on">
                <h3><a href="#" class="tran300 clearfix">首页</a></h3>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_self">学院概况<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_self">机构设置<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_blank">党建思政<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_self">教育教学<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_self">师资队伍<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi ">

                <h3><a href="#" class="tran300 clearfix" target="_blank">招生就业<i class="tran300"></i></a></h3>
                <div class="navSub">

                </div>
            </li>

            <li class="nLi">
                <h3><a href="#" class="tran300 clearfix" target="_blank">图书馆</a></h3>
            </li>

    </div>

    <div class="cd-popup">
        <div class="cd-popup-container hidden_search">
            <form action="">
                <div class="search_wrap clearfix">
                    <input type="text" name="keywords" id="keywords" class="text" placeholder="搜索关键词" onkeydown="if(event.keyCode==13){SiteSearch('/search.aspx', '#keywords');return false};">
                    <input type="button" value="搜索" class="btn" onclick="SiteSearch('/search.aspx', '#keywords');">
                </div>
            </form>
            <a href="javascript:;" class="cd-popup-close close_btn">
            </a>
        </div>
    </div>

    <script>
        //搜索查询
        function SiteSearch(send_url, divTgs) {
            var str = $.trim($(divTgs).val());
            if (str.length > 0 && str != "输入关健字") {
                window.location.href = send_url + "?keyword=" + encodeURI($(divTgs).val());
            }
            return false;
        }
    </script>
    <script type="text/javascript">
        $(function() {
            $('.searchBtn').click(function(event) {
                var e = event || window.event;
                e.preventDefault();
                e.stopPropagation();
                $('.cd-popup').addClass('is-visible');
            });

            $('.cd-popup-container').click(function(event) {
                var e = event || window.even;
                e.stopPropagation();
            });

            $(document).click(function(event){
                $('.cd-popup').removeClass('is-visible');
            });

            $('.cd-popup-close').click(function(event){
                $('.cd-popup').removeClass('is-visible');
            });

        });
    </script>


    <script type="text/javascript">

        $(function(){
            var cyyxHTML='<a href="/syxw/list/711.aspx" style="float: left;color: #fff;line-height: 30px;font-size: 16px;background-color: #5e8f3a;padding: 0 10px;margin-right: 5px;" id="cyyxA">城院映像</a>';
            if ($("#cyyxA").length<=0) {
                $("#banner_nav").append(cyyxHTML);
            }
        })


        //banner
        var bannerSwiper = new Swiper('.banner', {
            pagination: '.banner .swiper-pagination',
            paginationClickable: true,
            direction: 'horizontal',
            spaceBetween: 0,
            autoplay: 4500,
            speed: 500,
            loop: true,
            preventClicks: false,
            prevButton: '.banner .swiper-button-prev',
            nextButton: '.banner .swiper-button-next',
            autoplayDisableOnInteraction: false,
            paginationBulletRender: function (swiper, index, className) {
                return '<span class="' + className + '">0' + (index + 1) + '</span>';
            }
        });
    </script>



    <div class="iWrap">
        <div class="iMain w1200">
            <!--通知栏 通知公告-->
            <dl class="inotScrollWrap" style=" display:none;">

                <dt><a href="#" class="tran300">通知公告</a></dt>

                <dd>
                    <div class="inotScroll swiper-container-horizontal">
                        <div class="swiper-wrapper" style="transition-duration: 700ms;"><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="2">
                            <a href="#">
                                <h5 class="TXTovehid tran300">2022～2023学年第二学期 第十六周工作安排</h5>
                                <span>2023-06-05</span>
                            </a>
                        </div><div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3">
                            <a href="href="#">
                            <h5 class="TXTovehid tran300">2023年度湖北省二级建造师执业资格考试 …</h5>
                            <span>2023-06-02</span>
                            </a>
                        </div>

                            <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="0">
                                <a href="#"二学期  第十七周工作安排</h5>
                                <span>2023-06-12</span>
                                </a>
                            </div>

                            <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="1">
                                <a href="#">
                                    <h5 class="TXTovehid tran300">2023年度胯下运球职业水平考试 武汉只因美大学考点…</h5>
                                    <span>2023-06-08</span>
                                </a>
                            </div>

                            <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="2">
                                <a href="#">
                                    <h5 class="TXTovehid tran300">2022～2023学年第二学期 第十六周工作安排</h5>
                                    <span>2023-06-05</span>
                                </a>
                            </div>

                            <div class="swiper-slide" data-swiper-slide-index="3">
                                <a href="#">
                                    <h5 class="TXTovehid tran300">2023年度湖北省二级rapper执业资格考试 武汉只因美大学...</h5>
                                    <span>2023-06-02</span>
                                </a>
                            </div>

                            <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" data-swiper-slide-index="0">
                                <a href="#">
                                    <h5 class="TXTovehid tran300">2022～2023学年第二学期  第十七周工作安排</h5>
                                    <span>2023-06-12</span>
                                </a>
                            </div><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="1">
                                <a href="#">
                                    <h5 class="TXTovehid tran300">2023年度社会工作者职业水平考试 武汉只因美大学考点…</h5>
                                    <span>2023-06-08</span>
                                </a>
                            </div></div>
                    </div>
                </dd>
            </dl><!-- inotScroll end -->
            <script type="text/javascript">
                $(function () {
                    var inotScroll = new Swiper('.inotScroll', {
                        loop: false,
                        slidesPerView: 2,
                        preventClicks: false,
                        spaceBetween: 40,
                        autoplay: 1500,
                        loop: true,
                        speed: 700,
                        autoplayDisableOnInteraction: false,
                        paginationClickable: true,
                        breakpoints: {
                            1024: {
                                slidesPerView: 2,
                                spaceBetween: 20
                            },
                            768: {
                                slidesPerView: 1,
                                spaceBetween: 20
                            }
                        }
                    });
                })
            </script>

            <!--第一块 学院要闻...-->
            <div class="isect1 clearfix">
                <!--学院要闻 新闻网-->
                <div class="isect1_1 fl">
                    <!--标题-->
                    <div class="tit clearfix">

                        <ul class="fl">

                            <li class="fl on"><a href="#">学院要闻</a></li>

                            <li class="fl "><a href="#">新闻网</a></li>

                        </ul>
                        <!--one left title-->

                        <a href="#" class="imore imore1 tran300 fr">更多</a>

                        <a href="#" class="imore imore2 tran300 fr" target="_blank">更多</a>

                    </div>
                    <!--内容-->
                    <div class="cont">

                        <div class="item clearfix" style="display: block;">
                            <!--左侧 推荐图文-->

                            <div class="newsScroll fl newsScroll1 swiper-container-horizontal">
                                <div class="swiper-wrapper" style="transform: translate3d(-758px, 0px, 0px); transition-duration: 0ms;"><div class="swiper-slide scaleimg swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="2" style="width: 379px;">
                                    <a href="#" target="_self">
                                        <div class="pic"><em class="tran300" style="background-image: url(
https://web-tlias-amireux.oss-cn-hangzhou.aliyuncs.com/c54c492c-eb41-4d89-9ff3-c055194a4b8b.JPG);"></em></div>
                                        <h5 class="TXTovehid">泰 &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 裤辣</h5>
                                    </a>
                                </div>





                                    <div class="swiper-slide scaleimg swiper-slide-next" data-swiper-slide-index="2" style="width: 379px;">
                                        <a href="#" target="_self">
<%--                                            阿里云OSS--%>
                                            <div class="pic"><em class="tran300" style="background-image: url(
https://web-tlias-amireux.oss-cn-hangzhou.aliyuncs.com/c54c492c-eb41-4d89-9ff3-c055194a4b8b.JPG);"></em></div>
                                            <h5 class="TXTovehid">泰裤辣</h5>
                                        </a>
                                    </div>

                                </div>
                                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
                            </div>


                            <!--右侧 列表-->

                            <ul class="list fr">

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300  hot ">
                                    我院学子在第五届全国高校大学生外语水…
                                </a></li>

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300 ">
                                    【落雁骄子】吕光明：以军人风范成为青…
                                </a></li>

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300 ">
                                    【落雁骄子】周耀威：心若向之&nbsp;素履以…
                                </a></li>

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300 ">
                                    【落雁追梦】张子烨：跨专业考取武汉科…
                                </a></li>

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300 ">
                                    逐光启航 万里可期——学院隆重举行20…
                                </a></li>

                                <li><a href="#" target="_self" class="clearfix TXTovehid tran300 ">
                                    学院隆重举行“落雁十佳青年”表彰会暨…
                                </a></li>

                            </ul>
                        </div>

                        <div class="item clearfix" style=" display:none;">
                            <!--左侧 推荐图文-->

                            <div class="newsScroll fl newsScroll2 swiper-container-horizontal">
                                <div class="swiper-wrapper" style="transition-duration: 400ms;">

                                    <div class="swiper-slide scaleimg swiper-slide-prev" data-swiper-slide-index="0">
                                        <a href="#" target="_blank">
                                            <div class="pic"><em class="tran300" style="background-image: url(http://wic.edu.cn/upload/20230615/202306151600082495.png);"></em></div>
                                            <h5 class="TXTovehid">【优秀校友】罗灿:不忘初心 在护理领域深耕不辍</h5>
                                        </a>
                                    </div>

                                    <div class="swiper-slide scaleimg swiper-slide-active" data-swiper-slide-index="1">
                                        <a href="#" target="_blank">
                                            <div class="pic"><em class="tran300" style="background-image: url(http://wic.edu.cn/upload/20230615/202306151554262657.png);"></em></div>
                                            <h5 class="TXTovehid">低头是绿茵 抬头是未来——我院足球队举办足球告别友谊赛</h5>
                                        </a>
                                    </div>



                                    <div class="swiper-slide scaleimg swiper-slide-duplicate swiper-slide-duplicate-prev" data-swiper-slide-index="0">
                                        <a href="#" target="_blank">
                                            <div class="pic"><em class="tran300" style="background-image: url(http://wic.edu.cn/upload/20230615/202306151600082495.png);"></em></div>
                                            <h5 class="TXTovehid">【优秀校友】罗灿:不忘初心 在护理领域深耕不辍</h5>
                                        </a>
                                    </div></div>
                                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
                            </div>


                            <!--右侧 列表-->

                            <ul class="list fr">

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300  hot ">
                                    【优秀校友】罗灿:不忘初心 在护理领域…
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300  hot ">
                                    低头是绿茵 抬头是未来——我院足球队…
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300  hot ">
                                    青春不散场 扬帆再起航——毕业祝福标…
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300 ">
                                    我院举办第五届社团文化节活动
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300 ">
                                    永远怀着一颗学徒的心——记湖北省大学…
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300 ">
                                    白衣志愿服务队开展协助活动
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300 ">
                                    才聚荆楚 百县进百校——我院与荆门市…
                                </a></li>

                                <li><a href="#" target="_blank" class="clearfix TXTovehid tran300 ">
                                    机电工程学部开展“拨云散疫， 向阳生…
                                </a></li>

                            </ul>
                        </div>

                    </div>
                </div><!--- isect1_1 end -->
                <!--通知公告-->
                <div class="isect1_2 fr">
                    <div class="tit clearfix">

                        <h3 class="fl">通知公告</h3>
                        <a href="#" class="imore imore2 tran300 fr">更多</a>

                    </div>
                    <div class="cont">

                        <ul>

                            <li class="">
                                <a href="#">
                                    <div class="date tran300"><em>12</em><span>2023.06</span></div>
                                    <h5 class="tran300">
                                        2022～2023学年第二学期  第十七周工作安排
                                    </h5>
                                </a>
                            </li>

                            <li class="">
                                <a href="#">
                                    <div class="date tran300"><em>08</em><span>2023.06</span></div>
                                    <h5 class="tran300">
                                        2023年度社会工作者职业水平考试 武汉只因美…
                                    </h5>
                                </a>
                            </li>

                            <li class="">
                                <a href="#">
                                    <div class="date tran300"><em>05</em><span>2023.06</span></div>
                                    <h5 class="tran300">
                                        2022～2023学年第二学期 第十六周工作安排
                                    </h5>
                                </a>
                            </li>

                            <li class="">
                                <a href="#">
                                    <div class="date tran300"><em>02</em><span>2023.06</span></div>
                                    <h5 class="tran300">
                                        2023年度湖北省二级rapper执业资格考试 武汉只因美…
                                    </h5>
                                </a>
                            </li>

                        </ul>

                    </div>
                </div><!-- isect1_2 end -->
            </div><!-- isect1 end -->

            <!--第二块 学院动态-->

            <div class="isect2">
                <h3 class="ititle">学院动态 <!--<a href="#" class="imore fr" target="_blank">更多</a>--></h3>
                <div class="isect2Scroll swiper-container-horizontal">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 30px;">
                            <dl>

                                <dd>

                                    <h5><a href="#" class="TXTovehid tran300" target="_blank">珍德食泥鸭！我院获批4项教育部养鸡专业户</a></h5>
                                    <ul>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">喜报！我院与新东方和蓝翔达成长期合作，可以获得挖掘机和厨师双学位</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">我院喜获2022年新东方对口优秀试点院校</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">我院荣获2022年度湖北高校篮球奖</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">我院荣获“华中金坤奖”荣誉称号</a></li>

                                    </ul>

                                    <a href="#" class="btn" target="_blank"><span>了解更多</span></a>
                                </dd>
                            </dl>
                        </div>

                        <div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 30px;">
                            <dl>

                                <dd>

                                    <h5 class="hot"><a href="#" class="TXTovehid tran300" target="_blank">【落雁骄子】赵清羽：心若向之&nbsp;素履以往</a></h5>
                                    <ul>

                                        <li class="hot"><a href="#" class="TXTovehid tran300" target="_blank">【落雁追梦】张子烨：跨专业考取武汉科技大学研究生</a></li>

                                        <li><a href="#" target="_blank">【最美后勤人】邓铭：人生需要沉淀 宁静得以致远</a></li>

                                        <li><a href="#" target="_blank">【落雁追梦】吕光明：从戎报国不忘攀登路&nbsp;退役潜耕再圆考研梦</a></li>

                                        <li><a href="#" target="_blank">【落雁追梦】 永不言弃  李培勇初试复试双第一考取湖北大学研究生</a></li>

                                    </ul>

                                    <a href="#" class="btn" target="_blank"><span>了解更多</span></a>
                                </dd>
                            </dl>
                        </div>

                        <div class="swiper-slide" style="width: 380px; margin-right: 30px;">
                            <dl>

                                <dd>

                                    <h5 class="hot"><a href="#" class="TXTovehid tran300" target="_blank">【<坤></坤>目新闻】逐光启航，万里可期！武汉只因美大学举行毕业典礼</a></h5>
                                    <ul>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">【黑子教育在线】武汉只因美大学学子喜获湖北省“挑战杯”竞赛特等奖</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">【坤目新闻】做最美的青春引路人！这所高校举行辅导员主题班会竞赛</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">为未来积蓄力量！这位好老师将企业项目管理搬进课堂</a></li>

                                        <li><a href="#" class="TXTovehid tran300" target="_blank">【武汉只因网】武汉只因美大学2023年图书馆读书节系列活动开幕</a></li>

                                    </ul>

                                    <a href="#" class="btn" target="_blank"><span>了解更多</span></a>
                                </dd>
                            </dl>
                        </div>

                    </div>
                    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
                </div>
            </div><!-- isect2 end -->





            <div class="footer">
                <div class="w1200 clearfix">
                    <a href="#" class="logo fl">
                        <img src="武汉只因美大学_files/logo2.jpg" alt="" width="352px">
                    </a>

                    <div class="link fl">
                        <h5 class="tit">友情链接：</h5>
                        <div class="cont">
                            <div id="marquee1" class="marqueeleft">
                                <div style="width:8000px;">
                                    <ul id="marquee1_1">

                                        <li><a  href="#" target="_blank">IKUN总部</a></li>

                                        <li><a href="#" target="_blank">黑子教育厅</a></li>


                                        <li><a  href="#" target="_blank">一坤年是多少分钟？</a></li>

                                        <li><a href="#" target="_blank">黑子制作人</a></li>



                                        <li><a  href="#" target="_blank">篮球俱乐部</a></li>

                                        <li><a href="#" target="_blank">ctrl键批发商</a></li>
                                    </ul>


                                    <ul id="marquee1_2">

                                        <li><a  href="#" target="_blank">IKUN总部</a></li>

                                        <li><a href="#" target="_blank">黑子教育厅</a></li>



                                        <li class="placeHolder"><a href="##">&nbsp;</a></li>

                                        <li><a  href="#" target="_blank">IKUN总部</a></li>

                                        <li><a href="#" target="_blank">黑子教育厅</a></li>


                                        <li class="placeHolder"><a href="##">&nbsp;</a></li>

                                        <li><a  href="#" target="_blank">IKUN总部</a></li>

                                        <li><a href="#" target="_blank">黑子教育厅</a></li>




                                        <li class="placeHolder"><a href="##">&nbsp;</a></li>






                                        <li class="placeHolder"><a href="##">&nbsp;</a></li>



                                        <li class="placeHolder"><a href="##">&nbsp;</a></li></ul>
                                </div>
                            </div><!--marqueeleft end-->
                        </div>
                    </div>

                    <ul class="fShare fr">
                        <li class="fl li1">
                            <i></i>

                            <div class="codeImg">
                                <div class="pic"><img src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/weixin.jpg" alt=""></div>
                                <i></i>
                            </div>
                        </li>
                        <li class="fl li2">
                            <i></i>

                            <div class="codeImg">
                                <div class="pic"><img src="%E6%AD%A6%E6%B1%89%E5%8F%AA%E5%9B%A0%E7%BE%8E%E5%A4%A7%E5%AD%A6_files/weibo.jpg" alt=""></div>
                                <i></i>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="fBtm">
                <div class="w1200 clearfix">
                    <p class="fl">
                        <span>校本部：先锋市场菜虚村1号</span>

                    </p>

                    <ul class="fNav fr">

                        <li class="fl"><a href="#" class="tran300">校历</a></li>

                        <li class="fl"><a href="javascript:void(0)" class="tran300">校园地图</a></li>

                        <li class="fl"><a href="#"  class="tran300" target="_blank">认证自助服务系统</a></li>

                    </ul>

                </div>
            </div>

            <div class="footerCopy">
                <div class="w1200">
                    <span>Copyright ©2023 . 最终解释权归IKUN所有. 武汉只因美大学</span>
                    <span>
			<!--<a href="https://beian.miit.gov.cn" class="tran300" target="_blank">鄂ICP备456948号-1&nbsp;&nbsp;&nbsp;&nbsp;鄂公网安备15628961225222号</a>-->
			<a href="https://beian.miit.gov.cn/" target="_blank">坤ICP备10086号-1</a>
<%--                        方便查找--%>
			<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=42018602000115" target="_blank"><img class="icon" src="#" alt="">黑子煎鱼980802号</a>
			<a href="http://www.wic.edu.cn/JLadmin/index.aspx" class="tran300" target="_blank">.</a>
		</span>
                </div>
            </div>

            <script type="text/javascript">
                function marquee(i, direction) {
                    var obj = document.getElementById("marquee" + i);
                    var obj1 = document.getElementById("marquee" + i + "_1");
                    var obj2 = document.getElementById("marquee" + i + "_2");
                    if (direction == "up") {
                        if (obj2.offsetTop - obj.scrollTop <= 0) {
                            obj.scrollTop -= (obj1.offsetHeight + 20);
                        } else {
                            var tmp = obj.scrollTop;
                            obj.scrollTop++;
                            if (obj.scrollTop == tmp) {
                                obj.scrollTop = 1;
                            }
                        }
                    } else {
                        if (obj2.offsetWidth - obj.scrollLeft <= 0) {
                            obj.scrollLeft -= obj1.offsetWidth;
                        } else {
                            obj.scrollLeft++;
                        }
                    }
                }

                function marqueeStart(i, direction) {
                    var obj = document.getElementById("marquee" + i);
                    var obj1 = document.getElementById("marquee" + i + "_1");
                    var obj2 = document.getElementById("marquee" + i + "_2");
                    var str = '<li class="placeHolder"><a href="##">&nbsp;</a></li>';

                    obj2.innerHTML = obj1.innerHTML + str + obj1.innerHTML + str + obj1.innerHTML + str + obj1.innerHTML + str + obj1.innerHTML + str;
                    var marqueeVar = window.setInterval("marquee(" + i + ", '" + direction + "')", 30);
                    obj.onmouseover = function () {
                        window.clearInterval(marqueeVar);
                    }
                    obj.onmouseout = function () {
                        marqueeVar = window.setInterval("marquee(" + i + ", '" + direction + "')", 30);
                    }
                }
                marqueeStart(1, "left");

                $('.footer .fShare li').hover(function () {
                    $(this).find('.codeImg').stop().fadeIn(300);
                }, function () {
                    $(this).find('.codeImg').stop().fadeOut(300);
                })

            </script>
        </div><div class="menu">
        <ul>
            <li><a href="https://wpa1.qq.com/SiCFNjAo?_type=wpa&amp;qidian=true" target="_blank"></a></li>
            <li class="tel"><a href="#"></a></li>
            <li class="erweima"><a href="#"></a></li>
        </ul>
    </div></div>


    <!--脚部飘窗-->



    <script type="text/javascript">
        $(function () {
            var newsScroll1 = new Swiper('.newsScroll1', {
                paginationClickable: true,
                pagination: '.newsScroll1 .swiper-pagination',
                autoplay: 3000,
                loop: true,
                speed: 400,
                preventClicks: false
            });
            var newsScroll2 = new Swiper('.newsScroll2', {
                paginationClickable: true,
                pagination: '.newsScroll2 .swiper-pagination',
                autoplay: 3000,
                loop: true,
                speed: 400,
                preventClicks: false
            });


            jQuery.inewsTab = function (tabtit, tab_conbox, shijian) {
                $(tab_conbox).find(".item").hide();
                $(tabtit).find("li:first").addClass("on").show();
                $(tab_conbox).find(".item:first").show();

                $(tabtit).find("li").bind(shijian, function () {
                    $(this).addClass("on").siblings("li").removeClass("on");
                    var activeindex = $(tabtit).find("li").index(this);
                    $(tab_conbox).children().eq(activeindex).show().siblings().hide();
                    activeindex++;
                    $(this).parents('.tit').find('.imore').hide(0).siblings('.imore' + activeindex).show(0);

                    newsScroll1 = new Swiper('.newsScroll1', {
                        paginationClickable: true,
                        pagination: '.newsScroll1 .swiper-pagination',
                        autoplay: 3000,
                        loop: true,
                        speed: 400,
                        preventClicks: false
                    });

                    newsScroll2 = new Swiper('.newsScroll2', {
                        paginationClickable: true,
                        pagination: '.newsScroll2 .swiper-pagination',
                        autoplay: 3000,
                        loop: true,
                        speed: 400,
                        preventClicks: false
                    });

                    return false;
                });

            };

            /*调用方法如下：*/
            $.inewsTab(".isect1 .isect1_1 .tit", ".isect1 .isect1_1 .cont", "mouseover");

            var isect2Scroll = new Swiper('.isect2Scroll', {
                loop: false,
                slidesPerView: 3,
                preventClicks: false,
                spaceBetween: 30,
                pagination: '.isect2Scroll .swiper-pagination',
                paginationClickable: true,
                breakpoints: {
                    768: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    500: {
                        slidesPerView: 1,
                        spaceBetween: 5
                    }
                }
            });

            var isect3Scroll = new Swiper('.isect3Scroll', {
                loop: false,
                slidesPerView: 4,
                preventClicks: false,
                spaceBetween: 12,
                pagination: '.isect3Scroll .swiper-pagination',
                paginationClickable: true,
                autoplay: 3000,
                breakpoints: {
                    1024: {
                        slidesPerView: 3,
                        spaceBetween: 12
                    },
                    768: {
                        slidesPerView: 2,
                        spaceBetween: 12
                    },
                    500: {
                        slidesPerView: 1,
                        spaceBetween: 5
                    }
                }
            });


        })
    </script>

    <script>    window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "1", "bdMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"], "bdPic": "", "bdStyle": "2", "bdSize": "24" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>

    <!--腾讯企点-->
    <style>
        .menu * { padding: 0; margin: 0; }
        .menu li { list-style: none; margin-bottom: 10px; text-align: center; }
        .menu a { display: inline-block; width: 74px; height: 74px; position: relative; }
        .menu ul { padding-top: 60px; }
        .menu { position: fixed; right: 0; top: 20%; width: 90px; height: 340px; background: url(/templates/main/images/qidian/bg.png) no-repeat; background-size: cover; z-index: 999999; }
        .menu .tel a::before { content: ''; position: absolute; height: 75px; width: 170px; background: url(/templates/main/images/qidian/tel.jpg) no-repeat; background-size: cover; left: -170px; top: 2px; display: none; }
        .menu .tel a:hover::before { display: block; }
        .menu .erweima a::before { content: ''; position: absolute; height: 150px; width: 150px; background: url(/templates/main/images/qidian/erweima.jpg) no-repeat; background-size: cover; left: -150px; display: none; top: 5px; }
        .menu .erweima a:hover::before { display: block; }
    </style>





    <div id="mm-blocker" class="mm-slideout"></div></body></html>

</html>