var tme={};
tme.init=$(function(){

    var browser = (function(){
        var ua = window.navigator.userAgent.toLowerCase(), sys = null, s;
        if(s = ua.match(/rv:([\d.]+)\) like gecko/)){sys = {type:'ie',version:s[1]};}
        else if(s = ua.match(/msie ([\d.]+)/)){sys = {type:'ie',version:s[1]};}
        else if(s = ua.match(/firefox\/([\d.]+)/)){sys = {type:'firefox',version:s[1]};}
        else if(s = ua.match(/chrome\/([\d.]+)/)){sys = {type:'chrome',version:s[1]};}
        else if(s = ua.match(/opera.([\d.]+)/)){sys = {type:'opera',version:s[1]};}
        else if(s = ua.match(/version\/([\d.]+).*safari/)){sys = {type:'safari',version:s[1]};}
        else if(s = ua.match(/ucbrowser\/([\d.]+)/)){sys = {type:'uc',version:s[1]};}
        else if(s = ua.match(/micromessenger\/([\d.]+)/)){sys = {type:'wx',version:s[1]};}
        else{sys = {type:'unknown',version:'unknown'};}
        sys.isMobile = !!ua.match(/AppleWebKit.*Mobile.*!/) || !!ua.match(/(iPhone|iPod|Android|ios|iPad)/i);
        return sys;
    })();
    
    /*检测IE*/
    if(browser.type =="ie" && browser.version < 8){
        location.href="http://www.jltech.cn/upgradeBrowser/";
    }

    /*判断谷歌27*/
    if(browser.type == 'chrome' && browser.version <= 27){
        $('.font_scale8, .font_scale10').addClass('font_adjust');
    }

    
     tme.fnnav();
     tme.fnShowCode();

   
     $('#menu').mmenu();

      jQuery.jqtab = function(tabtit,tab_conbox,shijian) {
          $(tab_conbox).find(".item").hide();
          $(tabtit).find("li:first").addClass("on").show(); 
          $(tab_conbox).find(".item:first").show();
      
          $(tabtit).find("li").bind(shijian,function(){
            $(this).addClass("on").siblings("li").removeClass("on"); 
              var activeindex = $(tabtit).find("li").index(this);
              $(tab_conbox).children().eq(activeindex).show().siblings().hide();
              return false;
          });         
      };

      //$.jqtab(".js_newstab .tit",".js_newstab .cont","click");

    
})


$(document).ready( tme.init );
tme.fnnav=function(){
    function fnnav(el){
      $(el).css({"opacity":"1","height":"auto"});
    }
    
    var init = $('.nav ul .nLi.on').index();
    $(".nav ul .nLi").hover(function(){
       if(!$(this).hasClass('on')){
          $(this).addClass('cur');
          $('.nav ul .nLi.on').removeClass('on');
        }
        $(this).find(".navSub").stop().slideDown(300,function(){
          fnnav(this);
          })

        },function(){
           $('.nav ul .nLi').eq(init).addClass('on');
           $(this).removeClass('cur');
           
          $(this).find(".navSub").stop().fadeOut(300,function(){
          fnnav(this); 
        })  
    });
    $(".nav ul .nLi .navSub").hover(function(){
        fnnav(this); 
    })
}

tme.fnShowCode=function(){
  $('.header .w1200 .hWx').hover(function(){
    $(this).find('.codeImg').stop().fadeIn(300);
  }, function(){
    $(this).find('.codeImg').stop().fadeOut(300);
  })
}


// 加入收藏和设为首页用法
// <a href="javascript:void(0)" onclick="shoucang(document.title,window.location)">加入收藏</a>
// <a href="javascript:void(0)" onclick="SetHome(this,window.location)">设为首页</a>

// 设置为主页 

function SetHome(obj,vrl){ 
try{ 
obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl); 
} 
catch(e){ 
if(window.netscape) { 
try { 
netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"); 
} 
catch (e) { 
alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。"); 
} 
var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch); 
prefs.setCharPref('browser.startup.homepage',vrl); 
}else{ 
alert("您的浏览器不支持，请按照下面步骤操作：1.打开浏览器设置。2.点击设置网页。3.输入："+vrl+"点击确定。"); 
} 
} 
} 

function shoucang(sTitle,sURL) 
{ 
try 
{ 
window.external.addFavorite(sURL, sTitle); 
} 
catch (e) 
{ 
try 
{ 
window.sidebar.addPanel(sTitle, sURL, ""); 
} 
catch (e) 
{ 
alert("加入收藏失败，请使用Ctrl+D进行添加"); 
} 
} 
} 
