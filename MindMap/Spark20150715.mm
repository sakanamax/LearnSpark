<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1435849013937" ID="ID_1965161155" MODIFIED="1435849781641" STYLE="bubble" TEXT="Spark">
<node CREATED="1435850021823" ID="ID_1260669336" MODIFIED="1435850033270" POSITION="left" TEXT="Released version">
<node CREATED="1435850035962" ID="ID_1911979881" MODIFIED="1435850050305" TEXT="1.4.0">
<node CREATED="1435850061136" ID="ID_317886325" MODIFIED="1435850067318" TEXT="Jun 11, 2015"/>
<node CREATED="1435851362309" ID="ID_245927274" MODIFIED="1435851369294" TEXT="Documentation">
<node CREATED="1435851341002" ID="ID_1109627990" MODIFIED="1435851356571">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://spark.apache.org/docs/1.4.0/
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1435849785488" ID="ID_1085182308" MODIFIED="1435850672749" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://spark.apache.org/
    </p>
  </body>
</html></richcontent>
<node CREATED="1435850629430" ID="ID_1802951522" MODIFIED="1435850636386" TEXT="Documentation">
<node CREATED="1435850638927" ID="ID_497118732" MODIFIED="1435850669412">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://spark.apache.org/documentation.html
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436041124196" ID="ID_1414555539" MODIFIED="1436988512023" POSITION="right" TEXT="RDD">
<node CREATED="1436041132022" ID="ID_506534777" MODIFIED="1436041148519" TEXT="Resilient Distributed Datasets">
<node CREATED="1436041151497" ID="ID_345513789" MODIFIED="1436041182220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.cs.berkeley.edu/~matei/papers/2012/nsdi_spark.pdf
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436381440690" ID="ID_507805580" MODIFIED="1436381457943" TEXT="Operations">
<node CREATED="1436381459827" ID="ID_745567276" MODIFIED="1436381466749" TEXT="Transformations">
<node CREATED="1436381471139" ID="ID_252947006" MODIFIED="1436381488998" TEXT="filter()">
<node CREATED="1436381492575" ID="ID_903654396" MODIFIED="1436545800006">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example
    </p>
    <p>
      # Maybe just copy /var/log/auth.log&#160;&#160;to&#160;&#160;spark's root directory? -- Ubuntu
    </p>
    <p>
      # Maybe just copy /var/log/audit/audit.log to spark's root directory? -- CentOS
    </p>
    <p>
      
    </p>
    <p>
      val&#160;&#160;inputRDD = sc.textFile(&quot;log.txt&quot;)
    </p>
    <p>
      val&#160;&#160;authRDD = inputRDD.filter( line =&gt; line.contains(&quot;auth&quot;))
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436381646868" ID="ID_1346034015" MODIFIED="1436381652047" TEXT="union()">
<node CREATED="1436381676792" ID="ID_99679469" MODIFIED="1436381726954" TEXT="union() is a bit different than filter(), in that it operates on two RDDs instead of one."/>
<node CREATED="1436381730291" ID="ID_412099130" MODIFIED="1436546284840">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example
    </p>
    <p>
      # Maybe just copy /var/log/auth.log&#160;&#160;to&#160;&#160;spark's root directory?
    </p>
    <p>
      # Maybe just copy /var/log/audit/audit.log to spark's root directory
    </p>
    <p>
      
    </p>
    <p>
      val&#160;&#160;inputRDD = sc.textFile(&quot;log.txt&quot;)
    </p>
    <p>
      val&#160;&#160;authRDD = inputRDD.filter( line =&gt; line.contains(&quot;auth&quot;))
    </p>
    <p>
      val&#160;&#160;failRDD = inputRDD.filter( line =&gt; line.contains(&quot;fail&quot;))
    </p>
    <p>
      
    </p>
    <p>
      # union &#25226;&#20841;&#32773;&#21152;&#36215;&#20358;&#20102;
    </p>
    <p>
      val&#160;&#160;badLinesRDD&#160;&#160;= failRDD.union(authRDD)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436381467165" ID="ID_841589151" MODIFIED="1436381468950" TEXT="Action">
