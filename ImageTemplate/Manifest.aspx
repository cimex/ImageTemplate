<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>
<%
    Context.Response.ContentType = "text/cache-manifest";

    Context.Response.Write("CACHE MANIFEST");
    Context.Response.Write("\n\n\n\n");
    
    
    Context.Response.Write("CACHE:");
    Context.Response.Write("\n");
    Context.Response.Write("Default.aspx");
    Context.Response.Write("\n");
    Context.Response.Write("TouchScreen.aspx");
    Context.Response.Write("\n");

    string rootFolder = Server.MapPath(".");

    String[] cssarray = Directory.GetFiles(rootFolder + "/css/");
    if (cssarray.Length > 0)
    {
        foreach (String fileName in cssarray)
        {
            FileAttributes attributes = File.GetAttributes(fileName);
            if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
            {
                Context.Response.Write("css/" + Path.GetFileName(fileName));
                Context.Response.Write("\n");
            }
        }
    }

    String[] cssimagearray = Directory.GetFiles(rootFolder + "/css/images/");
    if (cssimagearray.Length > 0)
    {
        foreach (String fileName in cssimagearray)
        {
            FileAttributes attributes = File.GetAttributes(fileName);
            if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
            {
                Context.Response.Write("css/images/" + Path.GetFileName(fileName));
                Context.Response.Write("\n");
            }
        }
    }



    String[] scriptarray = Directory.GetFiles(rootFolder + "/Scripts/");
    if (scriptarray.Length > 0)
    {
        foreach (String fileName in scriptarray)
        {
            FileAttributes attributes = File.GetAttributes(fileName);
            if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
            {
                Context.Response.Write("Scripts/" + Path.GetFileName(fileName));
                Context.Response.Write("\n");
            }
        }
    }

    String[] imagesarray = Directory.GetFiles(rootFolder + "/images/");
    if (imagesarray.Length > 0)
    {
        foreach (String fileName in imagesarray)
        {
            FileAttributes attributes = File.GetAttributes(fileName);
            if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
            {
                Context.Response.Write("images/" + Path.GetFileName(fileName));
                Context.Response.Write("\n");
            }
        }
    }
    
    String[] array = Directory.GetFiles(rootFolder + "/add_image_here/");
    if (array.Length > 0)
    {
        foreach (String fileName in array)
        {
            FileAttributes attributes = File.GetAttributes(fileName);
            if ((attributes & FileAttributes.Hidden) != FileAttributes.Hidden)
            {
                Context.Response.Write("add_image_here/" + HttpUtility.UrlPathEncode(Path.GetFileName(fileName)));
                Context.Response.Write("\n");
            }
        }
    }
    
    
    
    Context.Response.Write("\n");
    Context.Response.Write("\n");
    Context.Response.Write("FALLBACK:");
    Context.Response.Write("\n");
    Context.Response.Write("images/ images/notcached.jpg");
    Context.Response.Write("\n");
    Context.Response.Write("add_image_here/ images/notcached.jpg");
    
    
%>