<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns="http://www.w3.org/1999/xhtml"
        exclude-result-prefixes="xsl"
        >

  <xsl:template name="head">
    <xsl:param name="prog"/>
    <xsl:param name="Jmol"/>
    <head>  
      <title>
        <xsl:value-of select="$prog"/>
        <xsl:text> Output</xsl:text>
      </title>
      <style type="text/css">
        <xsl:call-template name="css-style"/>
      </style>
<xsl:text>
</xsl:text>
      <xsl:if test="$Jmol!='false'">
        <script type="text/javascript">
          <xsl:call-template name="jmoljs"/>
        </script>
      </xsl:if>
<xsl:text>
</xsl:text>
<xsl:comment><xsl:text>[if IE]</xsl:text>
      <script type="text/javascript">
        <xsl:call-template name="exCanvas"/>
      </script>
      <xsl:text>[endif]</xsl:text></xsl:comment>
<xsl:text>
</xsl:text>
      <script type="text/javascript">
        <xsl:call-template name="flot"/>
      </script>
<xsl:text>
</xsl:text>
      <script type="text/javascript">
        <xsl:call-template name="mainJavascript"/>
      </script>
    </head>
  </xsl:template>

  <xsl:template name="flot">
<xsl:text disable-output-escaping="yes">// &lt;![CDATA[</xsl:text>
<xsl:text disable-output-escaping="yes">
<![CDATA[eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('(V(){6(1K v!="1x")U u=v;U v=1F.1s=V(a,b){W T a7 v?T.9U(a,b):1D v(a,b)};6(1K $!="1x")U w=$;1F.$=v;U x=/^[^<]*(<(.|\\s)+>)[^>]*$|^#(\\w+)$/;v.1M=v.4O={9U:V(a,b){a=a||1j;6(1K a=="2F"){U m=x.2t(a);6(m&&(m[1]||!b)){6(m[1])a=v.6n([m[1]],b);11{U c=1j.5d(m[3]);6(c)6(c.33!=m[3])W v().31(a);11{T[0]=c;T.12=1;W T}11 a=[]}}11 W 1D v(b).31(a)}11 6(v.22(a))W 1D v(1j)[v.1M.3e?"3e":"4d"](a);W T.9i(a.1T==2x&&a||(a.5I||a.12&&a!=1F&&!a.2j&&a[0]!=1x&&a[0].2j)&&v.3x(a)||[a])},5I:"1.2.1",5N:V(){W T.12},12:0,2l:V(a){W a==1x?v.3x(T):T[a]},3o:V(a){U b=v(a);b.6B=T;W b},9i:V(a){T.12=0;2x.4O.1u.1G(T,a);W T},1h:V(a,b){W v.1h(T,a,b)},69:V(a){U b=-1;T.1h(V(i){6(T==a)b=i});W b},2m:V(c,d,e){U f=c;6(c.1T==5f)6(d==1x)W T.12&&v[e||"2m"](T[0],c)||1x;11{f={};f[c]=d}W T.1h(V(a){17(U b 1Y f)v.2m(e?T.1e:T,b,v.1S(T,f[b],e,a,b))})},1E:V(a,b){W T.2m(a,b,"59")},2M:V(e){6(1K e!="66"&&e!=Y)W T.64().3A(1j.9v(e));U t="";v.1h(e||T,V(){v.1h(T.4u,V(){6(T.2j!=8)t+=T.2j!=1?T.9o:v.1M.2M([T])})});W t},7c:V(b){6(T[0])v(b,T[0].4T).6p().4c(T[0]).2T(V(){U a=T;2e(a.2c)a=a.2c;W a}).3A(T);W T},c4:V(a){W T.1h(V(){v(T).96().7c(a)})},bU:V(a){W T.1h(V(){v(T).7c(a)})},3A:V(){W T.4P(1L,1d,1,V(a){T.6N(a)})},8J:V(){W T.4P(1L,1d,-1,V(a){T.4c(a,T.2c)})},8I:V(){W T.4P(1L,1c,1,V(a){T.1A.4c(a,T)})},6F:V(){W T.4P(1L,1c,-1,V(a){T.1A.4c(a,T.3p)})},3X:V(){W T.6B||v([])},31:V(t){U b=v.2T(T,V(a){W v.31(t,a)});W T.3o(/[^+>] [^+>]/.1B(t)||t.1X("..")>-1?v.6A(b):b)},6p:V(d){U e=T.2T(V(){W T.8k?v(T.8k)[0]:T.7s(1d)});U f=e.31("*").6x().1h(V(){6(T[y]!=1x)T[y]=Y});6(d===1d)T.31("*").6x().1h(V(i){U a=v.19(T,"44");17(U b 1Y a)17(U c 1Y a[b])v.1V.1W(f[i],b,a[b][c],a[b][c].19)});W e},2y:V(t){W T.3o(v.22(t)&&v.4e(T,V(a,b){W t.1G(a,[b])})||v.4H(t,T))},82:V(t){W T.3o(t.1T==5f&&v.4H(t,T,1d)||v.4e(T,V(a){W(t.1T==2x||t.5I)?v.3J(a,t)<0:a!=t}))},1W:V(t){W T.3o(v.2R(T.2l(),t.1T==5f?v(t).2l():t.12!=1x&&(!t.1w||v.1w(t,"4a"))?t:[t]))},4F:V(a){W a?v.4H(a,T).12>0:1c},a8:V(a){W T.4F("."+a)},49:V(b){6(b==1x){6(T.12){U c=T[0];6(v.1w(c,"3h")){U d=c.6i,a=[],1y=c.1y,3j=c.1g=="3h-3j";6(d<0)W Y;17(U i=3j?d:0,14=3j?d+1:1y.12;i<14;i++){U e=1y[i];6(e.2O){U b=v.1l.1N&&!e.e0["2N"].dP?e.2M:e.2N;6(3j)W b;a.1u(b)}}W a}11 W T[0].2N.24(/\\r/g,"")}}11 W T.1h(V(){6(b.1T==2x&&/5C|7z/.1B(T.1g))T.3W=(v.3J(T.2N,b)>=0||v.3J(T.3R,b)>=0);11 6(v.1w(T,"3h")){U a=b.1T==2x?b:[b];v("di",T).1h(V(){T.2O=(v.3J(T.2N,a)>=0||v.3J(T.2M,a)>=0)});6(!a.12)T.6i=-1}11 T.2N=b})},53:V(a){W a==1x?(T.12?T[0].51:Y):T.64().3A(a)},9z:V(a){W T.6F(a).2S()},9x:V(i){W T.3Y(i,i+1)},3Y:V(){W T.3o(2x.4O.3Y.1G(T,1L))},2T:V(b){W T.3o(v.2T(T,V(a,i){W b.40(a,i,a)}))},6x:V(){W T.1W(T.6B)},4P:V(c,d,e,f){U g=T.12>1,a;W T.1h(V(){6(!a){a=v.6n(c,T.4T);6(e<0)a.cS()}U b=T;6(d&&v.1w(T,"2o")&&v.1w(a[0],"3M"))b=T.67("2G")[0]||T.6N(1j.7g("2G"));v.1h(a,V(){U a=g?T.7s(1d):T;6(!7e(0,a))f.40(b,a)})})}};V 7e(i,a){U b=v.1w(a,"2z");6(b){6(a.48)v.4D({1R:a.48,4s:1c,2Q:"2z"});11 v.72(a.2M||a.9h||a.51||"");6(a.1A)a.1A.4o(a)}11 6(a.2j==1)v("2z",a).1h(7e);W b}v.1I=v.1M.1I=V(){U b=1L[0]||{},a=1,al=1L.12,70=1c;6(b.1T==c8){70=b;b=1L[1]||{}}6(al==1){b=T;a=0}U c;17(;a<al;a++)6((c=1L[a])!=Y)17(U i 1Y c){6(b==c[i])1H;6(70&&1K c[i]==\'66\'&&b[i])v.1I(b[i],c[i]);11 6(c[i]!=1x)b[i]=c[i]}W b};U y="1s"+(1D 4R()).4Q(),98=0,6y={};v.1I({bT:V(a){1F.$=w;6(a)1F.1s=u;W v},22:V(a){W!!a&&1K a!="2F"&&!a.1w&&a.1T!=2x&&/V/i.1B(a+"")},5H:V(a){W a.3K&&!a.2r||a.4j&&a.4T&&!a.4T.2r},72:V(a){a=v.3Q(a);6(a){6(1F.8R)1F.8R(a);11 6(v.1l.2H)1F.6K(a,0);11 4N.40(1F,a)}},1w:V(a,b){W a.1w&&a.1w.39()==b.39()},2B:{},19:V(a,b,c){a=a==1F?6y:a;U d=a[y];6(!d)d=a[y]=++98;6(b&&!v.2B[d])v.2B[d]={};6(c!=1x)v.2B[d][b]=c;W b?v.2B[d][b]:d},4m:V(a,b){a=a==1F?6y:a;U c=a[y];6(b){6(v.2B[c]){3O v.2B[c][b];b="";17(b 1Y v.2B[c])2E;6(!b)v.4m(a)}}11{38{3O a[y]}3i(e){6(a.6Y)a.6Y(y)}3O v.2B[c]}},1h:V(a,b,c){6(c){6(a.12==1x)17(U i 1Y a)b.1G(a[i],c);11 17(U i=0,5M=a.12;i<5M;i++)6(b.1G(a[i],c)===1c)2E}11{6(a.12==1x)17(U i 1Y a)b.40(a[i],i,a[i]);11 17(U i=0,5M=a.12,49=a[0];i<5M&&b.40(49,i,49)!==1c;49=a[++i]){}}W a},1S:V(a,b,c,d,e){6(v.22(b))b=b.40(a,[d]);U f=/z-?69|5v-?bt|2b|8r|bs-?1P/i;W b&&b.1T==7h&&c=="59"&&!f.1B(e)?b+"23":b},27:{1W:V(b,c){v.1h((c||"").3z(/\\s+/),V(i,a){6(!v.27.56(b.27,a))b.27+=(b.27?" ":"")+a})},2S:V(b,c){b.27=c!=1x?v.4e(b.27.3z(/\\s+/),V(a){W!v.27.56(c,a)}).4X(" "):""},56:V(t,c){W v.3J(c,(t.27||t).2v().3z(/\\s+/))>-1}},3s:V(e,o,f){17(U i 1Y o){e.1e["52"+i]=e.1e[i];e.1e[i]=o[i]}f.1G(e,[]);17(U i 1Y o)e.1e[i]=e.1e["52"+i]},1E:V(e,p){6(p=="1P"||p=="28"){U b={},6c,62,d=["aK","aG","aD","az"];v.1h(d,V(){b["8f"+T]=0;b["8d"+T+"8a"]=0});v.3s(e,b,V(){6(v(e).4F(\':5m\')){6c=e.at;62=e.ar}11{e=v(e.7s(1d)).31(":5C").86("3W").3X().1E({6q:"2L",2h:"35",1J:"4b",26:"0",1z:"0"}).3H(e.1A)[0];U a=v.1E(e.1A,"2h")||"5j";6(a=="5j")e.1A.1e.2h="7Y";6c=e.ab;62=e.a9;6(a=="5j")e.1A.1e.2h="5j";e.1A.4o(e)}});W p=="1P"?6c:62}W v.59(e,p)},59:V(d,e,f){U g,3k=[],3s=[];V 1r(a){6(!v.1l.2H)W 1c;U b=1j.4E.5h(a,Y);W!b||b.6j("1r")==""}6(e=="2b"&&v.1l.1N){g=v.2m(d.1e,"2b");W g==""?"1":g}6(e.2i(/5i/i))e=B;6(!f&&d.1e[e])g=d.1e[e];11 6(1j.4E&&1j.4E.5h){6(e.2i(/5i/i))e="5i";e=e.24(/([A-Z])/g,"-$1").34();U h=1j.4E.5h(d,Y);6(h&&!1r(d))g=h.6j(e);11{17(U a=d;a&&1r(a);a=a.1A)3k.6h(a);17(a=0;a<3k.12;a++)6(1r(3k[a])){3s[a]=3k[a].1e.1J;3k[a].1e.1J="4b"}g=e=="1J"&&3s[3k.12-1]!=Y?"3v":1j.4E.5h(d,Y).6j(e)||"";17(a=0;a<3s.12;a++)6(3s[a]!=Y)3k[a].1e.1J=3s[a]}6(e=="2b"&&g=="")g="1"}11 6(d.5o){U i=e.24(/\\-(\\w)/g,V(m,c){W c.39()});g=d.5o[e]||d.5o[i];6(!/^\\d+(23)?$/i.1B(g)&&/^\\d/.1B(g)){U j=d.1e.1z;U k=d.6e.1z;d.6e.1z=d.5o.1z;d.1e.1z=g||0;g=d.1e.9X+"23";d.1e.1z=j;d.6e.1z=k}}W g},6n:V(a,e){U r=[];e=e||1j;v.1h(a,V(i,c){6(!c)W;6(c.1T==7h)c=c.2v();6(1K c=="2F"){c=c.24(/(<(\\w+)[^>]*?)\\/>/g,V(m,a,b){W b.2i(/^(9W|br|9S|dZ|6a|dW|dS|4A|dN|dK)$/i)?m:a+"></"+b+">"});U s=v.3Q(c).34(),1t=e.7g("1t"),3C=[];U d=!s.1X("<dB")&&[1,"<3h>","</3h>"]||!s.1X("<dy")&&[1,"<9K>","</9K>"]||s.2i(/^<(dx|2G|dw|du|dr)/)&&[1,"<2o>","</2o>"]||!s.1X("<3M")&&[2,"<2o><2G>","</2G></2o>"]||(!s.1X("<54")||!s.1X("<dm"))&&[3,"<2o><2G><3M>","</3M></2G></2o>"]||!s.1X("<9S")&&[2,"<2o><2G></2G><9D>","</9D></2o>"]||v.1l.1N&&[1,"1t<1t>","</1t>"]||[0,"",""];1t.51=d[1]+c+d[2];2e(d[0]--)1t=1t.7w;6(v.1l.1N){6(!s.1X("<2o")&&s.1X("<2G")<0)3C=1t.2c&&1t.2c.4u;11 6(d[1]=="<2o>"&&s.1X("<2G")<0)3C=1t.4u;17(U n=3C.12-1;n>=0;--n)6(v.1w(3C[n],"2G")&&!3C[n].4u.12)3C[n].1A.4o(3C[n]);6(/^\\s/.1B(c))1t.4c(e.9v(c.2i(/^\\s*/)[0]),1t.2c)}c=v.3x(1t.4u)}6(0===c.12&&(!v.1w(c,"4a")&&!v.1w(c,"3h")))W;6(c[0]==1x||v.1w(c,"4a")||c.1y)r.1u(c);11 r=v.2R(r,c)});W r},2m:V(a,c,d){U e=v.5H(a)?{}:v.7v;6(c=="2O"&&v.1l.2H)a.1A.6i;6(e[c]){6(d!=1x)a[e[c]]=d;W a[e[c]]}11 6(v.1l.1N&&c=="1e")W v.2m(a.1e,"dh",d);11 6(d==1x&&v.1l.1N&&v.1w(a,"4a")&&(c=="dc"||c=="d9"))W a.d5(c).9o;11 6(a.4j){6(d!=1x){6(c=="1g"&&v.1w(a,"6a")&&a.1A)7r"1g d4 d2\'t be d0";a.cZ(c,d)}6(v.1l.1N&&/9u|48/.1B(c)&&!v.5H(a))W a.61(c,2);W a.61(c)}11{6(c=="2b"&&v.1l.1N){6(d!=1x){a.8r=1;a.2y=(a.2y||"").24(/9t\\([^)]*\\)/,"")+(2w(d).2v()=="cR"?"":"9t(2b="+d*4q+")")}W a.2y?(2w(a.2y.2i(/2b=([^)]*)/)[1])/4q).2v():""}c=c.24(/-([a-z])/cP,V(z,b){W b.39()});6(d!=1x)a[c]=d;W a[c]}},3Q:V(t){W(t||"").24(/^\\s+|\\s+$/g,"")},3x:V(a){U r=[];6(1K a!="cO")17(U i=0,al=a.12;i<al;i++)r.1u(a[i]);11 r=a.3Y(0);W r},3J:V(b,a){17(U i=0,al=a.12;i<al;i++)6(a[i]==b)W i;W-1},2R:V(a,b){6(v.1l.1N){17(U i=0;b[i];i++)6(b[i].2j!=8)a.1u(b[i])}11 17(U i=0;b[i];i++)a.1u(b[i]);W a},6A:V(a){U r=[],3g={};38{17(U i=0,9q=a.12;i<9q;i++){U b=v.19(a[i]);6(!3g[b]){3g[b]=1d;r.1u(a[i])}}}3i(e){r=a}W r},4e:V(a,b,c){6(1K b=="2F")b=4N("1c||V(a,i){W "+b+"}");U d=[];17(U i=0,5Y=a.12;i<5Y;i++)6(!c&&b(a[i],i)||c&&!b(a[i],i))d.1u(a[i]);W d},2T:V(a,b){6(1K b=="2F")b=4N("1c||V(a){W "+b+"}");U c=[];17(U i=0,5Y=a.12;i<5Y;i++){U d=b(a[i],i);6(d!==Y&&d!=1x){6(d.1T!=2x)d=[d];c=c.cM(d)}}W c}});U A=cK.cJ.34();v.1l={5W:(A.2i(/.+(?:cG|cE|cD|cA)[\\/: ]([\\d.]+)/)||[])[1],2H:/9n/.1B(A),4g:/4g/.1B(A),1N:/1N/.1B(A)&&!/4g/.1B(A),46:/46/.1B(A)&&!/(ct|9n)/.1B(A)};U B=v.1l.1N?"5R":"79";v.1I({6m:!v.1l.1N||1j.cp=="co",5R:v.1l.1N?"5R":"79",7v:{"17":"cm","3I":"27","5i":B,79:B,5R:B,51:"51",27:"27",2N:"2N",4r:"4r",3W:"3W",ck:"cj",2O:"2O",ch:"cg"}});v.1h({2p:"a.1A",ce:"1s.5L(a,\'1A\')",cd:"1s.3V(a,2,\'3p\')",ca:"1s.3V(a,2,\'5p\')",c7:"1s.5L(a,\'3p\')",c6:"1s.5L(a,\'5p\')",c5:"1s.6X(a.1A.2c,a)",c3:"1s.6X(a.2c)",96:"1s.1w(a,\'c2\')?a.c1||a.c0.1j:1s.3x(a.4u)"},V(i,n){v.1M[i]=V(a){U b=v.2T(T,n);6(a&&1K a=="2F")b=v.4H(a,b);W T.3o(v.6A(b))}});v.1h({3H:"3A",bZ:"8J",4c:"8I",bY:"6F",bX:"9z"},V(i,n){v.1M[i]=V(){U a=1L;W T.1h(V(){17(U j=0,al=a.12;j<al;j++)v(a[j])[n](T)})}});v.1h({86:V(a){v.2m(T,a,"");T.6Y(a)},bW:V(c){v.27.1W(T,c)},bS:V(c){v.27.2S(T,c)},bQ:V(c){v.27[v.27.56(T,c)?"2S":"1W"](T,c)},2S:V(a){6(!a||v.2y(a,[T]).r.12){v.4m(T);T.1A.4o(T)}},64:V(){v("*",T).1h(V(){v.4m(T)});2e(T.2c)T.4o(T.2c)}},V(i,n){v.1M[i]=V(){W T.1h(n,1L)}});v.1h(["bO","8a"],V(i,a){U n=a.34();v.1M[n]=V(h){W T[0]==1F?v.1l.2H&&4J["bM"+a]||v.6m&&1f.14(1j.3K["6U"+a],1j.2r["6U"+a])||1j.2r["6U"+a]:T[0]==1j?1f.14(1j.2r["8W"+a],1j.2r["6S"+a]):h==1x?(T.12?v.1E(T[0],n):Y):T.1E(n,h.1T==5f?h:h+"23")}});U C=v.1l.2H&&1Q(v.1l.5W)<bK?"(?:[\\\\w*6P-]|\\\\\\\\.)":"(?:[\\\\w\\bJ-\\bH*6P-]|\\\\\\\\.)",8Q=1D 5x("^>\\\\s*("+C+"+)"),8N=1D 5x("^("+C+"+)(#)("+C+"+)"),8L=1D 5x("^([#.]?)("+C+"*)");v.1I({6M:{"":"m[2]==\'*\'||1s.1w(a,m[2])","#":"a.61(\'33\')==m[2]",":":{bF:"i<m[3]-0",bE:"i>m[3]-0",3V:"m[3]-0==i",9x:"m[3]-0==i",1k:"i==0",4K:"i==r.12-1",8H:"i%2==0",92:"i%2","1k-5y":"a.1A.67(\'*\')[0]==a","4K-5y":"1s.3V(a.1A.7w,1,\'5p\')==a","bC-5y":"!1s.3V(a.1A.7w,2,\'5p\')",2p:"a.2c",64:"!a.2c",bB:"(a.9h||a.bA||1s(a).2M()||\'\').1X(m[3])>=0",5m:\'"2L"!=a.1g&&1s.1E(a,"1J")!="3v"&&1s.1E(a,"6q")!="2L"\',2L:\'"2L"==a.1g||1s.1E(a,"1J")=="3v"||1s.1E(a,"6q")=="2L"\',bz:"!a.4r",4r:"a.4r",3W:"a.3W",2O:"a.2O||1s.2m(a,\'2O\')",2M:"\'2M\'==a.1g",5C:"\'5C\'==a.1g",7z:"\'7z\'==a.1g",6J:"\'6J\'==a.1g",6I:"\'6I\'==a.1g",6G:"\'6G\'==a.1g",8A:"\'8A\'==a.1g",8y:"\'8y\'==a.1g",3B:\'"3B"==a.1g||1s.1w(a,"3B")\',6a:"/6a|3h|8x|3B/i.1B(a.1w)",56:"1s.31(m[3],a).12",bw:"/h\\\\d/i.1B(a.1w)",bu:"1s.4e(1s.4B,V(1M){W a==1M.1i;}).12"}},8u:[/^(\\[) *@?([\\w-]+) *([!*$^~=]*) *(\'?"?)(.*?)\\4 *\\]/,/^(:)([\\w-]+)\\("?\'?(.*?(\\(.*?\\))?[^(]*?)"?\'?\\)/,1D 5x("^([:.#]*)("+C+"+)")],4H:V(a,b,c){U d,37=[];2e(a&&a!=d){d=a;U f=v.2y(a,b,c);a=f.t.24(/^\\s*,\\s*/,"");37=c?b=f.r:v.2R(37,f.r)}W 37},31:V(t,a){6(1K t!="2F")W[t];6(a&&!a.2j)a=Y;a=a||1j;U b=[a],3g=[],4K;2e(t&&4K!=t){U r=[];4K=t;t=v.3Q(t);U d=1c;U e=8Q;U m=e.2t(t);6(m){U f=m[1].39();17(U i=0;b[i];i++)17(U c=b[i].2c;c;c=c.3p)6(c.2j==1&&(f=="*"||c.1w.39()==f.39()))r.1u(c);b=r;t=t.24(e,"");6(t.1X(" ")==0)1H;d=1d}11{e=/^([>+~])\\s*(\\w*)/i;6((m=e.2t(t))!=Y){r=[];U f=m[2],2R={};m=m[1];17(U j=0,45=b.12;j<45;j++){U n=m=="~"||m=="+"?b[j].3p:b[j].2c;17(;n;n=n.3p)6(n.2j==1){U g=v.19(n);6(m=="~"&&2R[g])2E;6(!f||n.1w.39()==f.39()){6(m=="~")2R[g]=1d;r.1u(n)}6(m=="+")2E}}b=r;t=v.3Q(t.24(e,""));d=1d}}6(t&&!d){6(!t.1X(",")){6(a==b[0])b.5S();3g=v.2R(3g,b);r=b=[a];t=" "+t.8p(1,t.12)}11{U h=8N;U m=h.2t(t);6(m){m=[0,m[2],m[3],m[1]]}11{h=8L;m=h.2t(t)}m[2]=m[2].24(/\\\\/g,"");U k=b[b.12-1];6(m[1]=="#"&&k&&k.5d&&!v.5H(k)){U l=k.5d(m[2]);6((v.1l.1N||v.1l.4g)&&l&&1K l.33=="2F"&&l.33!=m[2])l=v(\'[@33="\'+m[2]+\'"]\',k)[0];b=r=l&&(!m[3]||v.1w(l,m[3]))?[l]:[]}11{17(U i=0;b[i];i++){U o=m[1]=="#"&&m[3]?m[3]:m[1]!=""||m[0]==""?"*":m[2];6(o=="*"&&b[i].1w.34()=="66")o="4A";r=v.2R(r,b[i].67(o))}6(m[1]==".")r=v.6D(r,m[2]);6(m[1]=="#"){U p=[];17(U i=0;r[i];i++)6(r[i].61("33")==m[2]){p=[r[i]];2E}r=p}b=r}t=t.24(h,"")}}6(t){U q=v.2y(t,r);b=r=q.r;t=v.3Q(q.t)}}6(t)b=[];6(b&&a==b[0])b.5S();3g=v.2R(3g,b);W 3g},6D:V(r,m,a){m=" "+m+" ";U b=[];17(U i=0;r[i];i++){U c=(" "+r[i].27+" ").1X(m)>=0;6(!a&&c||a&&!c)b.1u(r[i])}W b},2y:V(t,r,b){U d;2e(t&&t!=d){d=t;U p=v.8u,m;17(U i=0;p[i];i++){m=p[i].2t(t);6(m){t=t.bo(m[0].12);m[2]=m[2].24(/\\\\/g,"");2E}}6(!m)2E;6(m[1]==":"&&m[2]=="82")r=v.2y(m[3],r,1d).r;11 6(m[1]==".")r=v.6D(r,m[2],b);11 6(m[1]=="["){U e=[],1g=m[3];17(U i=0,45=r.12;i<45;i++){U a=r[i],z=a[v.7v[m[2]]||m[2]];6(z==Y||/9u|48|2O/.1B(m[2]))z=v.2m(a,m[2])||\'\';6((1g==""&&!!z||1g=="="&&z==m[5]||1g=="!="&&z!=m[5]||1g=="^="&&z&&!z.1X(m[5])||1g=="$="&&z.8p(z.12-m[5].12)==m[5]||(1g=="*="||1g=="~=")&&z.1X(m[5])>=0)^b)e.1u(a)}r=e}11 6(m[1]==":"&&m[2]=="3V-5y"){U g={},e=[],1B=/(\\d*)n\\+?(\\d*)/.2t(m[3]=="8H"&&"2n"||m[3]=="92"&&"2n+1"||!/\\D/.1B(m[3])&&"n+"+m[3]||m[3]),1k=(1B[1]||1)-0,d=1B[2]-0;17(U i=0,45=r.12;i<45;i++){U h=r[i],1A=h.1A,33=v.19(1A);6(!g[33]){U c=1;17(U n=1A.2c;n;n=n.3p)6(n.2j==1)n.7l=c++;g[33]=1d}U j=1c;6(1k==1){6(d==0||h.7l==d)j=1d}11 6((h.7l+d)%1k==0)j=1d;6(j^b)e.1u(h)}r=e}11{U f=v.6M[m[1]];6(1K f!="2F")f=v.6M[m[1]][m[2]];f=4N("1c||V(a,i){W "+f+"}");r=v.4e(r,f,b)}}W{r:r,t:t}},5L:V(a,b){U c=[];U d=a[b];2e(d&&d!=1j){6(d.2j==1)c.1u(d);d=d[b]}W c},3V:V(a,b,c,d){b=b||1;U e=0;17(;a;a=a[c])6(a.2j==1&&++e==b)2E;W a},6X:V(n,a){U r=[];17(;n;n=n.3p){6(n.2j==1&&(!a||n!=a))r.1u(n)}W r}});v.1V={1W:V(b,c,d,e){6(v.1l.1N&&b.4U!=1x)b=1F;6(!d.3y)d.3y=T.3y++;6(e!=1x){U f=d;d=V(){W f.1G(T,1L)};d.19=e;d.3y=f.3y}U g=c.3z(".");c=g[0];d.1g=g[1];U h=v.19(b,"44")||v.19(b,"44",{});U i=v.19(b,"3n",V(){U a;6(1K v=="1x"||v.1V.7o)W a;a=v.1V.3n.1G(b,1L);W a});U j=h[c];6(!j){j=h[c]={};6(b.7I)b.7I(c,i,1c);11 b.b8("63"+c,i)}j[d.3y]=d;T.30[c]=1d},3y:1,30:{},2S:V(a,b,c){U d=v.19(a,"44"),3S,69;6(1K b=="2F"){U e=b.3z(".");b=e[0]}6(d){6(b&&b.1g){c=b.6z;b=b.1g}6(!b){17(b 1Y d)T.2S(a,b)}11 6(d[b]){6(c)3O d[b][c.3y];11 17(c 1Y d[b])6(!e[1]||d[b][c].1g==e[1])3O d[b][c];17(3S 1Y d[b])2E;6(!3S){6(a.7t)a.7t(b,v.19(a,"3n"),1c);11 a.b1("63"+b,v.19(a,"3n"));3S=Y;3O d[b]}}17(3S 1Y d)2E;6(!3S){v.4m(a,"44");v.4m(a,"3n")}}},2u:V(a,b,c,d,e){b=v.3x(b||[]);6(!c){6(T.30[a])v("*").1W([1F,1j]).2u(a,b)}11{U f,3S,1M=v.22(c[a]||Y),7u=!b[0]||!b[0].41;6(7u)b.6h(T.7x({1g:a,3m:c}));b[0].1g=a;6(v.22(v.19(c,"3n")))f=v.19(c,"3n").1G(c,b);6(!1M&&c["63"+a]&&c["63"+a].1G(c,b)===1c)f=1c;6(7u)b.5S();6(e&&e.1G(c,b)===1c)f=1c;6(1M&&d!==1c&&f!==1c&&!(v.1w(c,\'a\')&&a=="6v")){T.7o=1d;c[a]()}T.7o=1c}W f},3n:V(a){U b;a=v.1V.7x(a||1F.1V||{});U d=a.1g.3z(".");a.1g=d[0];U c=v.19(T,"44")&&v.19(T,"44")[a.1g],4I=2x.4O.3Y.40(1L,1);4I.6h(a);17(U j 1Y c){4I[0].6z=c[j];4I[0].19=c[j].19;6(!d[1]||c[j].1g==d[1]){U e=c[j].1G(T,4I);6(b!==1c)b=e;6(e===1c){a.41();a.57()}}}6(v.1l.1N)a.3m=a.41=a.57=a.6z=a.19=Y;W b},7x:V(a){U c=a;a=v.1I({},c);a.41=V(){6(c.41)c.41();c.aQ=1c};a.57=V(){6(c.57)c.57();c.aN=1d};6(!a.3m&&a.8g)a.3m=a.8g;6(v.1l.2H&&a.3m.2j==3)a.3m=c.3m.1A;6(!a.6T&&a.6u)a.6T=a.6u==a.3m?a.aH:a.6u;6(a.32==Y&&a.68!=Y){U e=1j.3K,b=1j.2r;a.32=a.68+(e&&e.3b||b.3b||0);a.4y=a.9Q+(e&&e.3a||b.3a||0)}6(!a.4z&&(a.8e||a.8c))a.4z=a.8e||a.8c;6(!a.8b&&a.89)a.8b=a.89;6(!a.4z&&a.3B)a.4z=(a.3B&1?1:(a.3B&2?3:(a.3B&4?2:0)));W a}};v.1M.1I({5n:V(a,b,c){W a=="88"?T.3j(a,b,c):T.1h(V(){v.1V.1W(T,a,c||b,c&&b)})},3j:V(b,c,d){W T.1h(V(){v.1V.1W(T,b,V(a){v(T).87(a);W(d||c).1G(T,1L)},d&&c)})},87:V(a,b){W T.1h(V(){v.1V.2S(T,a,b)})},2u:V(a,b,c){W T.1h(V(){v.1V.2u(a,b,T,1d,c)})},as:V(a,b,c){6(T[0])W v.1V.2u(a,b,T[0],1c,c)},36:V(){U a=1L;W T.6v(V(e){T.6t=0==T.6t?1:0;e.41();W a[T.6t].1G(T,[e])||1c})},aq:V(f,g){V 6s(e){U p=e.6T;2e(p&&p!=T)38{p=p.1A}3i(e){p=T};6(p==T)W 1c;W(e.1g=="6r"?f:g).1G(T,[e])}W T.6r(6s).84(6s)},3e:V(f){83();6(v.5l)f.1G(1j,[v]);11 v.4G.1u(V(){W f.1G(T,[v])});W T}});v.1I({5l:1c,4G:[],3e:V(){6(!v.5l){v.5l=1d;6(v.4G){v.1h(v.4G,V(){T.1G(1j)});v.4G=Y}6(v.1l.46||v.1l.4g)1j.7t("81",v.3e,1c);6(!1F.ap.12)v(1F).4d(V(){v("#6o").2S()})}}});v.1h(("ao,an,4d,am,8W,88,6v,ak,"+"80,7Z,aj,6r,84,ai,3h,"+"6G,ah,ag,af,5k").3z(","),V(i,o){v.1M[o]=V(f){W f?T.5n(o,f):T.2u(o)}});U D=1c;V 83(){6(D)W;D=1d;6(v.1l.46||v.1l.4g)1j.7I("81",v.3e,1c);11 6(v.1l.1N){1j.ae("<ad"+"ac 33=6o aa=1d "+"48=//:><\\/2z>");U a=1j.5d("6o");6(a)a.7X=V(){6(T.3E!="21")W;v.3e()};a=Y}11 6(v.1l.2H)v.6l=4U(V(){6(1j.3E=="7W"||1j.3E=="21"){4C(v.6l);v.6l=Y;v.3e()}},10);v.1V.1W(1F,"4d",v.3e)}v.1M.1I({4d:V(c,d,e){6(v.22(c))W T.5n("4d",c);U f=c.1X(" ");6(f>=0){U g=c.3Y(f,c.12);c=c.3Y(0,f)}e=e||V(){};U h="6k";6(d)6(v.22(d)){e=d;d=Y}11{d=v.4A(d);h="7V"}U i=T;v.4D({1R:c,1g:h,19:d,21:V(a,b){6(b=="2s"||b=="7U")i.53(g?v("<1t/>").3A(a.5g.24(/<2z(.|\\s)*?\\/2z>/g,"")).31(g):a.5g);6K(V(){i.1h(e,[a.5g,b,a])},13)}});W T},a6:V(){W v.4A(T.7T())},7T:V(){W T.2T(V(){W v.1w(T,"4a")?v.3x(T.a5):T}).2y(V(){W T.3R&&!T.4r&&(T.3W||/3h|8x/i.1B(T.1w)||/2M|2L|6I/i.1B(T.1g))}).2T(V(i,b){U c=v(T).49();W c==Y?Y:c.1T==2x?v.2T(c,V(a,i){W{3R:b.3R,2N:a}}):{3R:b.3R,2N:c}}).2l()}});v.1h("7S,7R,7Q,7P,7O,7N".3z(","),V(i,o){v.1M[o]=V(f){W T.5n(o,f)}});U E=(1D 4R).4Q();v.1I({2l:V(a,b,c,d){6(v.22(b)){c=b;b=Y}W v.4D({1g:"6k",1R:a,19:b,2s:c,2Q:d})},a4:V(a,b){W v.2l(a,Y,b,"2z")},a3:V(a,b,c){W v.2l(a,b,c,"5e")},a2:V(a,b,c,d){6(v.22(b)){c=b;b={}}W v.4D({1g:"7V",1R:a,19:b,2s:c,2Q:d})},a1:V(a){v.1I(v.6g,a)},6g:{30:1d,1g:"6k",3D:0,7M:"a0/x-9Z-4a-9Y",7L:1d,4s:1d,19:Y},5c:{},4D:V(s){U c,3L=/=(\\?|%3F)/g,2g,19;s=v.1I(1d,s,v.1I(1d,{},v.6g,s));6(s.19&&s.7L&&1K s.19!="2F")s.19=v.4A(s.19);6(s.2Q=="5b"){6(s.1g.34()=="2l"){6(!s.1R.2i(3L))s.1R+=(s.1R.2i(/\\?/)?"&":"?")+(s.5b||"7K")+"=?"}11 6(!s.19||!s.19.2i(3L))s.19=(s.19?s.19+"&":"")+(s.5b||"7K")+"=?";s.2Q="5e"}6(s.2Q=="5e"&&(s.19&&s.19.2i(3L)||s.1R.2i(3L))){c="5b"+E++;6(s.19)s.19=s.19.24(3L,"="+c);s.1R=s.1R.24(3L,"="+c);s.2Q="2z";1F[c]=V(a){19=a;2s();21();1F[c]=1x;38{3O 1F[c]}3i(e){}}}6(s.2Q=="2z"&&s.2B==Y)s.2B=1c;6(s.2B===1c&&s.1g.34()=="2l")s.1R+=(s.1R.2i(/\\?/)?"&":"?")+"6P="+(1D 4R()).4Q();6(s.19&&s.1g.34()=="2l"){s.1R+=(s.1R.2i(/\\?/)?"&":"?")+s.19;s.19=Y}6(s.30&&!v.6d++)v.1V.2u("7S");6(!s.1R.1X("9V")&&s.2Q=="2z"){U d=1j.67("e3")[0];U f=1j.7g("2z");f.48=s.1R;6(!c&&(s.2s||s.21)){U g=1c;f.e2=f.7X=V(){6(!g&&(!T.3E||T.3E=="7W"||T.3E=="21")){g=1d;2s();21();d.4o(f)}}}d.6N(f);W}U h=1c;U i=1F.9T?1D 9T("e1.dY"):1D 9R();i.dX(s.1g,s.1R,s.4s);6(s.19)i.7H("dV-dU",s.7M);6(s.7F)i.7H("dQ-7E-dO",v.5c[s.1R]||"dM, 9P dI dF 7D:7D:7D dE");i.7H("X-dC-dA","9R");6(s.9O)s.9O(i);6(s.30)v.1V.2u("7N",[i,s]);U j=V(a){6(!h&&i&&(i.3E==4||a=="3D")){h=1d;6(k){4C(k);k=Y}2g=a=="3D"&&"3D"||!v.9M(i)&&"5k"||s.7F&&v.9L(i,s.1R)&&"7U"||"2s";6(2g=="2s"){38{19=v.9J(i,s.2Q)}3i(e){2g="7C"}}6(2g=="2s"){U b;38{b=i.7B("9I-7E")}3i(e){}6(s.7F&&b)v.5c[s.1R]=b;6(!c)2s()}11 v.7A(s,i,2g);21();6(s.4s)i=Y}};6(s.4s){U k=4U(j,13);6(s.3D>0)6K(V(){6(i){i.dv();6(!h)j("3D")}},s.3D)}38{i.dt(s.19)}3i(e){v.7A(s,i,Y,e)}6(!s.4s)j();W i;V 2s(){6(s.2s)s.2s(19,2g);6(s.30)v.1V.2u("7O",[i,s])}V 21(){6(s.21)s.21(i,2g);6(s.30)v.1V.2u("7Q",[i,s]);6(s.30&&!--v.6d)v.1V.2u("7R")}},7A:V(s,a,b,e){6(s.5k)s.5k(a,b,e);6(s.30)v.1V.2u("7P",[a,s,e])},6d:0,9M:V(r){38{W!r.2g&&ds.dq=="6J:"||(r.2g>=7y&&r.2g<dp)||r.2g==9F||v.1l.2H&&r.2g==1x}3i(e){}W 1c},9L:V(a,b){38{U c=a.7B("9I-7E");W a.2g==9F||c==v.5c[b]||v.1l.2H&&a.2g==1x}3i(e){}W 1c},9J:V(r,a){U b=r.7B("dl-1g");U c=a=="9E"||!a&&b&&b.1X("9E")>=0;U d=c?r.dk:r.5g;6(c&&d.3K.4j=="7C")7r"7C";6(a=="2z")v.72(d);6(a=="5e")d=4N("("+d+")");W d},4A:V(a){U s=[];6(a.1T==2x||a.5I)v.1h(a,V(){s.1u(4x(T.3R)+"="+4x(T.2N))});11 17(U j 1Y a)6(a[j]&&a[j].1T==2x)v.1h(a[j],V(){s.1u(4x(j)+"="+4x(T))});11 s.1u(4x(j)+"="+4x(a[j]));W s.4X("&").24(/%20/g,"+")}});v.1M.1I({1C:V(a,b){W a?T.2X({1P:"1C",28:"1C",2b:"1C"},a,b):T.2y(":2L").1h(V(){T.1e.1J=T.4w?T.4w:"";6(v.1E(T,"1J")=="3v")T.1e.1J="4b"}).3X()},2k:V(a,b){W a?T.2X({1P:"2k",28:"2k",2b:"2k"},a,b):T.2y(":5m").1h(V(){T.4w=T.4w||v.1E(T,"1J");6(T.4w=="3v")T.4w="4b";T.1e.1J="3v"}).3X()},9C:v.1M.36,36:V(a,b){W v.22(a)&&v.22(b)?T.9C(a,b):a?T.2X({1P:"36",28:"36",2b:"36"},a,b):T.1h(V(){v(T)[v(T).4F(":2L")?"1C":"2k"]()})},de:V(a,b){W T.2X({1P:"1C"},a,b)},dd:V(a,b){W T.2X({1P:"2k"},a,b)},db:V(a,b){W T.2X({1P:"36"},a,b)},da:V(a,b){W T.2X({2b:"1C"},a,b)},d7:V(a,b){W T.2X({2b:"2k"},a,b)},d6:V(a,b,c){W T.2X({2b:b},a,c)},2X:V(g,h,i,j){U k=v.9A(h,i,j);W T[k.4Z===1c?"1h":"4Z"](V(){k=v.1I({},k);U f=v(T).4F(":2L"),4J=T;17(U p 1Y g){6(g[p]=="2k"&&f||g[p]=="1C"&&!f)W v.22(k.21)&&k.21.1G(T);6(p=="1P"||p=="28"){k.1J=v.1E(T,"1J");k.3U=T.1e.3U}}6(k.3U!=Y)T.1e.3U="2L";k.4Y=v.1I({},g);v.1h(g,V(a,b){U e=1D v.3u(4J,k,a);6(/36|1C|2k/.1B(b))e[b=="36"?f?"1C":"2k":b](g);11{U c=b.2v().2i(/^([+-]=)?([\\d+-.]+)(.*)$/),2K=e.37(1d)||0;6(c){U d=2w(c[2]),3w=c[3]||"23";6(3w!="23"){4J.1e[a]=(d||1)+3w;2K=((d||1)/e.37(1d))*2K;4J.1e[a]=2K+3w}6(c[1])d=((c[1]=="-="?-1:1)*d)+2K;e.4W(2K,d,3w)}11 e.4W(2K,b,"")}});W 1d})},4Z:V(a,b){6(v.22(a)){b=a;a="3u"}6(!a||(1K a=="2F"&&!b))W F(T[0],a);W T.1h(V(){6(b.1T==2x)F(T,a,b);11{F(T,a).1u(b);6(F(T,a).12==1)b.1G(T)}})},d1:V(){U a=v.4B;W T.1h(V(){17(U i=0;i<a.12;i++)6(a[i].1i==T)a.9w(i--,1)}).7q()}});U F=V(a,b,c){6(!a)W;U q=v.19(a,b+"4Z");6(!q||c)q=v.19(a,b+"4Z",c?v.3x(c):[]);W q};v.1M.7q=V(a){a=a||"3u";W T.1h(V(){U q=F(T,a);q.5S();6(q.12)q[0].1G(T)})};v.1I({9A:V(a,b,c){U d=a&&a.1T==cY?a:{21:c||!c&&b||v.22(a)&&a,3f:a,4V:c&&b||b&&b.1T!=cX&&b};d.3f=(d.3f&&d.3f.1T==7h?d.3f:{cW:cV,cU:7y}[d.3f])||cT;d.52=d.21;d.21=V(){v(T).7q();6(v.22(d.52))d.52.1G(T)};W d},4V:{9s:V(p,n,a,b){W a+b*p},7n:V(p,n,a,b){W((-1f.cQ(p*1f.7m)/2)+0.5)*b+a}},4B:[],3u:V(a,b,c){T.1y=b;T.1i=a;T.1S=c;6(!b.5a)b.5a={}}});v.3u.4O={60:V(){6(T.1y.3Z)T.1y.3Z.1G(T.1i,[T.3r,T]);(v.3u.3Z[T.1S]||v.3u.3Z.9r)(T);6(T.1S=="1P"||T.1S=="28")T.1i.1e.1J="4b"},37:V(a){6(T.1i[T.1S]!=Y&&T.1i.1e[T.1S]==Y)W T.1i[T.1S];U r=2w(v.59(T.1i,T.1S,a));W r&&r>-cN?r:2w(v.1E(T.1i,T.1S))||0},4W:V(b,c,d){T.7k=(1D 4R()).4Q();T.2K=b;T.3X=c;T.3w=d||T.3w||"23";T.3r=T.2K;T.5Z=T.65=0;T.60();U e=T;V t(){W e.3Z()}t.1i=T.1i;v.4B.1u(t);6(v.4B.12==1){U f=4U(V(){U a=v.4B;17(U i=0;i<a.12;i++)6(!a[i]())a.9w(i--,1);6(!a.12)4C(f)},13)}},1C:V(){T.1y.5a[T.1S]=v.2m(T.1i.1e,T.1S);T.1y.1C=1d;T.4W(0,T.37());6(T.1S=="28"||T.1S=="1P")T.1i.1e[T.1S]="7j";v(T.1i).1C()},2k:V(){T.1y.5a[T.1S]=v.2m(T.1i.1e,T.1S);T.1y.2k=1d;T.4W(T.37(),0)},3Z:V(){U t=(1D 4R()).4Q();6(t>T.1y.3f+T.7k){T.3r=T.3X;T.5Z=T.65=1;T.60();T.1y.4Y[T.1S]=1d;U a=1d;17(U i 1Y T.1y.4Y)6(T.1y.4Y[i]!==1d)a=1c;6(a){6(T.1y.1J!=Y){T.1i.1e.3U=T.1y.3U;T.1i.1e.1J=T.1y.1J;6(v.1E(T.1i,"1J")=="3v")T.1i.1e.1J="4b"}6(T.1y.2k)T.1i.1e.1J="3v";6(T.1y.2k||T.1y.1C)17(U p 1Y T.1y.4Y)v.2m(T.1i.1e,p,T.1y.5a[p])}6(a&&v.22(T.1y.21))T.1y.21.1G(T.1i);W 1c}11{U n=t-T.7k;T.65=n/T.1y.3f;T.5Z=v.4V[T.1y.4V||(v.4V.7n?"7n":"9s")](T.65,n,0,1,T.1y.3f);T.3r=T.2K+((T.3X-T.2K)*T.5Z);T.60()}W 1d}};v.3u.3Z={3b:V(a){a.1i.3b=a.3r},3a:V(a){a.1i.3a=a.3r},2b:V(a){v.2m(a.1i.1e,"2b",a.3r)},9r:V(a){a.1i.1e[a.1S]=a.3r+a.3w}};v.1M.6S=V(){U b=0,1m=0,1i=T[0],7i;6(1i)cL(v.1l){U c=v.1E(1i,"2h")=="35",2p=1i.1A,2Z=1i.2Z,43=1i.4T,5X=2H&&1Q(5W)<cI;6(1i.9p){7f=1i.9p();1W(7f.1z+1f.14(43.3K.3b,43.2r.3b),7f.1m+1f.14(43.3K.3a,43.2r.3a));6(1N){U d=v("53").1E("cH");d=(d=="cF"||v.6m&&1Q(5W)>=7)&&2||d;1W(-d,-d)}}11{1W(1i.7d,1i.6f);2e(2Z){1W(2Z.7d,2Z.6f);6(46&&/^t[d|h]$/i.1B(2p.4j)||!5X)d(2Z);6(5X&&!c&&v.1E(2Z,"2h")=="35")c=1d;2Z=2Z.2Z}2e(2p.4j&&!/^2r|53$/i.1B(2p.4j)){6(!/^cC|2o-cB.*$/i.1B(v.1E(2p,"1J")))1W(-2p.3b,-2p.3a);6(46&&v.1E(2p,"3U")!="5m")d(2p);2p=2p.1A}6(5X&&c)1W(-43.2r.7d,-43.2r.6f)}7i={1m:1m,1z:b}}W 7i;V d(a){1W(v.1E(a,"cz"),v.1E(a,"cy"))}V 1W(l,t){b+=1Q(l)||0;1m+=1Q(t)||0}}})();(V($){V 9m(n,q,r){U u=[];U z={5U:["#cx","#cw","#cv","#cu","#cs"],2q:{1C:1d,9l:1,7a:Y,9k:"#cr",78:Y,2h:"cq",9j:5,3G:Y,77:0.85},5Q:{1U:Y,76:5,4S:74,73:Y,15:Y,14:Y,5P:0},71:{76:5,1U:Y,4S:74,15:Y,14:Y,5P:0.ci},1Z:{1C:1c,4p:3,1q:2,2U:1d,3d:"#cf"},2Y:{1C:1c,1q:2,2U:1c,3d:Y},2f:{1C:1c,1q:2,5q:1,2U:1d,3d:Y},2A:{1r:"#cc",3G:Y,9f:"#cb",5K:3},3l:{4n:Y,1r:"#c9"},4h:4};U A=Y,3T=Y;U B=Y,2D=Y;U C=n;U D={};U E={};U F={1z:0,26:0,1m:0,2a:0};U G=0;U H=0;U I=0;U J=0;U K=0;U L=0;U M=0;U N=0;u=9d(q);9c(r);9b();9a();99();97();6W(D,z.5Q);8h();6W(E,z.71);6w(D,z.5Q);6w(E,z.71);95();94();8j();T.bV=V(){W A};T.bR=V(){W F};T.4i=4i;T.6V=6V;V 9d(d){U a=[];17(U i=0;i<d.12;++i){U s;6(d[i].19){s={};17(U v 1Y d[i])s[v]=d[i][v]}11{s={19:d[i]}}a.1u(s)}W a}V 9c(o){$.1I(1d,z,o)}V 9a(){I=C.28();J=C.1P();C.53("");C.1E("2h","7Y");6(I<=0||J<=0)7r"bP bN 17 91, 28 = "+I+", 1P = "+J;A=1s(\'<5G 28="\'+I+\'" 1P="\'+J+\'"></5G>\').3H(C).2l(0);6(1s.1l.1N)A=1F.90.8Z(A);B=A.8Y("2d");3T=1s(\'<5G 1e="2h:35;1z:8l;1m:8l;" 28="\'+I+\'" 1P="\'+J+\'"></5G>\').3H(C).2l(0);6(1s.1l.1N)3T=1F.90.8Z(3T);2D=3T.8Y("2d")}V 99(){6(z.3l.4n!=Y){$(3T).80(8X);C.2l(0).bL=8o}}V 97(){E.2W=D.2W=0;D.2J=E.2J=1;6(u.12==0)W;U i,6R=1c;17(i=0;i<u.12;++i){6(u[i].19.12>0){D.2W=D.2J=u[i].19[0][0];E.2W=E.2J=u[i].19[0][1];6R=1d;2E}}6(!6R)W;17(i=0;i<u.12;++i){U a=u[i].19;17(U j=0;j<a.12;++j){U x=a[j][0];U y=a[j][1];6(x<D.2W)D.2W=x;11 6(x>D.2J)D.2J=x;6(y<E.2W)E.2W=y;11 6(y>E.2J)E.2J=y}}}V 8V(a,b,c,d){U e=(c-b)/a;U f=8U(e);U g=e/f;U h=1;6(g<1.5)h=1;11 6(g<2.25)h=2;11 6(g<3)h=2.5;11 6(g<7.5)h=5;11 h=10;6(h==2.5&&d==0)h=2;h*=f;W h}V 6W(a,b){U c=b.15!=Y?b.15:a.2W;U d=b.14!=Y?b.14:a.2J;6(d-c==0.0){U e;6(d==0.0)e=1.0;11 e=0.9P;c-=e;d+=e}a.2C=8V(b.76,c,d,b.73);U f;6(b.15==Y){f=b.5P;6(f!=0){c-=a.2C*f;6(c<0&&a.2W>=0)c=0;c=a.2C*1f.3P(c/a.2C)}}6(b.14==Y){f=b.5P;6(f!=0){d+=a.2C*f;6(d>0&&a.2J<=0)d=0;d=a.2C*1f.6Q(d/a.2C)}}a.15=c;a.14=d}V 8h(){6(z.5Q.14==Y){U a=D.14;17(U i=0;i<u.12;++i)6(u[i].2f.1C&&u[i].2f.5q+D.2J>a)a=D.14+u[i].2f.5q;D.14=a}}V 74(a){W""+a}V 6w(a,b){U i;a.1U=[];6(b.1U){U c=b.1U;6($.22(c))c=c({15:a.15,14:a.14});17(i=0;i<c.12;++i){U v,29;U t=c[i];6(1K(t)=="66"){v=t[0];6(t.12>1)29=t[1];11 29=b.4S(v)}11{v=t;29=b.4S(v)}a.1U[i]={v:v,29:29}}}11{U d=a.2C*1f.6Q(a.15/a.2C);17(i=0;d+i*a.2C<=a.14;++i){v=d+i*a.2C;U e=b.73;6(e==Y)e=1-1f.3P(1f.8T(a.2C)/1f.8S);6(e<0)e=0;v=v.bI(e);a.1U.1u({v:v,29:b.4S(v)})}}}V 95(){U i,5E="";17(i=0;i<E.1U.12;++i){U l=E.1U[i].29.12;6(l>5E.12)5E=E.1U[i].29}U a=$(\'<1t 1e="2h:35;1m:-bG;5v-5N:6O" 3I="6L">\'+5E+\'</1t>\').3H(C);G=a.28();H=a.1P();a.2S();U b=2;6(z.1Z.1C)b=1f.14(b,z.1Z.4p+z.1Z.1q/2);17(i=0;i<u.12;++i){6(u[i].1Z.1C)b=1f.14(b,u[i].1Z.4p+u[i].1Z.1q/2)}F.1z=F.26=F.1m=F.2a=b;F.1z+=G+z.2A.5K;F.2a+=H+z.2A.5K;K=I-F.1z-F.26;L=J-F.2a-F.1m;M=K/(D.14-D.15);N=L/(E.14-E.15)}V 94(){8P();8O();17(U i=0;i<u.12;i++){8M(u[i])}}V 1n(x){W(x-D.15)*M}V 1p(y){W L-(y-E.15)*N}V 8P(){B.5B();B.5F(F.1z,F.1m);6(z.2A.3G!=Y){B.4L=z.2A.3G;B.8K(0,0,K,L)}B.1q=1;B.2P=z.2A.9f;B.3N();U i,v;17(i=0;i<D.1U.12;++i){v=D.1U[i].v;6(v==D.15||v==D.14)1H;B.2V(1f.3P(1n(v))+B.1q/2,0);B.1O(1f.3P(1n(v))+B.1q/2,L)}17(i=0;i<E.1U.12;++i){v=E.1U[i].v;6(v==E.15||v==E.14)1H;B.2V(0,1f.3P(1p(v))+B.1q/2);B.1O(K,1f.3P(1p(v))+B.1q/2)}B.58();B.1q=2;B.2P=z.2A.1r;B.5A="5z";B.8G(0,0,K,L);B.5s()}V 8O(){U i;U a;U b=\'<1t 1e="5v-5N:6O;1r:\'+z.2A.1r+\'">\';U c=0;17(i=0;i<D.1U.12;++i){6(D.1U[i].29){++c}}U d=K/c;17(i=0;i<D.1U.12;++i){a=D.1U[i];6(!a.29)1H;b+=\'<1t 1e="2h:35;1m:\'+(F.1m+L+z.2A.5K)+\'23;1z:\'+(F.1z+1n(a.v)-d/2)+\'23;28:\'+d+\'23;2M-8F:bD" 3I="6L">\'+a.29+"</1t>"}17(i=0;i<E.1U.12;++i){a=E.1U[i];6(!a.29||a.29.12==0)1H;b+=\'<1t 1e="2h:35;1m:\'+(F.1m+1p(a.v)-H/2)+\'23;1z:0;28:\'+G+\'23;2M-8F:26" 3I="6L">\'+a.29+"</1t>"}b+=\'</1t>\';C.3A(b)}V 9b(){U i;U a=u.12;U b=[];U d=[];17(i=0;i<u.12;++i){U e=u[i].1r;6(e!=Y){--a;6(1K(e)=="8E")d.1u(e);11 b.1u(3q(u[i].1r))}}17(i=0;i<d.12;++i){a=1f.14(a,d[i]+1)}U f=[];U g=0;i=0;2e(f.12<a){U c;6(z.5U.12==i)c=1D 2I(4q,4q,4q);11 c=3q(z.5U[i]);U h=g%2==1?-1:1;U j=1+h*1f.6Q(g/2)*0.2;c.4l(j,j,j);f.1u(c);++i;6(i>=z.5U.12){i=0;++g}}U k=0;17(i=0;i<u.12;++i){U s=u[i];6(s.1r==Y){s.1r=f[k].2v();++k}11 6(1K(s.1r)=="8E")s.1r=f[s.1r].2v();s.2Y=$.1I(1d,{},z.2Y,s.2Y);s.1Z=$.1I(1d,{},z.1Z,s.1Z);s.2f=$.1I(1d,{},z.2f,s.2f);6(s.4h==Y)s.4h=z.4h}}V 8M(a){6(a.2Y.1C||(!a.2f.1C&&!a.1Z.1C))8D(a);6(a.2f.1C)93(a);6(a.1Z.1C)8C(a)}V 8D(g){V 5r(a,b){6(a.12<2)W;U c=1n(a[0][0]),4M=1p(a[0][1])+b;B.3N();B.2V(c,4M);17(U i=0;i<a.12-1;++i){U d=a[i][0],18=a[i][1],1a=a[i+1][0],1b=a[i+1][1];6(18<=1b&&18<E.15){6(1b<E.15)1H;d=(E.15-18)/(1b-18)*(1a-d)+d;18=E.15}11 6(1b<=18&&1b<E.15){6(18<E.15)1H;1a=(E.15-18)/(1b-18)*(1a-d)+d;1b=E.15}6(18>=1b&&18>E.14){6(1b>E.14)1H;d=(E.14-18)/(1b-18)*(1a-d)+d;18=E.14}11 6(1b>=18&&1b>E.14){6(18>E.14)1H;1a=(E.14-18)/(1b-18)*(1a-d)+d;1b=E.14}6(d<=1a&&d<D.15){6(1a<D.15)1H;18=(D.15-d)/(1a-d)*(1b-18)+18;d=D.15}11 6(1a<=d&&1a<D.15){6(d<D.15)1H;1b=(D.15-d)/(1a-d)*(1b-18)+18;1a=D.15}6(d>=1a&&d>D.14){6(1a>D.14)1H;18=(D.14-d)/(1a-d)*(1b-18)+18;d=D.14}11 6(1a>=d&&1a>D.14){6(d>D.14)1H;1b=(D.14-d)/(1a-d)*(1b-18)+18;1a=D.14}6(c!=1n(d)||4M!=1p(18)+b)B.2V(1n(d),1p(18)+b);c=1n(1a);4M=1p(1b)+b;B.1O(c,4M)}B.58()}V 8B(a){6(a.12<2)W;U b=1f.15(1f.14(0,E.15),E.14);U c,6H=0;U d=1d;B.3N();17(U i=0;i<a.12-1;++i){U e=a[i][0],18=a[i][1],1a=a[i+1][0],1b=a[i+1][1];6(e<=1a&&e<D.15){6(1a<D.15)1H;18=(D.15-e)/(1a-e)*(1b-18)+18;e=D.15}11 6(1a<=e&&1a<D.15){6(e<D.15)1H;1b=(D.15-e)/(1a-e)*(1b-18)+18;1a=D.15}6(e>=1a&&e>D.14){6(1a>D.14)1H;18=(D.14-e)/(1a-e)*(1b-18)+18;e=D.14}11 6(1a>=e&&1a>D.14){6(e>D.14)1H;1b=(D.14-e)/(1a-e)*(1b-18)+18;1a=D.14}6(d){B.2V(1n(e),1p(b));d=1c}6(18>=E.14&&1b>=E.14){B.1O(1n(e),1p(E.14));B.1O(1n(1a),1p(E.14));1H}11 6(18<=E.15&&1b<=E.15){B.1O(1n(e),1p(E.15));B.1O(1n(1a),1p(E.15));1H}U f=e,5J=1a;6(18<=1b&&18<E.15&&1b>=E.15){e=(E.15-18)/(1b-18)*(1a-e)+e;18=E.15}11 6(1b<=18&&1b<E.15&&18>=E.15){1a=(E.15-18)/(1b-18)*(1a-e)+e;1b=E.15}6(18>=1b&&18>E.14&&1b<=E.14){e=(E.14-18)/(1b-18)*(1a-e)+e;18=E.14}11 6(1b>=18&&1b>E.14&&18<=E.14){1a=(E.14-18)/(1b-18)*(1a-e)+e;1b=E.14}6(e!=f){6(18<=E.15)c=E.15;11 c=E.14;B.1O(1n(f),1p(c));B.1O(1n(e),1p(c))}B.1O(1n(e),1p(18));B.1O(1n(1a),1p(1b));6(1a!=5J){6(1b<=E.15)c=E.15;11 c=E.14;B.1O(1n(5J),1p(c));B.1O(1n(1a),1p(c))}6H=1f.14(1a,5J)}B.1O(1n(6H),1p(b));B.2U()}B.5B();B.5F(F.1z,F.1m);B.5A="5z";U h=g.2Y.1q;U j=g.4h;6(j>0){B.1q=j/2;B.2P="3t(0,0,0,0.1)";5r(g.19,h/2+j/2+B.1q/2);B.1q=j/2;B.2P="3t(0,0,0,0.2)";5r(g.19,h/2+B.1q/2)}B.1q=h;B.2P=g.1r;6(g.2Y.2U){B.4L=g.2Y.3d!=Y?g.2Y.3d:3q(g.1r).4l(Y,Y,Y,0.4).2v();8B(g.19,0)}5r(g.19,0);B.5s()}V 8C(d){V 8z(a,b,c){17(U i=0;i<a.12;++i){U x=a[i][0],y=a[i][1];6(x<D.15||x>D.14||y<E.15||y>E.14)1H;B.3N();B.9g(1n(x),1p(y),b,0,2*1f.7m,1d);6(c)B.2U();B.58()}}V 6Z(a,b,c){17(U i=0;i<a.12;++i){U x=a[i][0],y=a[i][1];6(x<D.15||x>D.14||y<E.15||y>E.14)1H;B.3N();B.9g(1n(x),1p(y)+b,c,0,1f.7m,1c);B.58()}}B.5B();B.5F(F.1z,F.1m);U e=d.2Y.1q;U f=d.4h;6(f>0){B.1q=f/2;B.2P="3t(0,0,0,0.1)";6Z(d.19,f/2+B.1q/2,d.1Z.4p);B.1q=f/2;B.2P="3t(0,0,0,0.2)";6Z(d.19,B.1q/2,d.1Z.4p)}B.1q=d.1Z.1q;B.2P=d.1r;B.4L=d.1Z.3d!=Y?d.1Z.3d:d.1r;8z(d.19,d.1Z.4p,d.1Z.2U);B.5s()}V 93(g){V 9e(a,b,c,d){6(a.12<2)W;17(U i=0;i<a.12;i++){U x=a[i][0],y=a[i][1];U e=1d,5w=1d,5O=1d;U f=x,26=x+b,2a=0,1m=y;6(26<D.15||f>D.14||1m<E.15||2a>E.14)1H;6(f<D.15){f=D.15;e=1c}6(26>D.14){26=D.14;5O=1c}6(2a<E.15)2a=E.15;6(1m>E.14){1m=E.14;5w=1c}6(d){B.3N();B.2V(1n(f),1p(2a)+c);B.1O(1n(f),1p(1m)+c);B.1O(1n(26),1p(1m)+c);B.1O(1n(26),1p(2a)+c);B.2U()}6(e||5O||5w){B.3N();B.2V(1n(f),1p(2a)+c);6(e)B.1O(1n(f),1p(1m)+c);11 B.2V(1n(f),1p(1m)+c);6(5w)B.1O(1n(26),1p(1m)+c);11 B.2V(1n(26),1p(1m)+c);6(5O)B.1O(1n(26),1p(2a)+c);11 B.2V(1n(26),1p(2a)+c);B.58()}}}B.5B();B.5F(F.1z,F.1m);B.5A="5z";U h=g.2f.5q;U j=1f.15(g.2f.1q,h);B.1q=j;B.2P=g.1r;6(g.2f.2U){B.4L=g.2f.3d!=Y?g.2f.3d:3q(g.1r).4l(Y,Y,Y,0.4).2v()}9e(g.19,h,0,g.2f.2U);B.5s()}V 8j(){6(!z.2q.1C)W;U a=[];U b=1c;17(i=0;i<u.12;++i){6(!u[i].29)1H;6(i%z.2q.9l==0){6(b)a.1u(\'</3M>\');a.1u(\'<3M>\');b=1d}U d=u[i].29;6(z.2q.7a!=Y)d=z.2q.7a(d);a.1u(\'<54 3I="by"><1t 1e="8d:7j bx \'+z.2q.9k+\';8f:7j"><1t 1e="28:bv;1P:cl;7J-1r:\'+u[i].1r+\'"></1t></1t></54>\'+\'<54 3I="cn">\'+d+\'</54>\')}6(b)a.1u(\'</3M>\');6(a.12>0){U e=\'<2o 1e="5v-5N:6O;1r:\'+z.2A.1r+\'">\'+a.4X("")+\'</2o>\';6(z.2q.78!=Y)z.2q.78.3A(e);11{U f="";U p=z.2q.2h,m=z.2q.9j;6(p.5u(0)=="n")f+=\'1m:\'+(m+F.1m)+\'23;\';11 6(p.5u(0)=="s")f+=\'2a:\'+(m+F.2a)+\'23;\';6(p.5u(1)=="e")f+=\'26:\'+(m+F.26)+\'23;\';11 6(p.5u(1)=="w")f+=\'1z:\'+(m+F.2a)+\'23;\';U g=$(\'<1t 3I="2q" 1e="2h:35;z-69:2;\'+f+\'">\'+e+\'</1t>\').3H(C);6(z.2q.77!=0.0){U c=z.2q.3G;6(c==Y){U h;6(z.2A.3G!=Y)h=z.2A.3G;11 h=8w(g);c=3q(h).8v(Y,Y,Y,1).2v()}$(\'<1t 1e="2h:35;28:\'+g.28()+\'23;1P:\'+g.1P()+\'23;\'+f+\'7J-1r:\'+c+\';"> </1t>\').3H(C).1E(\'2b\',z.2q.77)}}}}U O={32:Y,4y:Y};U P={1k:{x:-1,y:-1},1v:{x:-1,y:-1}};U Q=Y;U R=Y;V 8o(a){U e=a||1F.1V;6(e.32==Y&&e.68!=Y){U c=1j.3K,b=1j.2r;O.32=e.68+(c&&c.3b||b.3b||0);O.4y=e.9Q+(c&&c.3a||b.3a||0)}11{O.32=e.32;O.4y=e.4y}}V 8X(e){6(e.4z!=1)W;5t(P.1k,e);6(R!=Y)4C(R);O.32=Y;R=4U(8t,7y);$(1j).3j("7Z",8s)}V 6E(){U a,1a,18,1b;6(P.1k.x<=P.1v.x){a=P.1k.x;1a=P.1v.x}11{a=P.1v.x;1a=P.1k.x}6(P.1k.y>=P.1v.y){18=P.1k.y;1b=P.1v.y}11{18=P.1v.y;1b=P.1k.y}a=D.15+a/M;1a=D.15+1a/M;18=E.14-18/N;1b=E.14-1b/N;C.2u("2O",[{8q:a,18:18,1a:1a,1b:1b}])}V 8s(e){6(R!=Y){4C(R);R=Y}5t(P.1v,e);4i();6(!7b()||e.4z!=1)W 1c;5T();6E();W 1c}V 5t(a,e){U b=$(3T).6S();6(z.3l.4n=="y"){6(a==P.1k)a.x=0;11 a.x=K}11{a.x=e.32-b.1z-F.1z;a.x=1f.15(1f.14(0,a.x),K)}6(z.3l.4n=="x"){6(a==P.1k)a.y=0;11 a.y=L}11{a.y=e.4y-b.1m-F.1m;a.y=1f.15(1f.14(0,a.y),L)}}V 8t(){6(O.32==Y)W;5t(P.1v,O);4i();6(7b())5T()}V 4i(){6(Q==Y)W;U x=1f.15(Q.1k.x,Q.1v.x),y=1f.15(Q.1k.y,Q.1v.y),w=1f.4t(Q.1v.x-Q.1k.x),h=1f.4t(Q.1v.y-Q.1k.y);2D.bq(x+F.1z-2D.1q,y+F.1m-2D.1q,w+2D.1q*2,h+2D.1q*2);Q=Y}V 6V(a){4i();6(z.3l.4n=="x"){P.1k.y=0;P.1v.y=L}11{P.1k.y=(E.14-a.18)*N;P.1v.y=(E.14-a.1b)*N}6(z.3l.4n=="y"){P.1k.x=0;P.1v.x=K}11{P.1k.x=(a.8q-D.15)*M;P.1v.x=(a.1a-D.15)*M}5T();6E()}V 5T(){6(Q!=Y&&P.1k.x==Q.1k.x&&P.1k.y==Q.1k.y&&P.1v.x==Q.1v.x&&P.1v.y==Q.1v.y)W;2D.2P=3q(z.3l.1r).4l(Y,Y,Y,0.8).2v();2D.1q=1;B.5A="5z";2D.4L=3q(z.3l.1r).4l(Y,Y,Y,0.4).2v();Q={1k:{x:P.1k.x,y:P.1k.y},1v:{x:P.1v.x,y:P.1v.y}};U x=1f.15(P.1k.x,P.1v.x),y=1f.15(P.1k.y,P.1v.y),w=1f.4t(P.1v.x-P.1k.x),h=1f.4t(P.1v.y-P.1k.y);2D.8K(x+F.1z,y+F.1m,w,h);2D.8G(x+F.1z,y+F.1m,w,h)}V 7b(){U a=5;W 1f.4t(P.1v.x-P.1k.x)>=a&&1f.4t(P.1v.y-P.1k.y)>=a}}$.91=V(a,b,c){U d=1D 9m(a,b,c);W d};V 8U(x){W 1f.bp(10,1f.3P(1f.8T(x)/1f.8S))}V 2I(r,g,b,a){U e=[\'r\',\'g\',\'b\',\'a\'];U x=4;2e(-1<--x){T[e[x]]=1L[x]||((x==3)?1.0:0)}T.2v=V(){6(T.a>=1.0){W"6C("+[T.r,T.g,T.b].4X(",")+")"}11{W"3t("+[T.r,T.g,T.b,T.a].4X(",")+")"}};T.4l=V(a,b,c,d){x=4;2e(-1<--x){6(1L[x]!=Y)T[e[x]]*=1L[x]}W T.5V()};T.8v=V(a,b,c,d){x=4;2e(-1<--x){6(1L[x]!=Y)T[e[x]]+=1L[x]}W T.5V()};T.6p=V(){W 1D 2I(T.r,T.b,T.g,T.a)};U f=V(a,b,c){W 1f.14(1f.15(a,c),b)};T.5V=V(){T.r=f(1Q(T.r),0,1o);T.g=f(1Q(T.g),0,1o);T.b=f(1Q(T.b),0,1o);T.a=f(T.a,0,1);W T};T.5V()}U S={bn:[0,1o,1o],bm:[8n,1o,1o],bl:[8m,8m,bk],bj:[0,0,0],bi:[0,0,1o],bh:[9y,42,42],bg:[0,1o,1o],bf:[0,0,4v],bd:[0,4v,4v],bc:[7p,7p,7p],bb:[0,4q,0],ba:[b9,d3,9B],b7:[4v,0,4v],b6:[85,9B,47],d8:[1o,8i,0],b5:[b4,50,b3],b2:[4v,0,0],df:[dg,b0,aZ],aY:[dj,0,5D],aX:[1o,0,1o],aW:[1o,dn,0],aV:[0,3c,0],aU:[75,0,aT],aS:[8n,9G,8i],aR:[aP,aO,9G],dz:[9N,1o,1o],aM:[9H,aL,9H],dD:[5D,5D,5D],aJ:[1o,aI,dG],dH:[1o,1o,9N],aF:[0,1o,0],dJ:[1o,0,1o],aE:[3c,0,0],dL:[0,0,3c],aC:[3c,3c,0],aB:[1o,9y,0],aA:[1o,6b,ay],dR:[3c,0,3c],ax:[3c,0,3c],dT:[1o,0,0],aw:[6b,6b,6b],av:[1o,1o,1o],au:[1o,1o,0]};V 8w(a){U b,1i=a;do{b=1i.1E("7J-1r").34();6(b!=\'\'&&b!=\'7G\')2E;1i=1i.2p()}2e(!$.1w(1i.2l(0),"2r"));6(b=="3t(0, 0, 0, 0)")W"7G";W b}V 3q(a){U b;6(b=/6C\\(\\s*([0-9]{1,3})\\s*,\\s*([0-9]{1,3})\\s*,\\s*([0-9]{1,3})\\s*\\)/.2t(a))W 1D 2I(1Q(b[1]),1Q(b[2]),1Q(b[3]));6(b=/3t\\(\\s*([0-9]{1,3})\\s*,\\s*([0-9]{1,3})\\s*,\\s*([0-9]{1,3})\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\s*\\)/.2t(a))W 1D 2I(1Q(b[1]),1Q(b[2]),1Q(b[3]),2w(b[4]));6(b=/6C\\(\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*\\)/.2t(a))W 1D 2I(2w(b[1])*2.55,2w(b[2])*2.55,2w(b[3])*2.55);6(b=/3t\\(\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\%\\s*,\\s*([0-9]+(?:\\.[0-9]+)?)\\s*\\)/.2t(a))W 1D 2I(2w(b[1])*2.55,2w(b[2])*2.55,2w(b[3])*2.55,2w(b[4]));6(b=/#([a-4k-4f-9]{2})([a-4k-4f-9]{2})([a-4k-4f-9]{2})/.2t(a))W 1D 2I(1Q(b[1],16),1Q(b[2],16),1Q(b[3],16));6(b=/#([a-4k-4f-9])([a-4k-4f-9])([a-4k-4f-9])/.2t(a))W 1D 2I(1Q(b[1]+b[1],16),1Q(b[2]+b[2],16),1Q(b[3]+b[3],16));U c=1s.3Q(a).34();6(c=="7G")W 1D 2I(1o,1o,1o,0);11{b=S[c];W 1D 2I(b[0],b[1],b[2])}}})(1s);',62,872,'||||||if|||||||||||||||||||||||||||||||||||||||||||||||||this|var|function|return||null|||else|length||max|min||for|y1|data|x2|y2|false|true|style|Math|type|each|elem|document|first|browser|top|tHoz|255|tVert|lineWidth|color|jQuery|div|push|second|nodeName|undefined|options|left|parentNode|test|show|new|css|window|apply|continue|extend|display|typeof|arguments|fn|msie|lineTo|height|parseInt|url|prop|constructor|ticks|event|add|indexOf|in|points||complete|isFunction|px|replace||right|className|width|label|bottom|opacity|firstChild||while|bars|status|position|match|nodeType|hide|get|attr||table|parent|legend|body|success|exec|trigger|toString|parseFloat|Array|filter|script|grid|cache|tickSize|octx|break|string|tbody|safari|Color|datamax|start|hidden|text|value|selected|strokeStyle|dataType|merge|remove|map|fill|moveTo|datamin|animate|lines|offsetParent|global|find|pageX|id|toLowerCase|absolute|toggle|cur|try|toUpperCase|scrollTop|scrollLeft|128|fillColor|ready|duration|done|select|catch|one|stack|selection|target|handle|pushStack|nextSibling|parseColor|now|swap|rgba|fx|none|unit|makeArray|guid|split|append|button|tb|timeout|readyState||backgroundColor|appendTo|class|inArray|documentElement|jsre|tr|beginPath|delete|floor|trim|name|ret|overlay|overflow|nth|checked|end|slice|step|call|preventDefault||doc|events|rl|mozilla||src|val|form|block|insertBefore|load|grep|F0|opera|shadowSize|clearSelection|tagName|fA|scale|removeData|mode|removeChild|radius|100|disabled|async|abs|childNodes|139|oldblock|encodeURIComponent|pageY|which|param|timers|clearInterval|ajax|defaultView|is|readyList|multiFilter|args|self|last|fillStyle|prevy|eval|prototype|domManip|getTime|Date|tickFormatter|ownerDocument|setInterval|easing|custom|join|curAnim|queue||innerHTML|old|html|td||has|stopPropagation|stroke|curCSS|orig|jsonp|lastModified|getElementById|json|String|responseText|getComputedStyle|float|static|error|isReady|visible|bind|currentStyle|previousSibling|barWidth|plotLine|restore|setSelectionPos|charAt|font|drawTop|RegExp|child|round|lineJoin|save|radio|211|max_label|translate|canvas|isXMLDoc|jquery|x2old|labelMargin|dir|ol|size|drawRight|autoscaleMargin|xaxis|styleFloat|shift|drawSelection|colors|normalize|version|safari2|el|pos|update|getAttribute|oWidth|on|empty|state|object|getElementsByTagName|clientX|index|input|192|oHeight|active|runtimeStyle|offsetTop|ajaxSettings|unshift|selectedIndex|getPropertyValue|GET|safariTimer|boxModel|clean|__ie_init|clone|visibility|mouseover|handleHover|lastToggle|fromElement|click|calculateTicks|andSelf|win|handler|unique|prevObject|rgb|classFilter|triggerSelectedEvent|after|submit|lastX|password|file|setTimeout|gridLabel|expr|appendChild|smaller|_|ceil|found|offset|relatedTarget|client|setSelection|calculateRange|sibling|removeAttribute|plotPointShadows|deep|yaxis|globalEval|tickDecimals|defaultTickFormatter||noTicks|backgroundOpacity|container|cssFloat|labelFormatter|selectionIsSane|wrapAll|offsetLeft|evalScript|box|createElement|Number|results|1px|startTime|nodeIndex|PI|swing|triggered|169|dequeue|throw|cloneNode|removeEventListener|evt|props|lastChild|fix|200|checkbox|handleError|getResponseHeader|parsererror|00|Modified|ifModified|transparent|setRequestHeader|addEventListener|background|callback|processData|contentType|ajaxSend|ajaxSuccess|ajaxError|ajaxComplete|ajaxStop|ajaxStart|serializeArray|notmodified|POST|loaded|onreadystatechange|relative|mouseup|mousedown|DOMContentLoaded|not|bindReady|mouseout||removeAttr|unbind|unload|ctrlKey|Width|metaKey|keyCode|border|charCode|padding|srcElement|extendXRangeIfNeededByBar|140|insertLegend|outerHTML|0px|245|240|onMouseMove|substr|x1|zoom|onSelectionMouseUp|updateSelectionOnMouseMove|parse|adjust|extractColor|textarea|reset|plotPoints|image|plotLineArea|drawSeriesPoints|drawSeriesLines|number|align|strokeRect|even|before|prepend|fillRect|quickClass|drawSeries|quickID|drawLabels|drawGrid|quickChild|execScript|LN10|log|getMagnitude|getTickSize|scroll|onMouseDown|getContext|initElement|G_vmlCanvasManager|plot|odd|drawSeriesBars|draw|calculateSpacing|contents|findDataRanges|uuid|bindEvents|constructCanvas|fillInSeriesOptions|parseOptions|parseData|plotBars|tickColor|arc|textContent|setArray|margin|labelBoxBorderColor|noColumns|Plot|webkit|nodeValue|getBoundingClientRect|fl|_default|linear|alpha|href|createTextNode|splice|eq|165|replaceWith|speed|107|_toggle|colgroup|xml|304|230|144|Last|httpData|fieldset|httpNotModified|httpSuccess|224|beforeSend|01|clientY|XMLHttpRequest|col|ActiveXObject|init|http|abbr|pixelLeft|urlencoded|www|application|ajaxSetup|post|getJSON|getScript|elements|serialize|instanceof|hasClass|clientWidth|defer|clientHeight|ipt|scr|write|keyup|keypress|keydown|change|mousemove|dblclick||resize|focus|blur|frames|hover|offsetWidth|triggerHandler|offsetHeight|yellow|white|silver|violet|203|Left|pink|orange|olive|Right|maroon|lime|Bottom|toElement|182|lightpink|Top|238|lightgreen|cancelBubble|216|173|returnValue|lightblue|khaki|130|indigo|green|gold|fuchsia|darkviolet|122|150|detachEvent|darkred|204|153|darkorchid|darkolivegreen|darkmagenta|attachEvent|189|darkkhaki|darkgreen|darkgrey|darkcyan||darkblue|cyan|brown|blue|black|220|beige|azure|aqua|substring|pow|clearRect||line|weight|animated|14px|header|solid|legendColorBox|enabled|innerText|contains|only|center|gt|lt|10000px|uFFFF|toFixed|u0128|417|onmousemove|inner|dimensions|Height|Invalid|toggleClass|getPlotOffset|removeClass|noConflict|wrap|getCanvas|addClass|replaceAll|insertAfter|prependTo|contentWindow|contentDocument|iframe|children|wrapInner|siblings|prevAll|nextAll|Boolean|e8cfac|prev|dddddd|545454|next|parents|ffffff|maxLength|maxlength|02|readOnly|readonly|10px|htmlFor|legendLabel|CSS1Compat|compatMode|ne|ccc|9440ed|compatible|4da74d|cb4b4b|afd8f8|edc240|borderTopWidth|borderLeftWidth|ie|row|inline|ra|it|medium|rv|borderWidth|522|userAgent|navigator|with|concat|10000|array|ig|cos|NaN|reverse|400|fast|600|slow|Function|Object|setAttribute|changed|stop|can|183|property|getAttributeNode|fadeTo|fadeOut|darkorange|method|fadeIn|slideToggle|action|slideUp|slideDown|darksalmon|233|cssText|option|148|responseXML|content|th|215||300|protocol|cap|location|send|colg|abort|tfoot|thead|leg|lightcyan|With|opt|Requested|lightgrey|GMT|1970|193|lightyellow|Jan|magenta|area|navy|Thu|hr|Since|specified|If|purple|meta|red|Type|Content|link|open|XMLHTTP|img|attributes|Microsoft|onload|head'.split('|'),0,{}))
// ]]]]></xsl:text>
<xsl:text disable-output-escaping="yes">></xsl:text>
  </xsl:template>
  <xsl:template name="exCanvas">
<xsl:text disable-output-escaping="yes">// &lt;![CDATA[</xsl:text>
<xsl:text disable-output-escaping="yes">
<![CDATA[if(!window.CanvasRenderingContext2D){(function(){var m=Math;var mr=m.round;var ms=m.sin;var mc=m.cos;var Z=10;var Z2=Z/2;var G_vmlCanvasManager_={init:function(opt_doc){var doc=opt_doc||document;if(/MSIE/.test(navigator.userAgent)&&!window.opera){var self=this;doc.attachEvent("onreadystatechange",function(){self.init_(doc)})}},init_:function(doc){if(doc.readyState=="complete"){if(!doc.namespaces["g_vml_"]){doc.namespaces.add("g_vml_","urn:schemas-microsoft-com:vml")}var ss=doc.createStyleSheet();ss.cssText="canvas{display:inline-block;overflow:hidden;"+"text-align:left;width:300px;height:150px}"+"g_vml_\\:*{behavior:url(#default#VML)}";var els=doc.getElementsByTagName("canvas");for(var i=0;i<els.length;i++){if(!els[i].getContext){this.initElement(els[i])}}}},fixElement_:function(el){var outerHTML=el.outerHTML;var newEl=el.ownerDocument.createElement(outerHTML);if(outerHTML.slice(-2)!="/>"){var tagName="/"+el.tagName;var ns;while((ns=el.nextSibling)&&ns.tagName!=tagName){ns.removeNode()}if(ns){ns.removeNode()}}el.parentNode.replaceChild(newEl,el);return newEl},initElement:function(el){el=this.fixElement_(el);el.getContext=function(){if(this.context_){return this.context_}return this.context_=new CanvasRenderingContext2D_(this)};el.attachEvent('onpropertychange',onPropertyChange);el.attachEvent('onresize',onResize);var attrs=el.attributes;if(attrs.width&&attrs.width.specified){el.style.width=attrs.width.nodeValue+"px"}else{el.width=el.clientWidth}if(attrs.height&&attrs.height.specified){el.style.height=attrs.height.nodeValue+"px"}else{el.height=el.clientHeight}return el}};function onPropertyChange(e){var el=e.srcElement;switch(e.propertyName){case'width':el.style.width=el.attributes.width.nodeValue+"px";el.getContext().clearRect();break;case'height':el.style.height=el.attributes.height.nodeValue+"px";el.getContext().clearRect();break}}function onResize(e){var el=e.srcElement;if(el.firstChild){el.firstChild.style.width=el.clientWidth+'px';el.firstChild.style.height=el.clientHeight+'px'}}G_vmlCanvasManager_.init();var dec2hex=[];for(var i=0;i<16;i++){for(var j=0;j<16;j++){dec2hex[i*16+j]=i.toString(16)+j.toString(16)}}function createMatrixIdentity(){return[[1,0,0],[0,1,0],[0,0,1]]}function matrixMultiply(m1,m2){var result=createMatrixIdentity();for(var x=0;x<3;x++){for(var y=0;y<3;y++){var sum=0;for(var z=0;z<3;z++){sum+=m1[x][z]*m2[z][y]}result[x][y]=sum}}return result}function copyState(o1,o2){o2.fillStyle=o1.fillStyle;o2.lineCap=o1.lineCap;o2.lineJoin=o1.lineJoin;o2.lineWidth=o1.lineWidth;o2.miterLimit=o1.miterLimit;o2.shadowBlur=o1.shadowBlur;o2.shadowColor=o1.shadowColor;o2.shadowOffsetX=o1.shadowOffsetX;o2.shadowOffsetY=o1.shadowOffsetY;o2.strokeStyle=o1.strokeStyle;o2.arcScaleX_=o1.arcScaleX_;o2.arcScaleY_=o1.arcScaleY_}function processStyle(styleString){var str,alpha=1;styleString=String(styleString);if(styleString.substring(0,3)=="rgb"){var start=styleString.indexOf("(",3);var end=styleString.indexOf(")",start+1);var guts=styleString.substring(start+1,end).split(",");str="#";for(var i=0;i<3;i++){str+=dec2hex[Number(guts[i])]}if((guts.length==4)&&(styleString.substr(3,1)=="a")){alpha=guts[3]}}else{str=styleString}return[str,alpha]}function processLineCap(lineCap){switch(lineCap){case"butt":return"flat";case"round":return"round";case"square":default:return"square"}}function CanvasRenderingContext2D_(surfaceElement){this.m_=createMatrixIdentity();this.mStack_=[];this.aStack_=[];this.currentPath_=[];this.strokeStyle="#000";this.fillStyle="#000";this.lineWidth=1;this.lineJoin="miter";this.lineCap="butt";this.miterLimit=Z*1;this.globalAlpha=1;this.canvas=surfaceElement;var el=surfaceElement.ownerDocument.createElement('div');el.style.width=surfaceElement.clientWidth+'px';el.style.height=surfaceElement.clientHeight+'px';el.style.overflow='hidden';el.style.position='absolute';surfaceElement.appendChild(el);this.element_=el;this.arcScaleX_=1;this.arcScaleY_=1}var contextPrototype=CanvasRenderingContext2D_.prototype;contextPrototype.clearRect=function(){this.element_.innerHTML="";this.currentPath_=[]};contextPrototype.beginPath=function(){this.currentPath_=[]};contextPrototype.moveTo=function(aX,aY){this.currentPath_.push({type:"moveTo",x:aX,y:aY});this.currentX_=aX;this.currentY_=aY};contextPrototype.lineTo=function(aX,aY){this.currentPath_.push({type:"lineTo",x:aX,y:aY});this.currentX_=aX;this.currentY_=aY};contextPrototype.bezierCurveTo=function(aCP1x,aCP1y,aCP2x,aCP2y,aX,aY){this.currentPath_.push({type:"bezierCurveTo",cp1x:aCP1x,cp1y:aCP1y,cp2x:aCP2x,cp2y:aCP2y,x:aX,y:aY});this.currentX_=aX;this.currentY_=aY};contextPrototype.quadraticCurveTo=function(aCPx,aCPy,aX,aY){var cp1x=this.currentX_+2.0/3.0*(aCPx-this.currentX_);var cp1y=this.currentY_+2.0/3.0*(aCPy-this.currentY_);var cp2x=cp1x+(aX-this.currentX_)/3.0;var cp2y=cp1y+(aY-this.currentY_)/3.0;this.bezierCurveTo(cp1x,cp1y,cp2x,cp2y,aX,aY)};contextPrototype.arc=function(aX,aY,aRadius,aStartAngle,aEndAngle,aClockwise){aRadius*=Z;var arcType=aClockwise?"at":"wa";var xStart=aX+(mc(aStartAngle)*aRadius)-Z2;var yStart=aY+(ms(aStartAngle)*aRadius)-Z2;var xEnd=aX+(mc(aEndAngle)*aRadius)-Z2;var yEnd=aY+(ms(aEndAngle)*aRadius)-Z2;if(xStart==xEnd&&!aClockwise){xStart+=0.125}this.currentPath_.push({type:arcType,x:aX,y:aY,radius:aRadius,xStart:xStart,yStart:yStart,xEnd:xEnd,yEnd:yEnd})};contextPrototype.rect=function(aX,aY,aWidth,aHeight){this.moveTo(aX,aY);this.lineTo(aX+aWidth,aY);this.lineTo(aX+aWidth,aY+aHeight);this.lineTo(aX,aY+aHeight);this.closePath()};contextPrototype.strokeRect=function(aX,aY,aWidth,aHeight){this.beginPath();this.moveTo(aX,aY);this.lineTo(aX+aWidth,aY);this.lineTo(aX+aWidth,aY+aHeight);this.lineTo(aX,aY+aHeight);this.closePath();this.stroke()};contextPrototype.fillRect=function(aX,aY,aWidth,aHeight){this.beginPath();this.moveTo(aX,aY);this.lineTo(aX+aWidth,aY);this.lineTo(aX+aWidth,aY+aHeight);this.lineTo(aX,aY+aHeight);this.closePath();this.fill()};contextPrototype.createLinearGradient=function(aX0,aY0,aX1,aY1){var gradient=new CanvasGradient_("gradient");return gradient};contextPrototype.createRadialGradient=function(aX0,aY0,aR0,aX1,aY1,aR1){var gradient=new CanvasGradient_("gradientradial");gradient.radius1_=aR0;gradient.radius2_=aR1;gradient.focus_.x=aX0;gradient.focus_.y=aY0;return gradient};contextPrototype.drawImage=function(image,var_args){var dx,dy,dw,dh,sx,sy,sw,sh;var oldRuntimeWidth=image.runtimeStyle.width;var oldRuntimeHeight=image.runtimeStyle.height;image.runtimeStyle.width='auto';image.runtimeStyle.height='auto';var w=image.width;var h=image.height;image.runtimeStyle.width=oldRuntimeWidth;image.runtimeStyle.height=oldRuntimeHeight;if(arguments.length==3){dx=arguments[1];dy=arguments[2];sx=sy=0;sw=dw=w;sh=dh=h}else if(arguments.length==5){dx=arguments[1];dy=arguments[2];dw=arguments[3];dh=arguments[4];sx=sy=0;sw=w;sh=h}else if(arguments.length==9){sx=arguments[1];sy=arguments[2];sw=arguments[3];sh=arguments[4];dx=arguments[5];dy=arguments[6];dw=arguments[7];dh=arguments[8]}else{throw"Invalid number of arguments";}var d=this.getCoords_(dx,dy);var w2=sw/2;var h2=sh/2;var vmlStr=[];var W=10;var H=10;vmlStr.push(' <g_vml_:group',' coordsize="',Z*W,',',Z*H,'"',' coordorigin="0,0"',' style="width:',W,';height:',H,';position:absolute;');if(this.m_[0][0]!=1||this.m_[0][1]){var filter=[];filter.push("M11='",this.m_[0][0],"',","M12='",this.m_[1][0],"',","M21='",this.m_[0][1],"',","M22='",this.m_[1][1],"',","Dx='",mr(d.x/Z),"',","Dy='",mr(d.y/Z),"'");var max=d;var c2=this.getCoords_(dx+dw,dy);var c3=this.getCoords_(dx,dy+dh);var c4=this.getCoords_(dx+dw,dy+dh);max.x=Math.max(max.x,c2.x,c3.x,c4.x);max.y=Math.max(max.y,c2.y,c3.y,c4.y);vmlStr.push("padding:0 ",mr(max.x/Z),"px ",mr(max.y/Z),"px 0;filter:progid:DXImageTransform.Microsoft.Matrix(",filter.join(""),", sizingmethod='clip');")}else{vmlStr.push("top:",mr(d.y/Z),"px;left:",mr(d.x/Z),"px;")}vmlStr.push(' ">','<g_vml_:image src="',image.src,'"',' style="width:',Z*dw,';',' height:',Z*dh,';"',' cropleft="',sx/w,'"',' croptop="',sy/h,'"',' cropright="',(w-sx-sw)/w,'"',' cropbottom="',(h-sy-sh)/h,'"',' />','</g_vml_:group>');this.element_.insertAdjacentHTML("BeforeEnd",vmlStr.join(""))};contextPrototype.stroke=function(aFill){var lineStr=[];var lineOpen=false;var a=processStyle(aFill?this.fillStyle:this.strokeStyle);var color=a[0];var opacity=a[1]*this.globalAlpha;var W=10;var H=10;lineStr.push('<g_vml_:shape',' fillcolor="',color,'"',' filled="',Boolean(aFill),'"',' style="position:absolute;width:',W,';height:',H,';"',' coordorigin="0 0" coordsize="',Z*W,' ',Z*H,'"',' stroked="',!aFill,'"',' strokeweight="',this.lineWidth,'"',' strokecolor="',color,'"',' path="');var newSeq=false;var min={x:null,y:null};var max={x:null,y:null};for(var i=0;i<this.currentPath_.length;i++){var p=this.currentPath_[i];if(p.type=="moveTo"){lineStr.push(" m ");var c=this.getCoords_(p.x,p.y);lineStr.push(mr(c.x),",",mr(c.y))}else if(p.type=="lineTo"){lineStr.push(" l ");var c=this.getCoords_(p.x,p.y);lineStr.push(mr(c.x),",",mr(c.y))}else if(p.type=="close"){lineStr.push(" x ")}else if(p.type=="bezierCurveTo"){lineStr.push(" c ");var c=this.getCoords_(p.x,p.y);var c1=this.getCoords_(p.cp1x,p.cp1y);var c2=this.getCoords_(p.cp2x,p.cp2y);lineStr.push(mr(c1.x),",",mr(c1.y),",",mr(c2.x),",",mr(c2.y),",",mr(c.x),",",mr(c.y))}else if(p.type=="at"||p.type=="wa"){lineStr.push(" ",p.type," ");var c=this.getCoords_(p.x,p.y);var cStart=this.getCoords_(p.xStart,p.yStart);var cEnd=this.getCoords_(p.xEnd,p.yEnd);lineStr.push(mr(c.x-this.arcScaleX_*p.radius),",",mr(c.y-this.arcScaleY_*p.radius)," ",mr(c.x+this.arcScaleX_*p.radius),",",mr(c.y+this.arcScaleY_*p.radius)," ",mr(cStart.x),",",mr(cStart.y)," ",mr(cEnd.x),",",mr(cEnd.y))}if(c){if(min.x==null||c.x<min.x){min.x=c.x}if(max.x==null||c.x>max.x){max.x=c.x}if(min.y==null||c.y<min.y){min.y=c.y}if(max.y==null||c.y>max.y){max.y=c.y}}}lineStr.push(' ">');if(typeof this.fillStyle=="object"){var focus={x:"50%",y:"50%"};var width=(max.x-min.x);var height=(max.y-min.y);var dimension=(width>height)?width:height;focus.x=mr((this.fillStyle.focus_.x/width)*100+50)+"%";focus.y=mr((this.fillStyle.focus_.y/height)*100+50)+"%";var colors=[];if(this.fillStyle.type_=="gradientradial"){var inside=(this.fillStyle.radius1_/dimension*100);var expansion=(this.fillStyle.radius2_/dimension*100)-inside}else{var inside=0;var expansion=100}var insidecolor={offset:null,color:null};var outsidecolor={offset:null,color:null};this.fillStyle.colors_.sort(function(cs1,cs2){return cs1.offset-cs2.offset});for(var i=0;i<this.fillStyle.colors_.length;i++){var fs=this.fillStyle.colors_[i];colors.push((fs.offset*expansion)+inside,"% ",fs.color,",");if(fs.offset>insidecolor.offset||insidecolor.offset==null){insidecolor.offset=fs.offset;insidecolor.color=fs.color}if(fs.offset<outsidecolor.offset||outsidecolor.offset==null){outsidecolor.offset=fs.offset;outsidecolor.color=fs.color}}colors.pop();lineStr.push('<g_vml_:fill',' color="',outsidecolor.color,'"',' color2="',insidecolor.color,'"',' type="',this.fillStyle.type_,'"',' focusposition="',focus.x,', ',focus.y,'"',' colors="',colors.join(""),'"',' opacity="',opacity,'" />')}else if(aFill){lineStr.push('<g_vml_:fill color="',color,'" opacity="',opacity,'" />')}else{lineStr.push('<g_vml_:stroke',' opacity="',opacity,'"',' joinstyle="',this.lineJoin,'"',' miterlimit="',this.miterLimit,'"',' endcap="',processLineCap(this.lineCap),'"',' weight="',this.lineWidth,'px"',' color="',color,'" />')}lineStr.push("</g_vml_:shape>");this.element_.insertAdjacentHTML("beforeEnd",lineStr.join(""))};contextPrototype.fill=function(){this.stroke(true)};contextPrototype.closePath=function(){this.currentPath_.push({type:"close"})};contextPrototype.getCoords_=function(aX,aY){return{x:Z*(aX*this.m_[0][0]+aY*this.m_[1][0]+this.m_[2][0])-Z2,y:Z*(aX*this.m_[0][1]+aY*this.m_[1][1]+this.m_[2][1])-Z2}};contextPrototype.save=function(){var o={};copyState(this,o);this.aStack_.push(o);this.mStack_.push(this.m_);this.m_=matrixMultiply(createMatrixIdentity(),this.m_)};contextPrototype.restore=function(){copyState(this.aStack_.pop(),this);this.m_=this.mStack_.pop()};contextPrototype.translate=function(aX,aY){var m1=[[1,0,0],[0,1,0],[aX,aY,1]];this.m_=matrixMultiply(m1,this.m_)};contextPrototype.rotate=function(aRot){var c=mc(aRot);var s=ms(aRot);var m1=[[c,s,0],[-s,c,0],[0,0,1]];this.m_=matrixMultiply(m1,this.m_)};contextPrototype.scale=function(aX,aY){this.arcScaleX_*=aX;this.arcScaleY_*=aY;var m1=[[aX,0,0],[0,aY,0],[0,0,1]];this.m_=matrixMultiply(m1,this.m_)};contextPrototype.clip=function(){};contextPrototype.arcTo=function(){};contextPrototype.createPattern=function(){return new CanvasPattern_};function CanvasGradient_(aType){this.type_=aType;this.radius1_=0;this.radius2_=0;this.colors_=[];this.focus_={x:0,y:0}}CanvasGradient_.prototype.addColorStop=function(aOffset,aColor){aColor=processStyle(aColor);this.colors_.push({offset:1-aOffset,color:aColor})};function CanvasPattern_(){}G_vmlCanvasManager=G_vmlCanvasManager_;CanvasRenderingContext2D=CanvasRenderingContext2D_;CanvasGradient=CanvasGradient_;CanvasPattern=CanvasPattern_})()}
// ]]]]></xsl:text>
  </xsl:template>

 <xsl:template name="jmoljs">
<xsl:text disable-output-escaping="yes">// &lt;![CDATA[
<![CDATA[
/* Jmol 11.4 script library Jmol.js 12:44 PM 12/10/2007 hansonr

 checkbox heirarchy -- see http://chemapps.stolaf.edu/jmol/docs/examples-11/check.htm

    based on:
 *
 * Copyright (C) 2004-2007  Miguel, Jmol Development, www.jmol.org
 *
 * Contact: hansonr@stolaf.edu
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
 *  02111-1307  USA.
 */

// for documentation see www.jmol.org/jslibrary

try{if(typeof(_jmol)!="undefined")exit()

// place "?NOAPPLET" on your command line to check applet control action with a textarea

// bob hanson -- jmolResize(w,h) -- resizes absolutely or by percent (w or h 0.5 means 50%)
// bob hanson -- jmolEvaluate -- evaluates molecular math 8:37 AM 2/23/2007
// bob hanson -- jmolScriptMessage -- returns all "scriptStatus" messages 8:37 AM 2/23/2007
// bob hanson -- jmolScriptEcho -- returns all "scriptEcho" messages 8:37 AM 2/23/2007
// bob hanson -- jmolScriptWait -- 11:31 AM 5/2/2006
// bob hanson -- remove trailing separatorHTML in radio groups -- 12:18 PM 5/6/2006
// bob hanson -- adds support for dynamic DOM script nodes 7:04 AM 5/19/2006
// bob hanson -- adds try/catch for wiki - multiple code passes 7:05 AM 5/19/2006
// bob hanson -- auto-initiates to defaultdir/defaultjar -- change as desired.
// bob hanson -- adding save/restore orientation w/ and w/o delay 11:49 AM 5/25/2006
// bob hanson -- adding AjaxJS service 11:16 AM 6/3/2006
// bob hanson -- fix for iframes not available for finding applet
// bob hanson -- added applet fake ?NOAPPLET URL flag
// bob hanson -- added jmolSetCallback(calbackName, funcName) 3:32 PM 6/13/2006
//			used PRIOR to jmolApplet() or jmolAppletInline()
//               added 4th array element in jmolRadioGroup -- title
//               added <span> and id around link, checkbox, radio, menu
//               fixing AJAX loads for MSIE/Opera-Mozilla incompatibility
//            -- renamed Jmol-11.js from Jmol-new.js; JmolApplet.jar from JmolAppletProto.jar
//	 	 renamed Jmol.js for Jmol 11 distribution
//            -- modified jmolRestoreOrientation() to be immediate, no 1-second delay
// bob hanson -- jmolScriptWait always returns a string -- 11:23 AM 9/16/2006
// bh         -- jmolCommandInput()
// bh         -- jmolSetTranslation(TF) -- forces translation even if there might be message callback issues
// bh         -- minor fixes suggested by Angel
// bh         -- adds jmolSetSyncId() and jmolGetSyncId()

// bh         -- workaround for Mac liveConnect bug not able to match method signature in loadInline:
//               ALWAYS USE jmolLoadInlineArray() or jmolLoadInlineString()


var defaultdir = "."
var defaultjar = "JmolApplet.jar"

var undefined; // for IE 5 ... wherein undefined is undefined

////////////////////////////////////////////////////////////////
// Basic Scripting infrastruture
////////////////////////////////////////////////////////////////

function jmolInitialize(codebaseDirectory, fileNameOrUseSignedApplet) {
  if (_jmol.initialized) {
    //alert("jmolInitialize() should only be called *ONCE* within a page");
    return;
  }
  if (! codebaseDirectory) {
    alert("codebaseDirectory is a required parameter to jmolInitialize");
    codebaseDirectory = ".";
  }

  if (codebaseDirectory.indexOf("http://") == 0 ||
      codebaseDirectory.indexOf("https://") == 0)
    alert("In general, an absolute URL is not recommended for codebaseDirectory.\n" +
	  "A directory- or docroot-relative reference is recommended.\n\n" +
	  "If you need to use an absolute URL (because, for example, the JAR and data\n" +
	  "files are on another server), then insert a space before\n" +
	  "\"http\" in your URL to avoid this warning message.");

  _jmolSetCodebase(codebaseDirectory);
  _jmolGetJarFilename(fileNameOrUseSignedApplet);
  _jmolOnloadResetForms();
  _jmol.initialized = true;
}

function jmolSetTranslation(TF) {
  _jmol.params.doTranslate = ''+TF;
}

function _jmolGetJarFilename(fileNameOrFlag) {
  _jmol.archivePath =
    (typeof(fileNameOrFlag) == "string"  ? fileNameOrFlag : (fileNameOrFlag ?  "JmolAppletSigned" : "JmolApplet") + "0.jar");
}

function jmolSetDocument(doc) {
  _jmol.currentDocument = doc;
}

function jmolSetAppletColor(boxbgcolor, boxfgcolor, progresscolor) {
  _jmolInitCheck();
  _jmol.params.boxbgcolor = boxbgcolor;
  if (boxfgcolor)
    _jmol.params.boxfgcolor = boxfgcolor
  else if (boxbgcolor == "white" || boxbgcolor == "#FFFFFF")
    _jmol.params.boxfgcolor = "black";
  else
    _jmol.params.boxfgcolor = "white";
  if (progresscolor)
    _jmol.params.progresscolor = progresscolor;
  if (_jmol.debugAlert)
    alert(" boxbgcolor=" + _jmol.params.boxbgcolor +
          " boxfgcolor=" + _jmol.params.boxfgcolor +
          " progresscolor=" + _jmol.params.progresscolor);
}

function jmolApplet(size, script, nameSuffix) {
  _jmolInitCheck();
  return _jmolApplet(size, null, script, nameSuffix);
}

////////////////////////////////////////////////////////////////
// Basic controls
////////////////////////////////////////////////////////////////

function jmolButton(script, label, id, title) {
  _jmolInitCheck();
  if (id == undefined || id == null)
    id = "jmolButton" + _jmol.buttonCount;
  if (label == undefined || label == null)
    label = script.substring(0, 32);
  ++_jmol.buttonCount;
  var scriptIndex = _jmolAddScript(script);
  var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><input type='button' name='" + id + "' id='" + id +
          "' value='" + label +
          "' onClick='_jmolClick(" + scriptIndex + _jmol.targetText +
          ")' onMouseover='_jmolMouseOver(" + scriptIndex +
          ");return true' onMouseout='_jmolMouseOut()' " +
          _jmol.buttonCssText + "/></span>";
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}

function jmolCheckbox(scriptWhenChecked, scriptWhenUnchecked,
                      labelHtml, isChecked, id, title) {
  _jmolInitCheck();
  if (id == undefined || id == null)
    id = "jmolCheckbox" + _jmol.checkboxCount;
  ++_jmol.checkboxCount;
  if (scriptWhenChecked == undefined || scriptWhenChecked == null ||
      scriptWhenUnchecked == undefined || scriptWhenUnchecked == null) {
    alert("jmolCheckbox requires two scripts");
    return;
  }
  if (labelHtml == undefined || labelHtml == null) {
    alert("jmolCheckbox requires a label");
    return;
  }
  var indexChecked = _jmolAddScript(scriptWhenChecked);
  var indexUnchecked = _jmolAddScript(scriptWhenUnchecked);
  var eospan = "</span>"
  var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><input type='checkbox' name='" + id + "' id='" + id +
          "' onClick='_jmolCbClick(this," +
          indexChecked + "," + indexUnchecked + _jmol.targetText +
          ")' onMouseover='_jmolCbOver(this," + indexChecked + "," +
          indexUnchecked +
          ");return true' onMouseout='_jmolMouseOut()' " +
	  (isChecked ? "checked " : "") + _jmol.checkboxCssText + "/>" 
  if (labelHtml.toLowerCase().indexOf("<td>")>=0) {
	t += eospan
	eospan = "";
  }
  t += labelHtml +eospan;
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}

function jmolStartNewRadioGroup() {
  ++_jmol.radioGroupCount;
}

function jmolRadioGroup(arrayOfRadioButtons, separatorHtml, groupName, id, title) {
  /*

    array: [radio1,radio2,radio3...]
    where radioN = ["script","label",isSelected,"id","title"]

  */

  _jmolInitCheck();
  var type = typeof arrayOfRadioButtons;
  if (type != "object" || type == null || ! arrayOfRadioButtons.length) {
    alert("invalid arrayOfRadioButtons");
    return;
  }
  if (separatorHtml == undefined || separatorHtml == null)
    separatorHtml = "&nbsp; ";
  var len = arrayOfRadioButtons.length;
  jmolStartNewRadioGroup();
  if (!groupName)
    groupName = "jmolRadioGroup" + (_jmol.radioGroupCount - 1);
  var t = "<span id='"+(id ? id : groupName)+"'>";
  for (var i = 0; i < len; ++i) {
    if (i == len - 1)
      separatorHtml = "";
    var radio = arrayOfRadioButtons[i];
    type = typeof radio;
    if (type == "object") {
      t += _jmolRadio(radio[0], radio[1], radio[2], separatorHtml, groupName, (radio.length > 3 ? radio[3]: (id ? id : groupName)+"_"+i), (radio.length > 4 ? radio[4] : 0), title);
    } else {
      t += _jmolRadio(radio, null, null, separatorHtml, groupName, (id ? id : groupName)+"_"+i, title);
    }
  }
  t+="</span>"
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}


function jmolRadio(script, labelHtml, isChecked, separatorHtml, groupName, id, title) {
  _jmolInitCheck();
  if (_jmol.radioGroupCount == 0)
    ++_jmol.radioGroupCount;
  var t = _jmolRadio(script, labelHtml, isChecked, separatorHtml, groupName, (id ? id : groupName + "_" + _jmol.radioCount), title ? title : 0);
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}

function jmolLink(script, label, id, title) {
  _jmolInitCheck();
  if (id == undefined || id == null)
    id = "jmolLink" + _jmol.linkCount;
  if (label == undefined || label == null)
    label = script.substring(0, 32);
  ++_jmol.linkCount;
  var scriptIndex = _jmolAddScript(script);
  var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><a name='" + id + "' id='" + id + 
          "' href='javascript:_jmolClick(" + scriptIndex + _jmol.targetText + ");' onMouseover='_jmolMouseOver(" + scriptIndex +
          ");return true;' onMouseout='_jmolMouseOut()' " +
          _jmol.linkCssText + ">" + label + "</a></span>";
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}

function jmolCommandInput(label, size, id, title) {
  _jmolInitCheck();
  if (id == undefined || id == null)
    id = "jmolCmd" + _jmol.cmdCount;
  if (label == undefined || label == null)
    label = "Execute";
  if (size == undefined || isNaN(size))
    size = 60;
  ++_jmol.cmdCount;
  var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><input name='" + id + "' id='" + id + 
          "' size='"+size+"'><input type=button value = '"+label+"' onClick='jmolScript(document.getElementById(\""+id+"\").value" + _jmol.targetText + ")'/></span>";
  if (_jmol.debugAlert)
    alert(t);
  return _jmolDocumentWrite(t);
}

function jmolMenu(arrayOfMenuItems, size, id, title) {
  _jmolInitCheck();
  if (id == undefined || id == null)
    id = "jmolMenu" + _jmol.menuCount;
  ++_jmol.menuCount;
  var type = typeof arrayOfMenuItems;
  if (type != null && type == "object" && arrayOfMenuItems.length) {
    var len = arrayOfMenuItems.length;
    if (typeof size != "number" || size == 1)
      size = null;
    else if (size < 0)
      size = len;
    var sizeText = size ? " size='" + size + "' " : "";
    var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><select name='" + id + "' id='" + id +
            "' onChange='_jmolMenuSelected(this" + _jmol.targetText + ")'" +
            sizeText + _jmol.menuCssText + ">";
    for (var i = 0; i < len; ++i) {
      var menuItem = arrayOfMenuItems[i];
      type = typeof menuItem;
      var script, text;
      var isSelected = undefined;
      if (type == "object" && menuItem != null) {
        script = menuItem[0];
        text = menuItem[1];
        isSelected = menuItem[2];
      } else {
        script = text = menuItem;
      }
      if (text == undefined || text == null)
        text = script;		
	  if (script=="#optgroup") {
        t += "<optgroup label='" + text + "'>";	  
	  } else if (script=="#optgroupEnd") {
        t += "</optgroup>";	  
	  } else {		
        var scriptIndex = _jmolAddScript(script);
        var selectedText = isSelected ? "' selected>" : "'>";
        t += "<option value='" + scriptIndex + selectedText + text + "</option>";
	  }
    }
    t += "</select></span>";
    if (_jmol.debugAlert)
      alert(t);
    return _jmolDocumentWrite(t);
  }
}

function jmolHtml(html) {
  return _jmolDocumentWrite(html);
}

function jmolBr() {
  return _jmolDocumentWrite("<br />");
}

////////////////////////////////////////////////////////////////
// advanced scripting functions
////////////////////////////////////////////////////////////////

function jmolDebugAlert(enableAlerts) {
  _jmol.debugAlert = (enableAlerts == undefined || enableAlerts)
}

function jmolAppletInline(size, inlineModel, script, nameSuffix) {
  _jmolInitCheck();
  return _jmolApplet(size, _jmolSterilizeInline(inlineModel),
                     script, nameSuffix);
}

function jmolSetTarget(targetSuffix) {
  _jmol.targetSuffix = targetSuffix;
  _jmol.targetText = targetSuffix ? ",\"" + targetSuffix + "\"" : "";
}

function jmolScript(script, targetSuffix) {
  if (script) {
    _jmolCheckBrowser();
    if (targetSuffix == "all") {
      with (_jmol) {
	for (var i = 0; i < appletSuffixes.length; ++i) {
	  var applet = _jmolGetApplet(appletSuffixes[i]);
          if (applet) applet.script(script);
        }
      }
    } else {
      var applet=_jmolGetApplet(targetSuffix);
      if (applet) applet.script(script);
    }
  }
}

//Java in MacOS X bug: cannot differentiate properly between signatures String and String[]
//so we have to do these explicitly

function jmolLoadInlineString(model, script, isAppend, targetSuffix) {
  if (!model)return
  if (!script)script ="";
  if (!isAppend)isAppend = false;
  if (!targetSuffix)targetSuffix = 0;
  var applet=_jmolGetApplet(targetSuffix);
  if (!applet)return;
  if (applet.loadInlineString) //Jmol 11.4
	applet.loadInlineString(model, script, isAppend);
  else //Jmol 11.2
	applet.loadInlineString(model, script);

}

//If the array contains strings that include newline characters, then the array is assumed to 
//be a set of models; if not, then the array is assumed to be a set of lines for one model

function jmolLoadInlineArray(model_or_models, script, isAppend, targetSuffix) {
  if (!model_or_models)return
  if (!script)script ="";
  if (!isAppend)isAppend = false;
  if (!targetSuffix)targetSuffix = 0;
  var applet=_jmolGetApplet(targetSuffix);
  if (!applet)return;
  if (applet.loadInlineArray) //Jmol 11.4
	applet.loadInlineArray(model_or_models, script, isAppend);
  else //Jmol 11.2
	applet.loadInline(model_or_models, script);
}


// modified to work under MAC OS

function jmolLoadInline(model, targetSuffix) {
  if (!model)return
  if (!targetSuffix)targetSuffix = 0;
  jmolLoadInlineString(model, "", false, targetSuffix);
}

// modified to work under MAC OS

function jmolLoadInlineScript(model, script, targetSuffix) {
  if (!model)return
  if (!script)script ="";
  if (!targetSuffix)targetSuffix = 0;
  if (typeof(model)=="object")
    jmolLoadInlineArray(model, script, false, targetSuffix);
  else
    jmolLoadInlineString(model, script, false, targetSuffix);
}

function jmolCheckBrowser(action, urlOrMessage, nowOrLater) {
  if (typeof action == "string") {
    action = action.toLowerCase();
    if (action != "alert" && action != "redirect" && action != "popup")
      action = null;
  }
  if (typeof action != "string")
    alert("jmolCheckBrowser(action, urlOrMessage, nowOrLater)\n\n" +
          "action must be 'alert', 'redirect', or 'popup'");
  else {
    if (typeof urlOrMessage != "string")
      alert("jmolCheckBrowser(action, urlOrMessage, nowOrLater)\n\n" +
            "urlOrMessage must be a string");
    else {
      _jmol.checkBrowserAction = action;
      _jmol.checkBrowserUrlOrMessage = urlOrMessage;
    }
  }
  if (typeof nowOrLater == "string" && nowOrLater.toLowerCase() == "now")
    _jmolCheckBrowser();
}

////////////////////////////////////////////////////////////////
// Cascading Style Sheet Class support
////////////////////////////////////////////////////////////////

function jmolSetAppletCssClass(appletCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.appletCssClass = appletCssClass;
    _jmol.appletCssText = appletCssClass ? "class='" + appletCssClass + "' " : "";
  }
}

function jmolSetButtonCssClass(buttonCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.buttonCssClass = buttonCssClass;
    _jmol.buttonCssText = buttonCssClass ? "class='" + buttonCssClass + "' " : "";
  }
}

function jmolSetCheckboxCssClass(checkboxCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.checkboxCssClass = checkboxCssClass;
    _jmol.checkboxCssText = checkboxCssClass ? "class='" + checkboxCssClass + "' " : "";
  }
}

function jmolSetRadioCssClass(radioCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.radioCssClass = radioCssClass;
    _jmol.radioCssText = radioCssClass ? "class='" + radioCssClass + "' " : "";
  }
}

function jmolSetLinkCssClass(linkCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.linkCssClass = linkCssClass;
    _jmol.linkCssText = linkCssClass ? "class='" + linkCssClass + "' " : "";
  }
}

function jmolSetMenuCssClass(menuCssClass) {
  if (_jmol.hasGetElementById) {
    _jmol.menuCssClass = menuCssClass;
    _jmol.menuCssText = menuCssClass ? "class='" + menuCssClass + "' " : "";
  }
}

////////////////////////////////////////////////////////////////
// functions for INTERNAL USE ONLY which are subject to change
// use at your own risk ... you have been WARNED!
////////////////////////////////////////////////////////////////
var _jmol = {
  currentDocument: document,

  debugAlert: false,
  
  codebase: ".",
  modelbase: ".",
  
  appletCount: 0,
  appletSuffixes: [],
  
  buttonCount: 0,
  checkboxCount: 0,
  linkCount: 0,
  cmdCount: 0,
  menuCount: 0,
  radioCount: 0,
  radioGroupCount: 0,
  
  appletCssClass: null,
  appletCssText: "",
  buttonCssClass: null,
  buttonCssText: "",
  checkboxCssClass: null,
  checkboxCssText: "",
  radioCssClass: null,
  radioCssText: "",
  linkCssClass: null,
  linkCssText: "",
  menuCssClass: null,
  menuCssText: "",
  
  targetSuffix: 0,
  targetText: "",
  scripts: [""],
  params: {
	syncId: ("" + Math.random()).substring(3),
	progressbar: "true",
	progresscolor: "blue",
	boxbgcolor: "black",
	boxfgcolor: "white",
	boxmessage: "Downloading JmolApplet ..."
  },
  ua: navigator.userAgent.toLowerCase(),
  uaVersion: parseFloat(navigator.appVersion),
  
  os: "unknown",
  browser: "unknown",
  browserVersion: 0,
  hasGetElementById: !!document.getElementById,
  isJavaEnabled: navigator.javaEnabled(),
  isNetscape47Win: false,
  isIEWin: false,
  useIEObject: false,
  useHtml4Object: false,
  
  windowsClassId: "clsid:8AD9C840-044E-11D1-B3E9-00805F499D93",
  windowsCabUrl:
   "http://java.sun.com/update/1.5.0/jinstall-1_5_0_05-windows-i586.cab",

  isBrowserCompliant: false,
  isJavaCompliant: false,
  isFullyCompliant: false,

  initialized: false,
  initChecked: false,
  
  browserChecked: false,
  checkBrowserAction: "alert",
  checkBrowserUrlOrMessage: null,

  archivePath: null, // JmolApplet0.jar OR JmolAppletSigned0.jar

  previousOnloadHandler: null,
  ready: {}
}

with (_jmol) {
  function _jmolTestUA(candidate) {
    var ua = _jmol.ua;
    var index = ua.indexOf(candidate);
    if (index < 0)
      return false;
    _jmol.browser = candidate;
    _jmol.browserVersion = parseFloat(ua.substring(index+candidate.length+1));
    return true;
  }
  
  function _jmolTestOS(candidate) {
    if (_jmol.ua.indexOf(candidate) < 0)
      return false;
    _jmol.os = candidate;
    return true;
  }
  
  _jmolTestUA("konqueror") ||
  _jmolTestUA("safari") ||
  _jmolTestUA("omniweb") ||
  _jmolTestUA("opera") ||
  _jmolTestUA("webtv") ||
  _jmolTestUA("icab") ||
  _jmolTestUA("msie") ||
  (_jmol.ua.indexOf("compatible") < 0 && _jmolTestUA("mozilla"));
  
  _jmolTestOS("linux") ||
  _jmolTestOS("unix") ||
  _jmolTestOS("mac") ||
  _jmolTestOS("win");

  isNetscape47Win = (os == "win" && browser == "mozilla" &&
                     browserVersion >= 4.78 && browserVersion <= 4.8);

  if (os == "win") {
    isBrowserCompliant = hasGetElementById;
  } else if (os == "mac") { // mac is the problem child :-(
    if (browser == "mozilla" && browserVersion >= 5) {
      // miguel 2004 11 17
      // checking the plugins array does not work because
      // Netscape 7.2 OS X still has Java 1.3.1 listed even though
      // javaplugin.sf.net is installed to upgrade to 1.4.2
      eval("try {var v = java.lang.System.getProperty('java.version');" +
           " _jmol.isBrowserCompliant = v >= '1.4.2';" +
           " } catch (e) { }");
    } else if (browser == "opera" && browserVersion <= 7.54) {
      isBrowserCompliant = false;
    } else {
      isBrowserCompliant = hasGetElementById &&
        !((browser == "msie") ||
          (browser == "safari" && browserVersion < 125.12));
    }
  } else if (os == "linux" || os == "unix") {
    if (browser == "konqueror" && browserVersion <= 3.3)
      isBrowserCompliant = false;
    else
      isBrowserCompliant = hasGetElementById;
  } else { // other OS
    isBrowserCompliant = hasGetElementById;
  }

  // possibly more checks in the future for this
  isJavaCompliant = isJavaEnabled;

  isFullyCompliant = isBrowserCompliant && isJavaCompliant;

  // IE5.5 works just fine ... but let's push them to Sun Java
  isIEWin = (os == "win" && browser == "msie" && browserVersion >= 5.5);
  useIEObject = isIEWin;
  useHtml4Object =
   (os != "mac" && browser == "mozilla" && browserVersion >= 5) ||
   (os == "win" && browser == "opera" && browserVersion >= 8) ||
   (os == "mac" && browser == "safari" && browserVersion >= 412.2);

 doTranslate = true;
 haveSetTranslate = false;
}

function jmolSetCallback(callbackName,funcName) {
  _jmol.params[callbackName] = funcName
}

function jmolSetSyncId(n) {
  return _jmol.params["syncId"] = n
}

function jmolGetSyncId() {
  return _jmol.params["syncId"]
}

function jmolSetLogLevel(n) {
  _jmol.params.logLevel = ''+n;
}

	/*  AngelH, mar2007:
		By (re)setting these variables in the webpage before calling jmolApplet(), 
		a custom message can be provided (e.g. localized for user's language) when no Java is installed.
	*/
if (noJavaMsg==undefined) var noJavaMsg = 
        "You do not have Java applets enabled in your web browser, or your browser is blocking this applet.<br />\n" +
        "Check the warning message from your browser and/or enable Java applets in<br />\n" +
        "your web browser preferences, or install the Java Runtime Environment from <a href='http://www.java.com'>www.java.com</a><br />";
if (noJavaMsg2==undefined) var noJavaMsg2 = 
        "You do not have the<br />\n" +
        "Java Runtime Environment<br />\n" +
        "installed for applet support.<br />\n" +
        "Visit <a href='http://www.java.com'>www.java.com</a>";
function _jmolApplet(size, inlineModel, script, nameSuffix) {
	/*  AngelH, mar2007
		Fixed percent / pixel business, to avoid browser errors:
		put "px" where needed, avoid where not.		
	*/
  with (_jmol) {
    if (! nameSuffix)
      nameSuffix = appletCount;
    appletSuffixes.push(nameSuffix);
    ++appletCount;
    if (! script)
      script = "select *";
    var sz = _jmolGetAppletSize(size);
    var widthAndHeight = " width='" + sz[0] + "' height='" + sz[1] + "' ";
    var tHeader, tFooter;

    if (useIEObject || useHtml4Object) {
      params.name = 'jmolApplet' + nameSuffix;
      params.archive = archivePath;
      params.mayscript = 'true';
      params.codebase = codebase;
    }
    if (useIEObject) { // use MSFT IE6 object tag with .cab file reference
      winCodebase = (windowsCabUrl ? " codebase='" + windowsCabUrl + "'\n" : "");
      tHeader = 
        "<object name='jmolApplet" + nameSuffix +
        "' id='jmolApplet" + nameSuffix + "' " + appletCssText + "\n" +
	" classid='" + windowsClassId + "'\n" + winCodebase + widthAndHeight + ">\n";
        params.code = 'JmolApplet';
      tFooter = "</object>";
    } else if (useHtml4Object) { // use HTML4 object tag
      tHeader = 
        "<object name='jmolApplet" + nameSuffix +
        "' id='jmolApplet" + nameSuffix + "' " + appletCssText + "\n" +
	" classid='java:JmolApplet'\n" +
        " type='application/x-java-applet'\n" +
        widthAndHeight + ">\n";
      tFooter = "</object>";
    } else { // use applet tag
      tHeader = 
        "<applet name='jmolApplet" + nameSuffix +
        "' id='jmolApplet" + nameSuffix +
        "' " + appletCssText +
        " code='JmolApplet'" +
        " archive='" + archivePath + "' codebase='" + codebase + "'\n" +
		widthAndHeight +
        " mayscript='true'>\n";
      tFooter = "</applet>";
    }
    var visitJava;
    if (isIEWin || useHtml4Object) {
		var szX = "width:" + sz[0]
		if ( szX.indexOf("%")==-1 ) szX+="px" 
		var szY = "height:" + sz[1]
		if ( szY.indexOf("%")==-1 ) szY+="px" 
      visitJava =
        "<p style='background-color:yellow; color:black; " +
		szX + ";" + szY + ";" +
        // why doesn't this vertical-align work?
	"text-align:center;vertical-align:middle;'>\n" +
		noJavaMsg +
        "</p>";
    } else {
      visitJava =
        "<table bgcolor='yellow'><tr>" +
        "<td align='center' valign='middle' " + widthAndHeight + "><font color='black'>\n" +
		noJavaMsg2 +
        "</font></td></tr></table>";
    }
    params.loadInline = (inlineModel ? inlineModel : "");
    params.script = (script ? _jmolSterilizeScript(script) : "");
    var t = tHeader + _jmolParams() + visitJava + tFooter;
    jmolSetTarget(nameSuffix);
    ready["jmolApplet" + nameSuffix] = false;
    if (_jmol.debugAlert)
      alert(t);
    return _jmolDocumentWrite(t);
  }
}

function _jmolParams() {
 var t = "";
 for (i in _jmol.params)
	if(_jmol.params[i]!="")
		 t+="  <param name='"+i+"' value='"+_jmol.params[i]+"' />\n";
 return t
}

function _jmolInitCheck() {
  if (_jmol.initChecked)
    return;
  _jmol.initChecked = true;
  if (_jmol.initialized)
    return;
  jmolInitialize(defaultdir, defaultjar)
}

function _jmolCheckBrowser() {
  with (_jmol) {
    if (browserChecked)
      return;
    browserChecked = true;
  
    if (isFullyCompliant)
      return true;

    if (checkBrowserAction == "redirect")
      location.href = checkBrowserUrlOrMessage;
    else if (checkBrowserAction == "popup")
      _jmolPopup(checkBrowserUrlOrMessage);
    else {
      var msg = checkBrowserUrlOrMessage;
      if (msg == null)
        msg = "Your web browser is not fully compatible with Jmol\n\n" +
              "browser: " + browser +
              "   version: " + browserVersion +
              "   os: " + os +
              "\n\n" + ua;
      alert(msg);
    }
  }
  return false;
}

function _jmolDocumentWrite(text) {
  if (_jmol.currentDocument)
    _jmol.currentDocument.write(text);
  return text;
}

function _jmolPopup(url) {
  var popup = window.open(url, "JmolPopup",
                          "left=150,top=150,height=400,width=600," +
                          "directories=yes,location=yes,menubar=yes," +
                          "toolbar=yes," +
                          "resizable=yes,scrollbars=yes,status=yes");
  if (popup.focus)
    poup.focus();
}

function _jmolReadyCallback(name) {
  if (_jmol.debugAlert)
    alert(name + " is ready");
  _jmol.ready["" + name] = true;
}

function _jmolSterilizeScript(script) {
  var inlineScript = script.replace(/'/g, "&#39;");
  if (_jmol.debugAlert)
    alert("script:\n" + inlineScript);
  return inlineScript;
}

function _jmolSterilizeInline(model) {
  var inlineModel =
    model.replace(/\r|\n|\r\n/g, "|").replace(/'/g, "&#39;");
  if (_jmol.debugAlert)
    alert("inline model:\n" + inlineModel);
  return inlineModel;
}

	/*  AngelH, mar2007:
		By (re)setting this variable in the webpage before calling jmolApplet(), limits for applet size can be overriden.
	*/

	/* hansonr, jun2007:
		2048 standard for GeoWall (http://geowall.geo.lsa.umich.edu/home.html)
	*/

if (allowedJmolSize==undefined) var allowedJmolSize = [25, 2048, 300]   // min, max, default (pixels)
function _jmolGetAppletSize(size) {
	/*  AngelH, mar2007
		Accepts single number or 2-value array, each one can be either:
	   percent (text string ending %), decimal 0 to 1 (percent/100), number, or text string (interpreted as nr.)
	   Size is now returned as string or number, no "px".
	*/
  var width, height;
  if ( (typeof size) == "object" && size != null ) {
    width = size[0]; height = size[1];
  } else {
    width = height = size;
  }
  // if percent, leave it as it is:
  if ( width.toString().charAt(width.toString().length-1) != "%" ) {
    width = parseFloat(width);	// convert to nr., or strip text, or make zero
	if ( width <= 1 && width > 0 ) { width = (width*100)+"%" }	// decimal: convert to percent and quit
	else if ( width >= allowedJmolSize[0] && width <= allowedJmolSize[1] ) { width = parseInt(width) }	// accept only that range (pixels)
	else { width = allowedJmolSize[2] }	// default size 300 pixels
  }
  if ( height.toString().charAt(height.toString().length-1) != "%" ) {
    height = parseFloat(height);
	if ( height <= 1 && height > 0 ) { height = (height*100)+"%" }
	else if ( height >= allowedJmolSize[0] && height <= allowedJmolSize[1] ) { height = parseInt(height) }
	else { height = allowedJmolSize[2] }
  }
  return [width, height];
}

function _jmolRadio(script, labelHtml, isChecked, separatorHtml, groupName, id, title) {
  ++_jmol.radioCount;
  if (groupName == undefined || groupName == null)
    groupName = "jmolRadioGroup" + (_jmol.radioGroupCount - 1);
  if (!script)
    return "";
  if (labelHtml == undefined || labelHtml == null)
    labelHtml = script.substring(0, 32);
  if (! separatorHtml)
    separatorHtml = "";
  var scriptIndex = _jmolAddScript(script);
  var eospan = "</span>"
  var t = "<span id=\"span_"+id+"\""+(title ? " title =\"" + title + "\"":"")+"><input name='" 
	+ groupName + "' id='"+id+"' type='radio' onClick='_jmolClick(" +
         scriptIndex + _jmol.targetText + ");return true;' onMouseover='_jmolMouseOver(" +
         scriptIndex + ");return true;' onMouseout='_jmolMouseOut()' " +
	 (isChecked ? "checked " : "") + _jmol.radioCssText + "/>"
  if (labelHtml.toLowerCase().indexOf("<td>")>=0) {
	t += eospan
	eospan = "";
  }
  t += labelHtml +eospan + separatorHtml;
  return t;
}

function _jmolFindApplet(target) {
  // first look for the target in the current window
  var applet = _jmolFindAppletInWindow(window, target);
  // THEN look for the target in child frames
  if (applet == undefined)
    applet = _jmolSearchFrames(window, target);
  // FINALLY look for the target in sibling frames
  if (applet == undefined)
    applet = _jmolSearchFrames(top, target); // look starting in top frame
  return applet;
}

function _jmolGetApplet(targetSuffix){
 var target = "jmolApplet" + (targetSuffix ? targetSuffix : "0");
 var applet = _jmolFindApplet(target);
 if (applet) return applet
 if(!_jmol.alerted)alert("could not find applet " + target);
 _jmol.alerted = true;
 return null
}

function _jmolSearchFrames(win, target) {
  var applet;
  var frames = win.frames;
  if (frames && frames.length) { // look in all the frames below this window
    for (var i = 0; i < frames.length; ++i) {
      applet = _jmolSearchFrames(frames[i], target);
      if (applet)
        break;
    }
  } else { // look for the applet in this window
   applet = _jmolFindAppletInWindow(win, target)
  }
  return applet;
}

function _jmolFindAppletInWindow(win, target) {
    var doc = win.document;
    // getElementById fails on MacOSX Safari & Mozilla	
    if (_jmol.useHtml4Object || _jmol.useIEObject)
      return doc.getElementById(target);
    else if (doc.applets)
      return doc.applets[target];
    else
      return doc[target]; 
}

function _jmolAddScript(script) {
  if (! script)
    return 0;
  var index = _jmol.scripts.length;
  _jmol.scripts[index] = script;
  return index;
}

function _jmolClick(scriptIndex, targetSuffix) {
  jmolScript(_jmol.scripts[scriptIndex], targetSuffix);
}

function _jmolMenuSelected(menuObject, targetSuffix) {
  var scriptIndex = menuObject.value;
  if (scriptIndex != undefined) {
    jmolScript(_jmol.scripts[scriptIndex], targetSuffix);
    return;
  }
  var len = menuObject.length;
  if (typeof len == "number") {
    for (var i = 0; i < len; ++i) {
      if (menuObject[i].selected) {
        _jmolClick(menuObject[i].value, targetSuffix);
	return;
      }
    }
  }
  alert("?Que? menu selected bug #8734");
}


_jmol.checkboxMasters = new Array();
_jmol.checkboxItems = new Array();

function jmolSetCheckboxGroup(chkMaster,chkBox) {
	var id = chkMaster;
	if(typeof(id)=="number")id = "jmolCheckbox" + id;
	chkMaster = document.getElementById(id);
	if (!chkMaster)alert("jmolSetCheckboxGroup: master checkbox not found: " + id);
	var m = _jmol.checkboxMasters[id] = new Array();
	m.chkMaster = chkMaster;
	m.chkGroup = new Array();
	for (var i = 1; i < arguments.length; i++){
		var id = arguments[i];
		if(typeof(id)=="number")id = "jmolCheckbox" + id;
		checkboxItem = document.getElementById(id);
		if (!checkboxItem)alert("jmolSetCheckboxGroup: group checkbox not found: " + id);
		m.chkGroup[id] = checkboxItem;
		_jmol.checkboxItems[id] = m;
	}
}

function _jmolNotifyMaster(m){
	//called when a group item is checked
	var allOn = true;
	var allOff = true;
	for (var chkBox in m.chkGroup){
		if(m.chkGroup[chkBox].checked)
			allOff = false;
		else
			allOn = false;
	}
	if (allOn)m.chkMaster.checked = true;	
	if (allOff)m.chkMaster.checked = false;
	if ((allOn || allOff) && _jmol.checkboxItems[m.chkMaster.id])
		_jmolNotifyMaster(_jmol.checkboxItems[m.chkMaster.id])
}

function _jmolNotifyGroup(m, isOn){
	//called when a master item is checked
	for (var chkBox in m.chkGroup){
		var item = m.chkGroup[chkBox]
		item.checked = isOn;
		if (_jmol.checkboxMasters[item.id])
			_jmolNotifyGroup(_jmol.checkboxMasters[item.id], isOn)
	}
}

function _jmolCbClick(ckbox, whenChecked, whenUnchecked, targetSuffix) {
  _jmolClick(ckbox.checked ? whenChecked : whenUnchecked, targetSuffix);
  if(_jmol.checkboxMasters[ckbox.id])
	_jmolNotifyGroup(_jmol.checkboxMasters[ckbox.id], ckbox.checked)
  if(_jmol.checkboxItems[ckbox.id])
	_jmolNotifyMaster(_jmol.checkboxItems[ckbox.id])
}

function _jmolCbOver(ckbox, whenChecked, whenUnchecked) {
  window.status = _jmol.scripts[ckbox.checked ? whenUnchecked : whenChecked];
}

function _jmolMouseOver(scriptIndex) {
  window.status = _jmol.scripts[scriptIndex];
}

function _jmolMouseOut() {
  window.status = " ";
  return true;
}

function _jmolSetCodebase(codebase) {
  _jmol.codebase = codebase ? codebase : ".";
  if (_jmol.debugAlert)
    alert("jmolCodebase=" + _jmol.codebase);
}

function _jmolOnloadResetForms() {
  _jmol.previousOnloadHandler = window.onload;
  window.onload =
  function() {
    with (_jmol) {
      if (buttonCount+checkboxCount+menuCount+radioCount+radioGroupCount > 0) {
        var forms = document.forms;
        for (var i = forms.length; --i >= 0; )
          forms[i].reset();
      }
      if (previousOnloadHandler)
        previousOnloadHandler();
    }
  }
}

////////////////////////////////////
/////extensions for getProperty/////
////////////////////////////////////


function _jmolEvalJSON(s,key){
 s=s+""
 if(!s)return []
 if(s.charAt(0)!="{"){
	if(s.indexOf(" | ")>=0)s=s.replace(/\ \|\ /g, "\n")
	return s
 }
 var A = eval("("+s+")")
 if(!A)return
 if(key && A[key])A=A[key]
 return A
}

function _jmolEnumerateObject(A,key){
 var sout=""
 if(typeof(A) == "string" && A!="null"){
	sout+="\n"+key+"=\""+A+"\""
 }else if(!isNaN(A)||A==null){
	sout+="\n"+key+"="+(A+""==""?"null":A)
 }else if(A.length){
    sout+=key+"=new Array()"
    for(var i=0;i<A.length;i++){
	sout+="\n"
	if(typeof(A[i]) == "object"||typeof(A[i]) == "array"){
		sout+=_jmolEnumerateObject(A[i],key+"["+i+"]")
	}else{
		sout+=key+"["+i+"]="+(typeof(A[i]) == "string" && A[i]!="null"?"\""+A[i].replace(/\"/g,"\\\"")+"\"":A[i])
	}
    }
 }else{
    if(key != ""){
	sout+=key+"=new Array()"
	key+="."
    }
    
    for(var i in A){
	sout+="\n"
	if(typeof(A[i]) == "object"||typeof(A[i]) == "array"){
		sout+=_jmolEnumerateObject(A[i],key+i)
	}else{
		sout+=key+i+"="+(typeof(A[i]) == "string" && A[i]!="null"?"\""+A[i].replace(/\"/g,"\\\"")+"\"":A[i])
	}
    }
 } 
 return sout
}


function _jmolSortKey0(a,b){
 return (a[0]<b[0]?1:a[0]>b[0]?-1:0)
}

function _jmolSortMessages(A){
 if(!A || typeof(A)!="object")return []
 var B = new Array()
 for(var i=A.length-1;i>=0;i--)for(var j=0;j<A[i].length;j++)B[B.length]=A[i][j]
 if(B.length == 0) return
 B=B.sort(_jmolSortKey0)
 return B
}

/////////additional extensions //////////


function _jmolDomScriptLoad(URL, target){
 //open(URL) //to debug
 _jmol.servercall=URL
 var node = document.getElementById("_jmolScriptNode" + target)
 if (node && _jmol.browser!="msie"){
    document.getElementsByTagName("HEAD")[0].removeChild(node)
    node=null
 }
 if (node) {
   node.setAttribute("src",URL)
 } else {
   node=document.createElement("script")
   node.setAttribute("id","_jmolScriptNode" + target)
   node.setAttribute("type","text/javascript")
   node.setAttribute("src",URL)
   document.getElementsByTagName("HEAD")[0].appendChild(node)
 }
}


function _jmolExtractPostData(url){
 S=url.split("&POST:")
 var s=""
 for(var i=1;i<S.length;i++){
	KV=S[i].split("=")
	s+="&POSTKEY"+i+"="+KV[0]
	s+="&POSTVALUE"+i+"="+KV[1]
 }
 return "&url="+escape(S[0])+s
}

function _jmolLoadModel(targetSuffix,remoteURL,array,isError,errorMessage){
 //called by server, but in client
 //overload this function to customize return
 _jmol.remoteURL=remoteURL
 if(isError)alert(errorMessage)
 jmolLoadInlineArray(array,_jmol.optionalscript,false,targetSuffix)
}

//////////user property/status functions/////////

function jmolGetStatus(strStatus,targetSuffix){
 return _jmolSortMessages(jmolGetPropertyAsArray("jmolStatus",strStatus,targetSuffix))
}

function jmolGetPropertyAsArray(sKey,sValue,targetSuffix) {
 return _jmolEvalJSON(jmolGetPropertyAsJSON(sKey,sValue,targetSuffix),sKey)
}

function jmolGetPropertyAsString(sKey,sValue,targetSuffix) {
 var applet = _jmolGetApplet(targetSuffix);
 if(!sValue)sValue=""
 return (applet ? applet.getPropertyAsString(sKey,sValue) + "" : "")
}

function jmolGetPropertyAsJSON(sKey,sValue,targetSuffix) {
 if(!sValue)sValue = ""
 var applet = _jmolGetApplet(targetSuffix);
 try {
  return (applet ? applet.getPropertyAsJSON(sKey,sValue) + "" : "")
 } catch(e) {
  return ""
 }
}

function jmolGetPropertyAsJavaObject(sKey,sValue,targetSuffix) {
 if(!sValue)sValue = ""
 var applet = _jmolGetApplet(targetSuffix);
 return (applet ? applet.getProperty(sKey,sValue) : null)
}


function jmolDecodeJSON(s) {
 return _jmolEnumerateObject(_jmolEvalJSON(s),"")
}


///////// synchronous scripting ////////

function jmolScriptWait(script, targetSuffix) {
  if(!targetSuffix)targetSuffix="0"
  var Ret=jmolScriptWaitAsArray(script, targetSuffix)
  var s = ""
  for(i=Ret.length;--i>=0;)
  for(j=0;j< Ret[i].length;j++)
	s+=Ret[i][j]+"\n"
  return s
}

function jmolEvaluate(molecularMath, targetSuffix) {

  //carries out molecular math on a model

  if(!targetSuffix)targetSuffix="0"
  var result = "" + jmolGetPropertyAsJavaObject("evaluate", molecularMath, targetSuffix);
  var s = result.replace(/\-*\d+/,"")
  if (s == "" && !isNaN(parseInt(result)))return parseInt(result);
  var s = result.replace(/\-*\d*\.\d*/,"")
  if (s == "" && !isNaN(parseFloat(result)))return parseFloat(result);
  return result;
}

function jmolScriptEcho(script, targetSuffix) {
  // returns a newline-separated list of all echos from a script
  if(!targetSuffix)targetSuffix="0"
  var Ret=jmolScriptWaitAsArray(script, targetSuffix)
  var s = ""
  for(i=Ret.length;--i>=0;)
  for(j=Ret[i].length;--j>=0;)
        if (Ret[i][j][1] == "scriptEcho")s+=Ret[i][j][3]+"\n"
  return s.replace(/ \| /g, "\n")
}


function jmolScriptMessage(script, targetSuffix) {
  // returns a newline-separated list of all messages from a script, ending with "script completed\n"
  if(!targetSuffix)targetSuffix="0"
  var Ret=jmolScriptWaitAsArray(script, targetSuffix)
  var s = ""
  for(i=Ret.length;--i>=0;)
  for(j=Ret[i].length;--j>=0;)
        if (Ret[i][j][1] == "scriptStatus")s+=Ret[i][j][3]+"\n"
  return s.replace(/ \| /g, "\n")
}


function jmolScriptWaitAsArray(script, targetSuffix) {
 var ret = ""
 try{
  jmolGetStatus("scriptEcho,scriptMessage,scriptStatus,scriptError",targetSuffix)
  if (script) {
    _jmolCheckBrowser();
    var applet=_jmolGetApplet(targetSuffix);
    if (applet) ret += applet.scriptWait(script);
    ret = _jmolEvalJSON(ret,"jmolStatus")
    if(typeof ret == "object")
	return ret
  }
 }catch(e){
 }
  return [[ret]]
}



////////////   save/restore orientation   /////////////

function jmolSaveOrientation(id, targetSuffix) {  
 if(!targetSuffix)targetSuffix="0"
  return _jmol["savedOrientation"+id] = jmolGetPropertyAsArray("orientationInfo","info",targetSuffix).moveTo
}

function jmolRestoreOrientation(id, targetSuffix) {
 if(!targetSuffix)targetSuffix="0"
 var s=_jmol["savedOrientation"+id]
 if (!s || s == "")return
 s=s.replace(/1\.0/,"0")
 return jmolScriptWait(s,targetSuffix)
}

function jmolRestoreOrientationDelayed(id, delay, targetSuffix) {
 if(arguments.length < 2)delay=1;
 if(!targetSuffix)targetSuffix="0"
 var s=_jmol["savedOrientation"+id]
 if (!s || s == "")return
 s=s.replace(/1\.0/,delay)
 return jmolScriptWait(s,targetSuffix)
}

////////////  add parameter /////////////
/*
 * for adding callbacks or other parameters. Use:

   jmolSetDocument(0)
   var s= jmolApplet(....)
   s = jmolAppletAddParam(s,"messageCallback", "myFunctionName")
   document.write(s)
   jmolSetDocument(document) // if you want to then write buttons and such normally
 
 */

function jmolAppletAddParam(appletCode,name,value){
  if(value == "")return appletCode
  return appletCode.replace(/\<param/,"\n<param name='"+name+"' value='"+value+"' />\n<param")
}

///////////////auto load Research Consortium for Structural Biology (RCSB) data ///////////

function jmolLoadAjax_STOLAF_RCSB(fileformat,pdbid,optionalscript,targetSuffix){

 if(!_jmol.thismodel)_jmol.thismodel = "1crn"
 if(!_jmol.serverURL)_jmol.serverURL="http://fusion.stolaf.edu/chemistry/jmol/getajaxjs.cfm"
 if(!_jmol.RCSBserver)_jmol.RCSBserver="http://www.rcsb.org"
 if(!_jmol.defaultURL_RCSB)_jmol.defaultURL_RCSB=_jmol.RCSBserver+"/pdb/files/1CRN.CIF"
 if(!fileformat)fileformat="PDB"
 if(!pdbid)pdbid=prompt("Enter a 4-digit PDB ID:",_jmol.thismodel)
 if(!pdbid || pdbid.length != 4)return ""
 if(!targetSuffix)targetSuffix="0"
 if(!optionalscript)optionalscript=""
 var url=_jmol.defaultURL_RCSB.replace(/1CRN/g,pdbid.toUpperCase())
 if(fileformat!="CIF")url=url.replace(/CIF/,fileformat)
 _jmol.optionalscript=optionalscript
 _jmol.thismodel=pdbid
 _jmol.thistargetsuffix=targetSuffix
 _jmol.thisurl=url
 _jmol.modelArray = new Array()
 url=_jmol.serverURL+"?returnfunction=_jmolLoadModel&returnArray=_jmol.modelArray&id="+targetSuffix+_jmolExtractPostData(url)
 _jmolDomScriptLoad(url, targetSuffix)
 return url
}

/////////////// St. Olaf College AJAX server -- ANY URL ///////////

function jmolLoadAjax_STOLAF_ANY(url, userid, optionalscript,targetSuffix){
 _jmol.serverURL="http://fusion.stolaf.edu/chemistry/jmol/getajaxjs.cfm"
 if(!_jmol.thisurlANY)_jmol.thisurlANY = "http://www.stolaf.edu/depts/chemistry/mo/struc/data/ycp3-1.mol"
 if(!url)url=prompt("Enter any (uncompressed file) URL:", _jmol.thisurlANY)
 if(!userid)userid="0"
 if(!targetSuffix)targetSuffix="0"
 if(!optionalscript)optionalscript=""
 _jmol.optionalscript=optionalscript
 _jmol.thistargetsuffix=targetSuffix
 _jmol.modelArray = new Array()
 _jmol.thisurl = url
 url=_jmol.serverURL+"?returnfunction=_jmolLoadModel&returnArray=_jmol.modelArray&id="+targetSuffix+_jmolExtractPostData(url)
 _jmolDomScriptLoad(url, targetSuffix)
}


/////////////// Mineralogical Society of America (MSA) data /////////

function jmolLoadAjax_MSA(key,value,optionalscript,targetSuffix){

 if(!_jmol.thiskeyMSA)_jmol.thiskeyMSA = "mineral"
 if(!_jmol.thismodelMSA)_jmol.thismodelMSA = "quartz"
 if(!_jmol.ajaxURL_MSA)_jmol.ajaxURL_MSA="http://rruff.geo.arizona.edu/AMS/result.php?mineral=quartz&viewing=ajaxjs"
 if(!key)key=prompt("Enter a field:", _jmol.thiskeyMSA)
 if(!key)return ""
 if(!value)value=prompt("Enter a "+key+":", _jmol.thismodelMSA)
 if(!value)return ""
 if(!targetSuffix)targetSuffix="0"
 if(!optionalscript)optionalscript=""
 if(optionalscript == 1)optionalscript='load "" {1 1 1}'
 var url=_jmol.ajaxURL_MSA.replace(/mineral/g,key).replace(/quartz/g,value)
 _jmol.optionalscript=optionalscript
 _jmol.thiskeyMSA=key
 _jmol.thismodelMSA=value
 _jmol.thistargetsuffix=targetSuffix
 _jmol.thisurl=url
 _jmol.modelArray = new Array()
 loadModel=_jmolLoadModel
 _jmolDomScriptLoad(url, targetSuffix)
 return url
}



function jmolLoadAjaxJS(url, userid, optionalscript,targetSuffix){
 if(!userid)userid="0"
 if(!targetSuffix)targetSuffix="0"
 if(!optionalscript)optionalscript=""
 _jmol.optionalscript=optionalscript
 _jmol.thismodel=userid
 _jmol.thistargetsuffix=targetSuffix
 _jmol.modelArray = new Array()
 _jmol.thisurl = url
 url+="&returnFunction=_jmolLoadModel&returnArray=_jmol.modelArray&id="+targetSuffix
 _jmolDomScriptLoad(url, targetSuffix)
}


//// in case Jmol library has already been loaded:

}catch(e){}

///////////////moving atoms //////////////

// HIGHLY experimental!!

function jmolSetAtomCoord(i,x,y,z,targetSuffix){
    _jmolCheckBrowser();
      var applet=_jmolGetApplet(targetSuffix);
      if (applet) applet.getProperty('jmolViewer').setAtomCoord(i,x,y,z)
}

function jmolSetAtomCoordRelative(i,x,y,z,targetSuffix){
    _jmolCheckBrowser();
      var applet=_jmolGetApplet(targetSuffix);
      if (applet) applet.getProperty('jmolViewer').setAtomCoordRelative(i,x,y,z)
}


///////////////applet fake for testing buttons/////////////


if(document.location.search.indexOf("NOAPPLET")>=0){
	jmolApplet = function(w){
		var s="<table style='background-color:black' width="+w+"><tr height="+w+">"
		+"<td align=center valign=center style='background-color:white'>"
		+"Applet would be here"
		+"<p><textarea id=fakeApplet rows=5 cols=50></textarea>"
		+"</td></tr></table>"
		return _jmolDocumentWrite(s)
	}

	_jmolFindApplet = function(){return jmolApplet0}

	jmolApplet0 = {
	 script: function(script){document.getElementById("fakeApplet").value="\njmolScript:\n"+script}
	,scriptWait: function(script){document.getElementById("fakeApplet").value="\njmolScriptWait:\n"+script}	
	,loadInline: function(data,script){document.getElementById("fakeApplet").value="\njmolLoadInline data:\n"+data+"\n\nscript:\n"+script}
	}
}


///////////////////////////////////////////

//new 9:49 AM 3/6/2007:

//both w and h are optional. 
//if either is between 0 and 1, then it is taken as percent/100.
//if either is greater than 1, then it is taken as a size. 
function jmolResize(w,h) {
 _jmol.alerted = true;
 var percentW = (!w ? 100 : w <= 1  && w > 0 ? w * 100 : 0)
 var percentH = (!h ? percentW : h <= 1 && h > 0 ? h * 100 : 0)
 if (_jmol.browser=="msie") {
   var width=document.body.clientWidth;
   var height=document.body.clientHeight;
 } else {
   var netscapeScrollWidth=15;
   var width=window.innerWidth - netscapeScrollWidth;
   var height=window.innerHeight-netscapeScrollWidth;
 }
 var applet = _jmolGetApplet(0);
 if(!applet)return;
 applet.style.width = (percentW ? width * percentW/100 : w)+"px"
 applet.style.height = (percentH ? height * percentH/100 : h)+"px"
 title=width +  " " + height + " " + (new Date())
}
// ]]]]></xsl:text>
<xsl:text disable-output-escaping="yes">></xsl:text>
  </xsl:template>

  <xsl:template name="css-style">
    <xsl:text>
      <![CDATA[
        html       {
                     height:100%;
                     max-height:100%;
                     padding:0;
                     margin:0;
                     border:0;
                     background:#fff;
                     overflow: hidden;
                   }
        body       {
                     font-family: serif;
                     background: #ffffff;
                     height:100%;
                     max-height:100%;
                     overflow:hidden;
                     padding:0;
                     margin:0;
                     border:0;
                   }
        table      { 
		     border-collapse: collapse; 
		     }
	table.prop { 
	  	     text-align: right; 
	             border-collapse: collapse; 
	             border-left: hidden; 
		     border-right: hidden;
		     border-top: 1px solid Gray; 
		     border-bottom: 1px solid Gray; 
		     }
        table.structure { background: #ffffff; }

        .step       { 
                      border: 1px solid Gray;
                    }
        th.step     {
                      background: #aa2222;
                    }
        td.step     {
                      font-family: monospace;
                      background: #cc9999;
                    }
        td.stepnum { background: #ffffff; ; }

        .coords { border: 1px solid Gray;}

	.graph     {
                     text-align: left;
                   }
	
	th        { font-weight: bold; }
	td        { padding-left: 7px; padding-right: 7px;}
	.bigTitle 
                  {
                    color: #ffffff; 
                    background: Navy;    
                    font-weight: bold; 
                    margin: 0px; 
                    padding: 2px;
                    font-size: xx-large;
                  }
	.divisionTitle {
                  }
        .listTitle
                  {
                    font-weight: 900;
                    font-size: x-large;
                    margin-top: 2.5ex;
                    margin-bottom: 2.5ex;
                  }
        .foldout
                  {
                    font-weight: 900;
                    font-size: x-large;
                    margin-top: 2.5ex;
                    margin-bottom: 2.5ex;
		    }
	.eigen    { text-align: right; padding-left: 7px; padding-right: 7px; }
	.band     { vertical-align: text-top; }
	.toplevel { display: block; font-weight: 400; margin-bottom: 0; }
        .moduleDiv {color: #ffffff;
                    background: #4682B4;
                    font-weight: bold;
                    font-size: x-large;
                    border-top-width: 0px;
                    border-left-width: 0px;
                    border-right-width: 5px;
                    border-bottom-width: 5px;
                    border-color: #7dB7FF;
                    border-style: solid;
                    }
        .moduletitle {
                    padding: 5px;
                    margin-top: 10px;
                    margin-bottom: 10px;
                     }
        .module { text-align:left;}
        .steptitle   {
                    padding: 5px;
                    margin-top: 10px;
                    margin-bottom: 10px;
                     }
        .switch      { color: #ffffff;
                       background: #4682B4;
                       font-weight: bold;
                       cursor: pointer;
                       display: inline;
                       font-size: medium; }
	.sublevel { font-weight: normal; margin-left: 20px; margin-top: 0; line-height: 14px; }
        .paramname {color: #0000ff; }
        .paramvalue {color: #ff0000; }
        #head        {
                       position:absolute; margin:0; top:0; left:0; display:block; width:100%; height:50px; z-index:5; color:#fff; background: Navy;
                     }
        #foot        {
                       position:absolute; margin:0; bottom:0; left:0; display:block; width:100%; height:25px; background:rgb(233,238,242); font-size:0.8em; z-index:5; text-align:right; color:rgb(157,78,84);
                     }
        #maindisplay {
                       position:absolute;
                       left:0;
                       top:50px;
                       bottom:25px;
                       z-index: 4;
                       width:80%;
                       overflow:auto;
                     }
        #dictdisplay {
                       position:absolute;
                       left:80%;
                       top:50px;
                       bottom:25px;
                       z-index: 4;
                       width:20%;
                       overflow:auto;
                     }
        * html #maindisplay, * html #dictdisplay {
                       height:100%;
                       top:0;
                       bottom:0;
                       border-top:50px solid #fff;
                       border-bottom:25px solid #fff;}
        .innerMain  {
                       display:block;
                       padding:0 10px 10px 10px;
                    }
        .innerDict {
                       display:block;
                       padding:0 10px 10px 10px;
                       padding-bottom:300%;
                    }

        .dictEntry  { 
                       font-family: sans-serif;
                       font-weight: bold;
                       font-size: medium;
                    }
        .dictDefinition { 
                       font-family: serif;
                       font-weight: normal;
                       font-size: small; 
                         }
        .dictDescription { 
                       font-family: serif;
                       font-weight: normal;
                       font-size: small; 
                       font-style: italic;
                         }

        .dictRef { font-size: small;
                   font-style: italic; }
        .dotted { border-bottom:dotted 1px #000000; }
        .togglejmolsource { font-size: small; font-style: italic; }
	.graph .label { font-style: italic; }
      ]]>
    </xsl:text>
  </xsl:template>

  <xsl:template name="mainJavascript">
    <xsl:text>
      //<![CDATA[
function escapeEntities(S)  
{  
  return S.replace(/&/g, "&amp;").
    replace(/</g, "&lt;").
    replace(/>/g, "&gt;").
    replace(/\'/, "&apos;").
    replace(/\"/, "&quot;");
};

function getCMLNodeById(id) {
  var nl = document.getElementsByTagNameNS("http://www.xml-cml.org/schema", "cml");
  for (i = 0; i<nl.length; i++) {
    if (nl.item(i).getAttribute("id")==id) {
      return nl.item(i);
    }
  }
  return null;
};

function serializeDomNode(node) {
  switch(node.nodeType) {
  case 1:
    nsURI = node.namespaceURI;
    if (node.namespaceURI==nsURI) {
      var s = ["<"+node.localName];
      for (var i = 0; i<node.attributes.length; i++) {
	var a = node.attributes.item(i);
	if (!a.namespaceURI) {
	  s.push(" "+a.nodeName+"=\""+escapeEntities(a.value)+"\"");
	  }
	}
      s.push(">");
      for (var i = 0; i<node.childNodes.length; i++) {
	var n = node.childNodes.item(i);
	s.push(serializeDomNode(n));
      }
      s.push("</"+node.localName+">");
      return s.join("");
    }
    return "";
  case 3:
    return escapeEntities(node.data);
  }
};

function toggleButton(button, submenu) { 
  if (document.getElementById(submenu).style.display == "none") {
    document.getElementById(submenu).style.display = "block";
    button.setAttribute('value', 'Hide');
  }
  else {
    document.getElementById(submenu).style.display = "none";
    button.setAttribute('value', 'Show');
  }
};

function toggleJmol(sz, inputNode, thisId, parentId) {
  // Grab object node to be created.
  var divNode = document.getElementById(parentId);
  
  if (inputNode.getAttribute('value')=="Deactivate Jmol viewer") {
    s = "<object style=\"display:none\"/>"
      divNode.innerHTML = s;
    divNode.style.display = "none";
    var newMessage = 'Activate Jmol viewer';
  }
  else {
    var cmlS = serializeDomNode(getCMLNodeById(thisId));
    _jmolDocumentWrite = function (t) { return t; };
    var s = jmolAppletInline(sz, escapeEntities(cmlS), script="background white", nameSuffix=thisId);
    divNode.innerHTML = s;
    divNode.style.display = "block";
    var newMessage = 'Deactivate Jmol viewer';
  }
  inputNode.setAttribute('value', newMessage);
};

function reloadApplet(p) {
  if (p.getAttribute("value")=="Deactivate Jmol viewer") {
    p.onclick();
    p.onclick();
  };
};

function makeJmolLocal(n) {
  _jmol.codebase = " file:///usr/local/jmol/";
  fs = $(".togglejmolsource").get();
  for (f in fs) {
    fs[f].source[0].checked = true;
    fs[f].source[1].checked = false;
    p = fs[f].previousSibling;
    reloadApplet(p);
  };
};

function makeJmolRemote(n) {
  _jmol.codebase = " https://data.eminerals.org/ccViz/jmol/";
  fs = $(".togglejmolsource").get();
  for (f in fs) {
    fs[f].source[0].checked = false;
    fs[f].source[1].checked = true;
    p = fs[f].previousSibling;
    reloadApplet(p);
  };
};

function toggleJmolAnimation(sz, inputNode) {
  // Grab object node to be created.
  var divNode = document.getElementById("jmolanimation");
  
  if (inputNode.getAttribute('value')=="Deactivate Jmol viewer") {
    o = "<object style=\"display:none\"/>";
    divNode.innerHTML = o;
    divNode.style.display = "none";
    var newMessage = 'Activate Jmol viewer';
  }
  else {
    cmlSteps = $(".stepcontents").get();
    var s = ['<cml:cml xmlns:cml="http://www.xml-cml.org/schema">'];
    for (c in cmlSteps) {
      cmlStep = cmlSteps[c].getElementsByTagNameNS("http://www.xml-cml.org/schema", "cml")[0];
      if (cmlStep) {
        s.push(serializeDomNode(cmlStep));
      };
    }
    s.push('</cml:cml>');
    _jmolDocumentWrite = function (t) { return t; };
    var o = jmolAppletInline(sz, escapeEntities(s.join("")), script="background white", nameSuffix="anim");
    divNode.innerHTML = o;
    divNode.style.display = "block";
    var newMessage = 'Deactivate Jmol viewer';
  }
  inputNode.setAttribute('value', newMessage);
};

jQuery(document).ready(function(){
  $(".clickable").append(" ▸");
  $(".clickable").click(function() {
// We need to kill all Java objects when we do this, or Safari
// will hang.
    jmols = $(this).next().find(".togglejmol").get();
    for (j in jmols) {
      if (jmols[j].getAttribute("value")=="Deactivate Jmol viewer") {
        jmols[j].onclick();
      };
    };
    $(this).text($(this).text().replace(" ▾"," ▴"));
    $(this).text($(this).text().replace(" ▸"," ▾"));
    $(this).next().toggle("slow");
    $(this).text($(this).text().replace(" ▴"," ▸"));
  }).next().hide();
  $("#initialmetadata").text($("#initialmetadata").text().replace(" ▸"," ▾"));
  $("#initialmetadata").next().show();
});

function plottable(id, xAxis, yAxis) {

  var d_ = [];
  for (j in xAxis) {
    d_.push([xAxis[j], yAxis[j]]);
  }
  data = [ { data:d_ } ]
  var p = $(id);

  if (p.css("display")!="none") {
    p.width(500);
    p.height(300);
    // setup plot

    var options = {
        legend: { show: true },
        lines: { show: true },
        points: { show: true },
        yaxis: { noTicks: 10 },
        selection: { mode: "xy" }
    };

    var plot = $.plot(p, data, options);

    p.bind("selected", function (event, area) {
        // do the zooming
        plot = $.plot(p, data,
                      $.extend(true, {}, options, {
                          xaxis: { min: area.x1, max: area.x2 },
                          yaxis: { min: area.y1, max: area.y2 }
                      }));
    });
  };
};

      //]]>
    </xsl:text>
  </xsl:template>

</xsl:stylesheet>
