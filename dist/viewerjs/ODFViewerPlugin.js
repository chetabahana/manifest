function ODFViewerPlugin(){"use strict";function t(t){var n=document.createElement("script");n.async=!1,n.src="./webodf.js",n.type="text/javascript",n.onload=function(){runtime.currentDirectory=function(){return"../../webodf/lib"},runtime.libraryPaths=function(){return[runtime.currentDirectory()]},runtime.loadClass("odf.OdfCanvas"),t()},document.getElementsByTagName("head")[0].appendChild(n)}function n(t){var n={draw:"urn:oasis:names:tc:opendocument:xmlns:drawing:1.0",presentation:"urn:oasis:names:tc:opendocument:xmlns:presentation:1.0",text:"urn:oasis:names:tc:opendocument:xmlns:text:1.0",office:"urn:oasis:names:tc:opendocument:xmlns:office:1.0"};return n[t]||console.log("prefix ["+t+"] unknown.")}var e=this,i=null,o=null,r=!1,a=null,s=null;this.initialize=function(n,u){t(function(){o=document.getElementById("canvas"),i=new odf.OdfCanvas(o),i.load(u),i.addListener("statereadychange",function(){a=i.odfContainer().rootElement,r=!0,s=i.odfContainer().getDocumentType(a),"text"===s&&i.enableAnnotations(!0),e.onLoad()})})},this.isSlideshow=function(){return"presentation"===s},this.onLoad=function(){},this.getWidth=function(){return o.clientWidth},this.getHeight=function(){return o.clientHeight},this.fitToWidth=function(t){i.fitToWidth(t)},this.fitToHeight=function(t){i.fitToHeight(t)},this.fitToPage=function(t,n){i.fitToContainingElement(t,n)},this.fitSmart=function(t){i.fitSmart(t)},this.getZoomLevel=function(){return i.getZoomLevel()},this.setZoomLevel=function(t){i.setZoomLevel(t)},this.getPages=function(){var t,e,i=Array.prototype.slice.call(a.getElementsByTagNameNS(n("draw"),"page")),o=[];for(t=0;t<i.length;t+=1)e=[i[t].getAttribute("draw:name"),i[t]],o.push(e);return o},this.showPage=function(t){i.showPage(t)}}