<node CREATED="1436546641408" ID="ID_1016680447" MODIFIED="1436546645598" TEXT="count()">
<node CREATED="1436381730291" ID="ID_236538208" MODIFIED="1436546685946">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example
    </p>
    <p>
      # Maybe just copy /var/log/auth.log&#160;&#160;to&#160;&#160;spark's root directory?
    </p>
    <p>
      # Maybe just copy /var/log/audit/audit.log to spark's root directory
    </p>
    <p>
      
    </p>
    <p>
      val&#160;&#160;inputRDD = sc.textFile(&quot;log.txt&quot;)
    </p>
    <p>
      val&#160;&#160;authRDD = inputRDD.filter( line =&gt; line.contains(&quot;auth&quot;))
    </p>
    <p>
      val&#160;&#160;failRDD = inputRDD.filter( line =&gt; line.contains(&quot;fail&quot;))
    </p>
    <p>
      
    </p>
    <p>
      # union &#25226;&#20841;&#32773;&#21152;&#36215;&#20358;&#20102;
    </p>
    <p>
      val&#160;&#160;badLinesRDD&#160;&#160;= failRDD.union(authRDD)
    </p>
    <p>
      
    </p>
    <p>
      println(&quot;Input had &quot; + badLinesRDD.count() + &quot; concerning lines&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436546689842" ID="ID_1561019879" MODIFIED="1436546693360" TEXT="take()">
<node CREATED="1436381730291" ID="ID_1086963940" MODIFIED="1436546811612">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example
    </p>
    <p>
      # Maybe just copy /var/log/auth.log&#160;&#160;to&#160;&#160;spark's root directory?
    </p>
    <p>
      # Maybe just copy /var/log/audit/audit.log to spark's root directory
    </p>
    <p>
      
    </p>
    <p>
      val&#160;&#160;inputRDD = sc.textFile(&quot;log.txt&quot;)
    </p>
    <p>
      val&#160;&#160;authRDD = inputRDD.filter( line =&gt; line.contains(&quot;auth&quot;))
    </p>
    <p>
      val&#160;&#160;failRDD = inputRDD.filter( line =&gt; line.contains(&quot;fail&quot;))
    </p>
    <p>
      
    </p>
    <p>
      # union &#25226;&#20841;&#32773;&#21152;&#36215;&#20358;&#20102;
    </p>
    <p>
      val&#160;&#160;badLinesRDD&#160;&#160;= failRDD.union(authRDD)
    </p>
    <p>
      
    </p>
    <p>
      println(&quot;Input had &quot; + badLinesRDD.count() + &quot; concerning lines&quot;)
    </p>
    <p>
      println(&quot;Here are 10 examples:&quot;)
    </p>
    <p>
      
    </p>
    <p>
      # take() &#26371;&#21462;&#20986;&#37096;&#20998;
    </p>
    <p>
      # &#21462;&#20986;&#20854;&#20013; 10 &#20491;, &#23559;&#32080;&#26524;&#36664;&#20986;
    </p>
    <p>
      badLinesRDD.take(10).foreach(println)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436546880442" ID="ID_1055737798" MODIFIED="1436546888218" TEXT="collect()">
<node CREATED="1436546889715" ID="ID_1112911629" MODIFIED="1436546931719" TEXT="Keep in mind that your entire dataset must fit in memory on a single machine to use collect() on it, so collect() shouldn&#x2019;t be used on large datasets."/>
</node>
</node>
</node>
</node>
<node CREATED="1436048850831" ID="ID_1336593445" MODIFIED="1436048852073" POSITION="left" TEXT="Notes">
<node CREATED="1436204994939" ID="ID_392463122" MODIFIED="1436204999671" TEXT="SparkUI">
<node CREATED="1436048832688" ID="ID_220153767" MODIFIED="1436048841690" TEXT="Listen port">
<node CREATED="1436048844136" ID="ID_193847520" MODIFIED="1436048846041" TEXT="4040"/>
</node>
</node>
<node CREATED="1436205013968" ID="ID_1031443401" MODIFIED="1436205031573" TEXT="Less output when start spark-shell">
<node CREATED="1436205038670" ID="ID_470825166" MODIFIED="1436205239091">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      cp&#160;&#160;conf/log4j.properties.template&#160;&#160;&#160;&#160;conf/log4j.properties
    </p>
    <p>
      
    </p>
    <p>
      vi&#160;&#160;conf/log4j.properties
    </p>
    <p>
      <font color="#cc0000">find the following line:</font>
    </p>
    <p>
      <font color="#003399">log4j.rootCategory=INFO, console</font>
    </p>
    <p>
      <font color="#cc0000">to</font>
    </p>
    <p>
      <font color="#003399">log4j.rootCategory=</font><font color="#cc0000">WARN</font><font color="#003399">, console</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436048858958" ID="ID_179873466" MODIFIED="1436048874253" TEXT="use jps to check"/>
<node CREATED="1436050065993" ID="ID_1831470655" MODIFIED="1436050068581" TEXT="IDE">
<node CREATED="1436050069758" ID="ID_487778639" MODIFIED="1436050085434" TEXT="IntelliJ IDEA">
<node CREATED="1436050086833" ID="ID_490483322" MODIFIED="1436050099551" TEXT="Download">
<node CREATED="1436050100976" ID="ID_1126004618" MODIFIED="1436050120474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://confluence.jetbrains.com/display/IntelliJIDEA/Previous+IntelliJ+IDEA+Releases
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436991935602" ID="ID_1612763901" MODIFIED="1436991942502" TEXT="Codebox">
<node CREATED="1436991944330" ID="ID_272425931" MODIFIED="1436991955094" TEXT="Web-base Cloud IDE">
<node CREATED="1436991959223" ID="ID_1091222800" MODIFIED="1436991971542" TEXT="https://github.com/CodeboxIDE/codebox"/>
<node CREATED="1436991972013" ID="ID_791250054" MODIFIED="1436991980784" TEXT="https://www.codebox.io/"/>
</node>
</node>
</node>
<node CREATED="1436804083384" FOLDED="true" ID="ID_1127946646" MODIFIED="1436905705262" TEXT="sbt">
<node CREATED="1436804089445" ID="ID_1740837495" MODIFIED="1436804106124" TEXT="http://www.scala-sbt.org/release/tutorial/index.html"/>
<node CREATED="1436816038151" ID="ID_1098810120" MODIFIED="1436816085993" TEXT="&#x8981;&#x5b78;spark &#x597d;&#x50cf;&#x8981;&#x6703;scala&#x958b;&#x767c;&#x9084;&#x6709;sbt&#x4f86;&#x7de8;&#x8b6f;jar&#x6a94;&#x6848;"/>
<node CREATED="1436817026844" ID="ID_271509934" MODIFIED="1436817033270" TEXT="hello, world">
<node CREATED="1436817296228" ID="ID_1657602984" MODIFIED="1436817310704" TEXT="&#x53c3;&#x8003; http://www.scala-sbt.org/release/tutorial/Hello.html"/>
<node CREATED="1436817035979" ID="ID_1273413153" MODIFIED="1436817085134">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31777;&#21934;&#30340; hello, world &#27284;&#26696;
    </p>
    <p>
      
    </p>
    <p>
      object Hi { def main(args: Array[String]) = println(&quot;Hi!&quot;) }
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436817124514" ID="ID_11945260" MODIFIED="1436817282150">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#34249;&#30001; sbt &#25351;&#20196;&#36914;&#21040;&#20114;&#21205;&#30028;&#38754;( &#31532;&#19968;&#27425;&#26371;&#27604;&#36611;&#20037;&#160; )
    </p>
    <p>
      $sbt
    </p>
    <p>
      
    </p>
    <p>
      &#22312;&#30028;&#38754;&#19979;&#22519;&#34892;
    </p>
    <p>
      &gt;run
    </p>
    <p>
      
    </p>
    <p>
      &#38626;&#38283;&#36664;&#20837; exit
    </p>
    <p>
      &gt;exit
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436817383627" ID="ID_30476965" MODIFIED="1436817392268" TEXT="build.sbt">
<node CREATED="1436817394680" ID="ID_1774241023" MODIFIED="1436817512062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      build&#30340;&#30456;&#38364;&#35373;&#23450;
    </p>
    <p>
      &#22914;&#26524;&#35201;&#25171;&#21253; package
    </p>
    <p>
      &#33267;&#23569;&#22312; build.sbt &#38656;&#35201; name&#160;&#160;&#33287; version
    </p>
    <p>
      
    </p>
    <p>
      &#21443;&#32771;&#31684;&#20363;
    </p>
    <p>
      lazy val root = (project in file(&quot;.&quot;)).
    </p>
    <p>
      &#160;&#160;settings(
    </p>
    <p>
      &#160;&#160;&#160;&#160;name := &quot;hello&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;version := &quot;1.0&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;scalaVersion := &quot;2.11.4&quot;
    </p>
    <p>
      &#160;&#160;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436815889719" ID="ID_1635516661" MODIFIED="1436815899250" TEXT="&#x57fa;&#x790e;&#x76ee;&#x9304;">
<node CREATED="1436815901160" ID="ID_462593477" MODIFIED="1436816001521">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21253;&#21547;&#38917;&#30446;&#30340;&#30446;&#37636;
    </p>
    <p>
      &#26377; source code &#33287;&#37197;&#32622;&#35373;&#23450;&#30340;&#30446;&#37636;
    </p>
    <p>
      &#20363;&#22914;
    </p>
    <p>
      hello/build.sbt
    </p>
    <p>
      hello/hw.scala
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436816012047" ID="ID_570769151" MODIFIED="1436816019448" TEXT="&#x76ee;&#x9304;&#x7d50;&#x69cb;">
<node CREATED="1436816091874" ID="ID_497908467" MODIFIED="1436816151984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      src/
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_497908467" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1506604912" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_497908467" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1506604912" SOURCE="ID_497908467" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1436816120215" ID="ID_1393617898" MODIFIED="1436816159375" TEXT="main/">
<node CREATED="1436816126871" ID="ID_1955283138" MODIFIED="1436816177096">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      resources/
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816204731" ID="ID_461732936" MODIFIED="1436816294100" TEXT="files to include in main jar here"/>
</node>
<node CREATED="1436816135520" ID="ID_1577521059" MODIFIED="1436816191259" TEXT="scala/">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816228422" ID="ID_1577046152" MODIFIED="1436816279792" TEXT="main Scala sources"/>
</node>
<node CREATED="1436816192095" ID="ID_953235018" MODIFIED="1436816194398" TEXT="java/">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816241986" ID="ID_1272361680" MODIFIED="1436816279788" TEXT="main Java sources"/>
</node>
</node>
<node CREATED="1436816120215" ID="ID_222245185" MODIFIED="1436816322917" TEXT="test/">
<arrowlink DESTINATION="ID_222245185" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1819053899" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_222245185" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1819053899" SOURCE="ID_222245185" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1436816126871" ID="ID_564932791" MODIFIED="1436816177096">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      resources/
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816204731" ID="ID_389097438" MODIFIED="1436816345556" TEXT="files to include in test jar here"/>
</node>
<node CREATED="1436816135520" ID="ID_514158117" MODIFIED="1436816191259" TEXT="scala/">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816228422" ID="ID_691140034" MODIFIED="1436816355541" TEXT="test Scala sources"/>
</node>
<node CREATED="1436816192095" ID="ID_1319523387" MODIFIED="1436816194398" TEXT="java/">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816241986" ID="ID_1082351281" MODIFIED="1436816372053" TEXT="test Java sources"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1436816393359" ID="ID_1430126943" MODIFIED="1436816437742" TEXT="src/ &#x4e2d;&#x5176;&#x4ed6;&#x7684;&#x76ee;&#x9304;&#x6703;&#x88ab;&#x5ffd;&#x7565;, &#x6240;&#x6709;&#x7684;&#x96b1;&#x85cf;&#x76ee;&#x9304;&#x4e5f;&#x6703;&#x88ab;&#x5ffd;&#x7565;"/>
</node>
<node CREATED="1436817939697" ID="ID_514423640" MODIFIED="1436818976892" TEXT="&#x6279;&#x6b21;&#x6a21;&#x5f0f;( &#x975e;&#x4e92;&#x52d5; )">
<node CREATED="1436817967270" ID="ID_1362218625" MODIFIED="1436818044612">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      $sbt&#160;&#160;compile
    </p>
    <p>
      
    </p>
    <p>
      &#36889;&#37002;&#26377;&#27880;&#24847;&#21040;, &#22240;&#28858;&#20043;&#21069;&#160;&#160;build.sbt &#35373;&#23450;&#30340;&#38364;&#20418;
    </p>
    <p>
      &#25152;&#20197;&#32232;&#20986;&#20358;&#30340; scala &#29256;&#26412;&#26371;&#20381;&#29031; build.sbt &#20839;&#30340;&#35373;&#23450;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436818144081" ID="ID_479479989" MODIFIED="1436818148586" TEXT="&#x5e38;&#x7528;&#x547d;&#x4ee4;">
<node CREATED="1436818149666" ID="ID_603311660" MODIFIED="1436818336624" TEXT="clean">
<node CREATED="1436818392887" ID="ID_820099972" MODIFIED="1436818417200" TEXT="&#x522a;&#x9664;&#x6240;&#x6709;&#x5728; target &#x76ee;&#x9304;&#x4e0b;&#x7522;&#x751f;&#x7684;&#x6587;&#x4ef6;"/>
</node>
<node CREATED="1436818338173" ID="ID_1490235283" MODIFIED="1436818341858" TEXT="compile">
<node CREATED="1436818419082" ID="ID_1776170247" MODIFIED="1436818453531" TEXT="&#x7de8;&#x8b6f; source code ( src/main/scala &#x8207; src/main/java &#x76ee;&#x9304;&#x4e0b; )"/>
</node>
<node CREATED="1436818342296" ID="ID_1892065667" MODIFIED="1436818344467" TEXT="test">
<node CREATED="1436818459539" ID="ID_1207076541" MODIFIED="1436818473996" TEXT="&#x7de8;&#x8b6f;&#x8207;&#x57f7;&#x884c;&#x6240;&#x6709;&#x6e2c;&#x8a66;"/>
</node>
<node CREATED="1436818345281" ID="ID_1840889658" MODIFIED="1436818348669" TEXT="console">
<node CREATED="1436818475755" ID="ID_1675844573" MODIFIED="1436818625906">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36914;&#21040; scala &#20114;&#21205;&#30028;&#38754;
    </p>
    <p>
      &#25171; :quit&#38626;&#38283;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436818349359" ID="ID_1549462881" MODIFIED="1436818363731" TEXT="run &lt;&#x53c3;&#x6578;&gt;*">
<node CREATED="1436818645405" ID="ID_1380691446" MODIFIED="1436818657006" TEXT="&#x57f7;&#x884c; main class"/>
</node>
<node CREATED="1436818364373" ID="ID_1320882403" MODIFIED="1436818369230" TEXT="package">
<node CREATED="1436818662959" ID="ID_1200406050" MODIFIED="1436818809977">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24314;&#31435; jar &#27284;&#26696;
    </p>
    <p>
      &#26681;&#25818; src/main/resources&#33287; src/main/scala &#21450; src/main/java
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436818369673" ID="ID_621493496" MODIFIED="1436818385754" TEXT="help &lt;&#x547d;&#x4ee4;&gt;"/>
<node CREATED="1436818386208" ID="ID_323656375" MODIFIED="1436818389943" TEXT="reload">
<node CREATED="1436818818655" ID="ID_30354726" MODIFIED="1436818842300" TEXT="reload build.sbt, project/*.scala, project/*.sbt"/>
</node>
</node>
</node>
<node CREATED="1436889504342" ID="ID_185028090" MODIFIED="1436889516121" TEXT="Hands-on Exercises">
<node CREATED="1436889518921" ID="ID_1425464947" MODIFIED="1436889523068" TEXT="ampcamp">
<node CREATED="1436889524560" ID="ID_841066148" MODIFIED="1436889536314" TEXT="http://ampcamp.berkeley.edu/big-data-mini-course/"/>
</node>
</node>
<node CREATED="1436905318215" ID="ID_1710109855" MODIFIED="1436905327443" TEXT="Online Course">
<node CREATED="1436905328765" ID="ID_1539116306" MODIFIED="1436905332184" TEXT="edx">
<node CREATED="1436905332974" ID="ID_883372820" MODIFIED="1436905343909" TEXT="https://www.edx.org/course/introduction-big-data-apache-spark-uc-berkeleyx-cs100-1x"/>
</node>
</node>
<node CREATED="1436905411553" ID="ID_1007766015" MODIFIED="1436905418001" TEXT="docker &#x76f8;&#x95dc;">
<node CREATED="1436905419051" ID="ID_151677720" MODIFIED="1436905512101">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Spark Tawan &#31038;&#32676;&#25104;&#21729;github
    </p>
    <p>
      https://github.com/youngce/hadoop_cluster_on_centos_docker
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436905545926" ID="ID_254710918" MODIFIED="1436905553026" TEXT="scala &#x76f8;&#x95dc;">
<node CREATED="1436905554276" ID="ID_1803953105" MODIFIED="1436905578821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Scala &#35506;&#22530;
    </p>
    <p>
      http://twitter.github.io/scala_school/zh_cn/index.html
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436985576096" ID="ID_32970146" MODIFIED="1436985583287" POSITION="left" TEXT="Running on a Cluster">
<node CREATED="1436985584695" ID="ID_1246048998" MODIFIED="1436985590560" TEXT="Driver">
<node CREATED="1436985714041" ID="ID_1174292111" MODIFIED="1436985742380" TEXT="The driver is the process where the main() method of your program runs."/>
<node CREATED="1436986620752" ID="ID_376431566" MODIFIED="1436986659779" TEXT="The driver program contacts the cluster manager to ask for resources to launch executors."/>
<node CREATED="1436986819652" ID="ID_1588543224" MODIFIED="1436986870324" TEXT="If the driver&apos;s main() method exits or it calls SparkContext.stop(), it will terminate the executors and release resources from the cluster manager."/>
<node CREATED="1436985672303" ID="ID_1593633964" MODIFIED="1436985697706" TEXT="2 duties when the driver runs">
<node CREATED="1436985616436" ID="ID_1340551519" MODIFIED="1436985628110" TEXT="Converting a user program into tasks"/>
<node CREATED="1436985628855" ID="ID_1036571721" MODIFIED="1436985641415" TEXT="Scheduling task on executors"/>
</node>
</node>
<node CREATED="1436985852534" ID="ID_174440860" MODIFIED="1436985865245" TEXT="Executors">
<node CREATED="1436985978275" ID="ID_935936646" MODIFIED="1436986012466" TEXT="Spark executors are worker processes responsible for running the individual tasks in a given Spark job."/>
<node CREATED="1436986070271" ID="ID_1416698533" MODIFIED="1436986075271" TEXT="2 roles">
<node CREATED="1436986076209" ID="ID_37040837" MODIFIED="1436986108591" TEXT="Run the tasks that make up the applicaton and return results to the driver"/>
<node CREATED="1436986109168" ID="ID_1324471468" MODIFIED="1436986173037" TEXT="Provide in-memory storage for RDDs that are cached by user programs, through a service called the Block Manager that lives within each executor."/>
</node>
</node>
<node CREATED="1436986209676" ID="ID_330345940" MODIFIED="1436986214965" TEXT="Cluster Manager">
<node CREATED="1436986265667" ID="ID_683311076" MODIFIED="1436986296791" TEXT="The cluster manager is a pluggable component in Spark."/>
<node CREATED="1436986686595" ID="ID_940821867" MODIFIED="1436986717027" TEXT="The cluster manager launches executors on befhalf of the driver program"/>
</node>
<node CREATED="1436985865898" ID="ID_405202622" MODIFIED="1436985874820" TEXT="task">
<node CREATED="1436985876334" ID="ID_1973943862" MODIFIED="1436985893088" TEXT="Tasks are the smallest unit of work in Spark"/>
<node CREATED="1436986782008" ID="ID_978625057" MODIFIED="1436986804007" TEXT="Tasks are run on executor processes to compute and save results."/>
</node>
<node CREATED="1436986423012" ID="ID_1094182216" MODIFIED="1436986436231" TEXT="Launching a program">
<node CREATED="1436986539410" ID="ID_187467475" MODIFIED="1436986543724" TEXT="spark-submit">
<node CREATED="1436986437223" ID="ID_980601719" MODIFIED="1436986469081" TEXT="Spark provides a single script you can use to submit your program to it called spark-submit."/>
<node CREATED="1436986551638" ID="ID_1140056083" MODIFIED="1436986570117" TEXT="The user submits an application using spark-submit"/>
<node CREATED="1436986573124" ID="ID_771924431" MODIFIED="1436986606530" TEXT="spark-submit lanuches the driver program and invokes the main() method specified by the user."/>
<node CREATED="1436987091454" ID="ID_472406663" MODIFIED="1436987175715">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      submitting an application with extra arguments
    </p>
    <p>
      
    </p>
    <p>
      bin/spark-submit&#160;&#160;--master&#160;&#160;spark://host:7077&#160;&#160;--executor-memory&#160;&#160;10g&#160; my_script.py
    </p>
  </body>
</html></richcontent>
<node CREATED="1436987181315" ID="ID_321933946" MODIFIED="1436987282415">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      --master flag specifies a cluster URL to connect to.
    </p>
    <p>
      
    </p>
    <p>
      Possible values for the --master flag in spark-submit
    </p>
  </body>
</html></richcontent>
<node CREATED="1436987284439" ID="ID_443728069" MODIFIED="1436987300823" TEXT="spark://host:port">
<node CREATED="1436987302910" ID="ID_123719179" MODIFIED="1436987349835" TEXT="Connect to a Spark Standalone cluster at the specified port. By default Spark Standalone masters use port 7077."/>
</node>
<node CREATED="1436987351443" ID="ID_201775995" MODIFIED="1436987362219" TEXT="mesos://host:port">
<node CREATED="1436987302910" ID="ID_749140034" MODIFIED="1436987425172" TEXT="Connect to a Mesos cluster at the specified port. By default Mesos master use port 5050."/>
</node>
<node CREATED="1436987432917" ID="ID_742682057" MODIFIED="1436987435123" TEXT="yarn">
<node CREATED="1436987439645" ID="ID_1357056066" MODIFIED="1436987449242" TEXT="Connect to a YARN cluster"/>
</node>
<node CREATED="1436987450666" ID="ID_981070943" MODIFIED="1436987453644" TEXT="local">
<node CREATED="1436987454057" ID="ID_1173376181" MODIFIED="1436987463666" TEXT="Run in local mode with a single core"/>
</node>
<node CREATED="1436987464707" ID="ID_1331295216" MODIFIED="1436987471841" TEXT="local[N]">
<node CREATED="1436987473915" ID="ID_1179807888" MODIFIED="1436987487537" TEXT="Run in local mode with N cores"/>
</node>
<node CREATED="1436987488867" ID="ID_1827264658" MODIFIED="1436987496832" TEXT="local[*]">
<node CREATED="1436987497455" ID="ID_849177342" MODIFIED="1436987517415" TEXT="Run in local mode and use as many cores as the machine has."/>
</node>
</node>
</node>
<node CREATED="1436987674797" ID="ID_1263693020" MODIFIED="1436987782132">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      General format for spark-submit
    </p>
    <p>
      
    </p>
    <p>
      bin/spark-submit&#160; <font color="#0033cc">[ options ]</font>&#160; <font color="#ff0033">&lt; app jar&#160;&#160;|&#160;&#160;python file &gt;</font>&#160;&#160;[ app options ]
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1436987853007" ID="ID_1807733177" MODIFIED="1436987866486" TEXT="Common flags for spark-submit">
<node CREATED="1436987867561" ID="ID_347795017" MODIFIED="1436987872843" TEXT="--master">
<node CREATED="1436987873246" ID="ID_1648014154" MODIFIED="1436987892621" TEXT="The cluster manager to connect to"/>
</node>
<node CREATED="1436987893745" ID="ID_1001535112" MODIFIED="1436987900419" TEXT="--deploy-mode">
<node CREATED="1436987901027" ID="ID_1942860191" MODIFIED="1436988065292">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      launch the driver program locally (&quot;<font color="#0033cc">client</font>&quot;) or cluster (&quot;<font color="#ff0033">cluster</font>&quot;)
    </p>
    <p>
      client mode - run on the same machine.
    </p>
    <p>
      Cluster mode - run on worker node in cluster.
    </p>
    <p>
      <font color="#0033cc">The default is client mode.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1436988074590" ID="ID_787231800" MODIFIED="1436988076847" TEXT="--class">
<node CREATED="1436988077480" ID="ID_1830978104" MODIFIED="1436988099695" TEXT="The &quot;main&quot; class of your application"/>
</node>
<node CREATED="1436988102037" ID="ID_194720769" MODIFIED="1436988105218" TEXT="--name">
<node CREATED="1436988105827" ID="ID_1713494638" MODIFIED="1436988136277" TEXT="A human-readable name for your application. Display in SparkUI"/>
</node>
<node CREATED="1436988137732" ID="ID_1355090351" MODIFIED="1436988141636" TEXT="--jars">
<node CREATED="1436988142096" ID="ID_96502505" MODIFIED="1436988169047" TEXT="A list of JAR files to upload and place on the classpath of your application."/>
</node>
<node CREATED="1436988177612" ID="ID_877205686" MODIFIED="1436988180763" TEXT="--files">
<node CREATED="1436988181364" ID="ID_1839010178" MODIFIED="1436988248650">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A list of files to be placed in the working directory of your application.
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0033">This can be used for data files that you want to distribute to each node.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1436988253445" ID="ID_1754602043" MODIFIED="1436988258526" TEXT="--py-files">
<node CREATED="1436988258988" ID="ID_31586564" MODIFIED="1436988307301" TEXT="A list of files to be added to the PYTHONEPATH of your application."/>
</node>
<node CREATED="1436988310247" ID="ID_1859947773" MODIFIED="1436988328128" TEXT="--executor-memory">
<node CREATED="1436988330462" ID="ID_1899588953" MODIFIED="1436988393066" TEXT="The amount of memory to use for executors, in bytes.  Suffixes can be used to specify larger quantities such as &quot;512m&quot; or &quot;15g&quot;"/>
</node>
<node CREATED="1436988401986" ID="ID_477801504" MODIFIED="1436988410448" TEXT="--driver-memory">
<node CREATED="1436988330462" ID="ID_1621422247" MODIFIED="1436988472481" TEXT="The amount of memory to use for driver process, in bytes.  Suffixes can be used to specify larger quantities such as &quot;512m&quot; or &quot;15g&quot;"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
