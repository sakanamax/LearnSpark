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
<node CREATED="1436041124196" ID="ID_1414555539" MODIFIED="1436041129884" POSITION="right" TEXT="RDD">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</node>
</node>
</node>
</map>
