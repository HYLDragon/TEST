// Confirm
!function(t,n){"function"==typeof define&&define.amd?define("pnotify.confirm",["jquery","pnotify"],n):"object"==typeof exports&&"undefined"!=typeof module?module.exports=n(require("jquery"),require("./pnotify")):n(t.jQuery,t.PNotify)}("undefined"!=typeof window?window:this,function(t,n){return n.prototype.options.confirm={confirm:!1,prompt:!1,prompt_class:"",prompt_default:"",prompt_multi_line:!1,align:"right",buttons:[{text:"Ok",addClass:"",promptTrigger:!0,click:function(t,n){t.remove(),t.get().trigger("pnotify.confirm",[t,n])}},{text:"Cancel",addClass:"",click:function(t){t.remove(),t.get().trigger("pnotify.cancel",t)}}]},n.prototype.modules.confirm={init:function(n,o){this.container=t('<div class="ui-pnotify-action-mes" style="margin-top:5px;clear:both;" />').css("text-align",o.align).appendTo(n.container),o.confirm||o.prompt?this.makeDialog(n,o):this.container.hide()},update:function(t,n){n.confirm?(this.makeDialog(t,n),this.container.show()):this.container.hide().empty()},afterOpen:function(t,n){n.prompt&&this.prompt.focus()},makeDialog:function(o,e){var i,s,r=!1,p=this;this.container.empty(),e.prompt&&(this.prompt=t("<"+(e.prompt_multi_line?'textarea rows="5"':'input type="text"')+' style="margin-bottom:5px;clear:both;" />').addClass((void 0===o.styles.input?"":o.styles.input)+" "+(void 0===e.prompt_class?"":e.prompt_class)).val(e.prompt_default).appendTo(this.container));for(var u=e.buttons[0]&&e.buttons[0]!==n.prototype.options.confirm.buttons[0],c=0;c<e.buttons.length;c++)null===e.buttons[c]||u&&n.prototype.options.confirm.buttons[c]&&n.prototype.options.confirm.buttons[c]===e.buttons[c]||(i=e.buttons[c],r?this.container.append(" "):r=!0,s=t('<button type="button" class="ui-pnotify-action-button" />').addClass((void 0===o.styles.btn?"":o.styles.btn)+" "+(void 0===i.addClass?"":i.addClass)).text(i.text).appendTo(this.container).on("click",function(t){return function(){"function"==typeof t.click&&t.click(o,e.prompt?p.prompt.val():null)}}(i)),e.prompt&&!e.prompt_multi_line&&i.promptTrigger&&this.prompt.keypress(function(t){return function(n){13==n.keyCode&&t.click()}}(s)),o.styles.text&&s.wrapInner('<span class="'+o.styles.text+'"></span>'),o.styles.btnhover&&s.hover(function(t){return function(){t.addClass(o.styles.btnhover)}}(s),function(t){return function(){t.removeClass(o.styles.btnhover)}}(s)),o.styles.btnactive&&s.on("mousedown",function(t){return function(){t.addClass(o.styles.btnactive)}}(s)).on("mouseup",function(t){return function(){t.removeClass(o.styles.btnactive)}}(s)),o.styles.btnfocus&&s.on("focus",function(t){return function(){t.addClass(o.styles.btnfocus)}}(s)).on("blur",function(t){return function(){t.removeClass(o.styles.btnfocus)}}(s)))}},t.extend(n.styling.bootstrap3,{btn:"btn btn-default",input:"form-control"}),t.extend(n.styling.fontawesome,{btn:"btn btn-default",input:"form-control"}),n});
//# sourceMappingURL=pnotify.confirm.js.map