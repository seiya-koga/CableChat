/*!
 * jquery-drawer v3.2.1
 * Flexible drawer menu using jQuery, iScroll and CSS.
 * http://git.blivesta.com/drawer
 * License : MIT
 * Author : blivesta <design@blivesta.com> (http://blivesta.com/)
 */


!function(e){"use strict";"function"==typeof define&&define.amd?define(["jquery"],e):"object"==typeof exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){"use strict";var t="drawer",s="undefined"!=typeof document.ontouchstart,n={init:function(s){return s=e.extend({iscroll:{mouseWheel:!0,preventDefault:!1},showOverlay:!0},s),n.settings={state:!1,events:{opened:"drawer.opened",closed:"drawer.closed"},dropdownEvents:{opened:"shown.bs.dropdown",closed:"hidden.bs.dropdown"}},n.settings["class"]=e.extend({nav:"drawer-nav",toggle:"drawer-toggle",overlay:"drawer-overlay",open:"drawer-open",close:"drawer-close",dropdown:"drawer-dropdown"},s["class"]),this.each(function(){var o=this,r=e(this),i=r.data(t);i||(s=e.extend({},s),r.data(t,{options:s}),n.refresh.call(o),s.showOverlay&&n.addOverlay.call(o),e("."+n.settings["class"].toggle).on("click."+t,function(){return n.toggle.call(o),o.iScroll.refresh()}),e(window).on("resize."+t,function(){return n.close.call(o),o.iScroll.refresh()}),e("."+n.settings["class"].dropdown).on(n.settings.dropdownEvents.opened+" "+n.settings.dropdownEvents.closed,function(){return o.iScroll.refresh()}))})},refresh:function(){this.iScroll=new IScroll("."+n.settings["class"].nav,e(this).data(t).options.iscroll)},addOverlay:function(){var t=e(this),s=e("<div>").addClass(n.settings["class"].overlay+" "+n.settings["class"].toggle);return t.append(s)},toggle:function(){var e=this;return n.settings.state?n.close.call(e):n.open.call(e)},open:function(){var o=e(this);return s&&o.on("touchmove."+t,function(e){e.preventDefault()}),o.removeClass(n.settings["class"].close).addClass(n.settings["class"].open).css({overflow:"hidden"}).drawerCallback(function(){n.settings.state=!0,o.trigger(n.settings.events.opened)})},close:function(){var o=e(this);return s&&o.off("touchmove."+t),o.removeClass(n.settings["class"].open).addClass(n.settings["class"].close).css({overflow:"auto"}).drawerCallback(function(){n.settings.state=!1,o.trigger(n.settings.events.closed)})},destroy:function(){return this.each(function(){var s=this,o=e(this);e("."+n.settings["class"].toggle).off("click."+t),e(window).off("resize."+t),e("."+n.settings["class"].dropdown).off(n.settings.dropdownEvents.opened+" "+n.settings.dropdownEvents.closed),s.iScroll.destroy(),o.removeData(t).find("."+n.settings["class"].overlay).remove()})}};e.fn.drawerCallback=function(t){var s="transitionend webkitTransitionEnd";return this.each(function(){var n=e(this);n.on(s,function(){return n.off(s),t.call(this)})})},e.fn.drawer=function(s){return n[s]?n[s].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof s&&s?void e.error("Method "+s+" does not exist on jQuery."+t):n.init.apply(this,arguments)}});
