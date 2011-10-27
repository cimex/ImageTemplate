<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
    <!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
        <!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
            <!--[if (gte IE 9)|!(IE)]><!-->
                <html lang="en"  manifest="Manifest.aspx">
            <!--<![endif]-->
                <head>
                    <!-- Basic Page Needs
                        ================================================== -->
                    <meta charset="utf-8">
                    <title>Cimex Image Previewer</title>
                    <meta name="description" content="a tool to generate random placeholder user data. Whilst Lorem Ipsom can deal with your empty static content area, user driven websites needs higher standard of user data to simulate. Having data in early in a new website's life cycle will increase development productivity by a long way.">
                    <meta name="author" content="Timothy Yip">
                    <!--[if lt IE 9]>
                        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"> </script>
                    <![endif]-->
                    <!-- Mobile Specific Metas
                        ================================================== -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                    <meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
                    <!-- CSS
                        ================================================== -->
                    <link rel="stylesheet" href="css/touch-styles.css">
                    <link rel="stylesheet" href="css/photoswipe.css">
                 
                    <!-- Favicons
                        ================================================== -->
                    <link rel="shortcut icon" href="images/favicon.ico">
                    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
                    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
                    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
                    
                    <script src="Scripts/jquery-1.6.2.min.js" type="text/javascript"> </script>
                 
                    <script src="Scripts/klass.min.js" type="text/javascript"> </script>
                    <script src="Scripts/code.photoswipe.jquery-2.1.6.min.js" type="text/javascript"> </script>
                    
                    <script type="text/javascript">
		                $(document).ready(function() {

		                    var myPhotoSwipe = $("#Gallery a").photoSwipe({ enableMouseWheel: true, enableKeyboard: true });

		                });
                   </script>
                </head>
                <body>
                    <div id="MainContent">

                        <div class="page-content">
                            <h3 id="logo"><img src="images/logo.jpg"/></h3>
                    <a href="Default.aspx">Back to file listing...</a>
                        </div>
	
                        <ul id="Gallery" class="gallery">
                            <%
                                string rootFolder = Server.MapPath(".");
                                String[] array = Directory.GetFiles(rootFolder + "/add_image_here/");
                                if (array.Length > 0)
                                {
                                    foreach (String fileName in array)
                                    {
                                        FileAttributes attributes = File.GetAttributes(fileName);
                                        if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
                                        {
%>
                            
                            <li>
                                <a href="add_image_here/<%=Path.GetFileName(fileName)%>"><img src="add_image_here/<%=Path.GetFileName(fileName)%>" alt="<%=Path.GetFileName(fileName)%>" width="100px"/></a>
                            </li>
                            <%
                                        }
                                    }
                                }
%>
                        </ul>
                            
                     
                    </div>
            
                </body>
                </html>