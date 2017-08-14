@charset "utf-8";
/* -----------借鉴他人------------
*
*/
/*------------------------------------

----------------------------------
CSS写作注意事项：
  1. 页面编码规范
    1.1. 统一使用 UTF-8 编码,用@charset "utf-8"指定页面编码。
    1.2. 全局字体设置：
         windows 7系统：微软雅黑 Arial；
         windows XP及以下：新宋体，宋体，Arial
         MAC默认字体：Helvetica Neue和Helvetica Hiragino Sans GB。
    1.3. 中文字体使用编码转换，请参阅下节“中文字体css编码转换”
    1.4. 推荐使用216web安全色
  2. 属性写在一行内，属性之间、属性名和值之间以及属性与“{}”之间应减少空格，去掉最后一个“;”，例如：.class{width:200px;height:100px}
  3. 属性的书写顺序：
    3.1. 按照元素模型由外及内，由整体到细节书写，大致分为五组：
      位置：position,left,right,float
      盒模型属性：display,margin,padding,width,height
      边框与背景：border,background
      段落与文本：line-height,text-indent,font,color,text-decoration,...
      其他属性：overflow,cursor,visibility,...
    3.2. 针对特殊浏览器的属性，应写在标准属性之前，例如：-webkit-box-shadow:;-moz-box-shadow:;box-shaow:;
  4. 带有前缀的属性，单独一行，通过缩进，让每个属性的值垂直对齐，方便编辑维护。
  5. 谨慎添加新的选择符规则，尤其不可滥用 id，尽可能继承和复用已有样式
  6. 选择符、属性、值均用小写（格式的颜色值除外），缩写的选择符名称须说明缩写前的全称，例如 .cl -> Clearfix
  7. 避免使用各种 CSS Hack，如需对 IE 进行特殊定义，请参阅下节“关于 CSS Hack 的说明”
  8. 勿使用冗余低效的 CSS 写法，例如：ul li a span{... }
  9. 慎用 !important
  10. 建议使用具有语义化的classname或id，请参阅下节“css 命名规范及对应的缩写”
  11.避免使用兼容性不好的使用滤镜
  12.开发过程中的未定事项，须用 [!] 标出，以便于后续讨论整理。
  13.注释格式，统一使用双斜杠加*。
  14.上下模块之间的间距统一使用下一个模块的margin-top来实现，好处是：如果没有下一个模块也不会多出一段空隙。
  15.hover，selected，disabled，current等具有特定意义的请勿直接占用。
  16.:link :visited :hover :active书写顺序 L-V-H-A，速记：LoVe（喜欢）HAte（讨厌）。
  17.不要使用 @import
----------------------------------
中文字体css编码转换
  微软雅黑   \5FAE\8F6F\96C5\9ED1  或 Microsoft YaHei
  黑体       \9ED1\4F53
  新宋体     \65b0\5b8b\4f53
  宋体       \5b8b\4f53
----------------------------------
关于 CSS Hack 的说明：
  1. _          IE6
  2. *          IE6/7
  3. !important IE7/Firefox
  4. *+         IE7
  5. \9         IE6/7/8
  6. \0         IE8
  7. 条件hack
      <!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]--> IE7以下版本
      <!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]--> IE7
      <!--[if IE 8]> <html class="no-js lt-ie9"><![endif]--> IE8
      <!--[if gt IE 8]><!--><html class="no-js"><!--<![endif]--> IE8以上
----------------------------------
css 命名规范
  1. 内容优先,表现为辅
  2. css命名中英文对照
  current 当前    hover 悬停    selected 挑选   disabled 禁用   focus 得到焦点    blur 失去焦点   checked 勾选    success 成功    error 出错

  header(hd) 头部   content(cnt) 内容   title(tit) 标题   item 项目（条）    cell 单元   image/pic(img) 图片   text(txt) 文字    top 顶部    scrubber 时序菜单

  nav 导航    mainNav 主导航   subNav 子导航    topNav 顶部导航   breadcrumb 面包屑导航

  flink 友情链接    footer 尾    copyright 版权

  menu 菜单   submenu 子菜单   dropdown 下拉菜单

  searchBar 搜索条   search 搜索条    searchTxt 搜索框   searchBtn 搜索按钮    search_key 搜索词

  member 会员   ucenter 用户中心    loginBar 登陆条    login 登录    loginBtn 登录按钮   regsiter 注册按钮   btn-regsiter注册按钮    name 用户名    password 密码   nickname 昵称   mobilephone/mobile 手机    telephone/tel 电话   defaultavatar 默认头像

  hot 热点    news 新闻   banner/AD 广告    download 下载

  content 内容    title 标题    summary 摘要    time 时间

  share 分享    digg 顶    like 喜欢

  list/-list 列表   pList 图片列表    tList 文字列表    tpList 图文列表

  table 表格    row 行   column 列    gutter 间隔   viewport 视口

  tab 标签    tags 标签   scroll 滚动

  sidebar 侧边栏   column 栏目   section 区块    msg 提示信息    status 状态   vote 投票   tips 小技巧    guild 指南    note 注释

  icon- 图标    btn- 按钮

  goods 商品    goods-list 商品列表    goods-detail 商品详情    goods-info 商品信息

  tuan 团购   tuan-list 团购列表   tuan-detail  团购详情    tuan-info 团购信息

  transition 动画   shadow 阴影   fade 淡入淡出   flip 翻页效    slide 滑动    slideup 上滑动   slidedown 下滑动   turn 翻页   horizontal 水平   vertical 垂直   collapsible 折叠    corners 拐角    flow 流    reverse 反向    pop 弹窗

  count 总数/计数   plus 加号/正   minus 减号/负    controlgroup 控制组
----------------------------------
html命名规范：
  default/index.html    首页
  404.html              404错误页
  print.html            打印页
  header.html           页头
  footer.html           页脚
  sitemap.html          网站地图
  passport.html         通行证
  rank.html             排行榜
  roll.html             滚动新闻

  solution.html         解决方案
  joinus.html           加入我们
  partner.html          合作伙伴
  service.html          服务
  aboutus.html          关于我们
  contact.html          联系我们
  company.html          公司介绍
  organization.html     组织结构
  culture.html          企业文化
  strategy.html         发展策略
  honor.html            公司荣誉
  aptitudes.html        企业资质
  events.html           大事记
  business.html         商务合作
  contract.html         服务条款
  privacy.html          隐私声明
  CSR.html              企业社会责任

  news-开头.html         新闻相关
  article-开头.html      资讯相关
  picture-开头.html      图片相关
  photo-开头.html        相册相关
  product-开头.html      产品相关
  goods-开头.html        商品相关
  system-开头.html       系统相关
  tag-开头.html          tag相关
  brand-开头.html        品牌相关
  help-开头.html         帮助相关
  member-开头.html       会员相关
  search-开头.html       搜索相关
---------------------------------- */
/*1 重定义浏览器默认样式
	Name:			style_reset
	Explain:		重定义浏览器默认样式
*/
*{word-wrap:break-word}
html,body,h1,h2,h3,h4,h5,h6,hr,p,iframe,dl,dt,dd,ul,ol,li,pre,form,button,input,textarea,th,td,fieldset{margin:0;padding:0}
ul,ol,dl{list-style-type:none}
html,body{*position:static}
html{font-family: sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;-webkit-tap-highlight-color:rgba(0,0,0,0)}
address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:400}
input,button,textarea,select,optgroup,option{font-family:inherit;font-size:inherit;font-style:inherit;font-weight:inherit}
input,button{overflow: visible;vertical-align:middle;outline:none}
input[type="submit"],input[type="reset"],input[type="button"],input[type="text"],input[type="password"]{-webkit-appearance:none;outline:none}
body,th,td,button,input,select,textarea{font-family:"Microsoft Yahei","Hiragino Sans GB","Helvetica Neue",Helvetica,tahoma,arial,"WenQuanYi Micro Hei",Verdana,sans-serif,"\5B8B\4F53";font-size:12px;color: #333;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing:grayscale}
@media ( max-width : 767px) {
	html{ overflow-y:auto}
	body,th,td,button,input,select,textarea{ font-size:14px}
}
body{line-height:1.6; position:relative}
h1,h2,h3,h4,h5,h6{font-size:100%}
a,area{outline:none;blr:expression(this.onFocus=this.blur())}
a{text-decoration:none;cursor: pointer}
a:hover{text-decoration:underline;outline:none}
a.ie6:hover{zoom:1}
a:focus{outline:none}
a:hover,a:active{outline:none}:focus{outline:none}
sub,sup{vertical-align:baseline}
button,input[type="button"], input[type="submit"] {line-height:normal !important}
/*img*/
img{border:0;vertical-align:middle}
a img,img{-ms-interpolation-mode:bicubic}

/*IE下a:hover 背景闪烁*/
*html{overflow:-moz-scrollbars-vertical;zoom:expression(function(ele){ele.style.zoom = "1";document.execCommand("BackgroundImageCache",false,true)}(this))}

/*HTML5 reset*/
header,footer,section,aside,details,menu,article,section,nav,address,hgroup,figure,figcaption,legend{display:block;margin:0;padding:0}time{display:inline}
audio,canvas,video{display:inline-block;*display:inline;*zoom:1}
audio:not([controls]){display:none}
legend{width:100%;margin-bottom:20px;font-size:21px;line-height:40px;border:0;border-bottom:1px solid #e5e5e5}
legend small{font-size:15px;color:#999}
svg:not(:root) {overflow: hidden}
fieldset {border-width:0;padding: 0.35em 0.625em 0.75em;margin: 0 2px;border: 1px solid #c0c0c0}
input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button {height: auto}
input[type="search"] {-webkit-appearance: textfield; /* 1 */}
input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration {-webkit-appearance: none}
/*清除浮动
	Name:			style_clearfix
	Example:		class="clearfix|cl"
	Explain:		clearfix（简写cl）避免因子元素浮动而导致的父元素高度缺失能问题
*/
.cl:after,.clearfix:after{content:"\20";display:block;height:0;clear:both;visibility:hidden}.cl,.clearfix{zoom:1}
