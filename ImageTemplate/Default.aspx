<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
    <!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
        <!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
            <!--[if (gte IE 9)|!(IE)]><!-->
                <html lang="en" manifest="Manifest.aspx">
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
                    <!-- CSS ================================================== -->
                    <link rel="stylesheet" href="css/base.css">
                    <link rel="stylesheet" href="css/skeleton.css">
                    <link rel="stylesheet" href="css/layout.css">
                    <!-- Favicons ================================================== -->
                    <link rel="shortcut icon" href="images/favicon.ico">
                    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
                    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
                    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
                    <style type="text/css">
                        div.container {
                            padding-top: 60px;
                        }

                        #logo {
                            margin-bottom: 30px;
                            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                            letter-spacing: -1px;
                            font-weight: bold;
                        }

                        nav {
                            position: fixed;
                            width: 160px;
                        }

                        nav ul {
                            float: right;
                        }

                        nav ul li {
                            text-align: right;
                            display: block;
                            margin-bottom: 10px;
                        }

                        nav ul li a, nav ul li a:visited, nav ul li a:active {
                            font-size: 14px;
                            color: #555;
                            text-decoration: none;
                            font-weight: bold;
                            padding: 3px 8px 4px;
                            position: relative;
                            right: -8px;
                            -moz-border-radius: 2px;
                            -webkit-border-radius: 2px;
                            border-radius: 2px;
                        }

                        nav ul li a:hover, nav ul li a:focus {
                            color: #222;
                        }

                        hr.large {
                            border: none;
                            height: 8px;
                            background: #ebebeb;
                            margin: 50px 0;
                        }
			/* Mobile */

                        @media only screen and (max-width: 767px) {
                            header h1 {
                                font-size: 34px;
                                line-height: 37px;
                            }

                            nav {
                                position: relative;
                            }

                            nav ul {
                                display: none;
                            }

                            #logo {
                                text-align: left;
                            }

                            nav .button {
                                display: none;
                            }

                            div#uvTab {
                                display: none !important;
                            }
                        }
                            /* Mobile Landscape */

                        @media only screen and (min-width: 480px) and (max-width: 767px) {
                            nav ul {
                                display: none;
                            }

                            div#uvTab {
                                display: none !important;
                            }
                        }
                            /* Non 960 */

                        @media only screen and (max-width: 959px) {
                            #logo {
                                font-size: 21px;
                                margin-bottom: 15px;
                            }

                            nav .button {
                                padding: 9px 20px 11px;
                            }
                        }
                            /* iPad Portrait/Browser */

                        @media only screen and (min-width: 768px) and (max-width: 959px) {
                            nav {
                                width: 124px;
                            }
                        }
                            /* Mobile/Browser */

                        @media only screen and (max-width: 767px) {
                            
                            
                            
                        }
                            /* Mobile Landscape/Browser */

                        @media only screen and (min-width: 480px) and (max-width: 767px) {
                            
                            
                            
                        }
                            /* Anything smaller than standard 960 */

                        @media only screen and (max-width: 959px) {
                            
                            
                            
                        }
                            /* iPad Portrait Only */

                        @media only screen and (min-width: 768px) and (max-width: 959px) and (max-device-width: 1000px) {
                            
                            
                            
                        }
                            /* Mobile Only */

                        @media only screen and (max-width: 767px) and (max-device-width: 1000px) {
                            
                            
                            
                        }
                            /* Mobile Landscape Only */

                        @media only screen and (min-width: 480px) and (max-width: 767px) and (max-device-width: 1000px) {
                            
                            
                            
                        }
                            /* Anything smaller than standard 960 on a device */

                        @media only screen and (max-width: 959px) and (max-device-width: 1000px) {
				
                            
                            
                            
                        }
                    </style>
                    <script src="Scripts/jquery-1.6.2.min.js" type="text/javascript"> </script>
		
                </head>
                <body>

                    <div class="container">
                    <h3 id="logo"><img src="images/logo.jpg"/></h3>
                    <p>
                    <a href="TouchScreen.aspx"><span class="label important">Click here for gallery...</span></a>
                    </p>
                    
                        <div class="sixteen columns">

                            
                                
                                
                                <ul>
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
                                        <a href="add_image_here/<%=Path.GetFileName(fileName)%>"><%=Path.GetFileName(fileName)%></a>
                                    </li>
                                    <%
                                                }
                                            }
                                        }
                                    %>
                                </ul>
                            
                            &nbsp;
                        </div>
                    </div>
			

                    
                    <div>
      
                    </div>
                    
                </body>
                </html>