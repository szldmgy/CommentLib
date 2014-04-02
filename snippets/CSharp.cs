//--------------------------------------------------------------
// 
// Handler(.ashx file)
// 

public void ProcessRequest(HttpContext ctx) {

    string callback = string.Empty,
           json     = string.Empty;

    StringBuilder items = new StringBuilder();

    int arg = 0;

    callback = ctx.Request.QueryString["callback"];

    arg = string.IsNullOrEmpty(ctx.Request.QueryString["arg"]) ? 
          1 : int.Parse(ctx.Request.QueryString["arg"]);

    json = "{" +
               "\"list\":["  + json + "]," +
               "\"item\":\"" + item + "\"," +
               "\"item\":\"" + item + "\"" +
           "}";

    json = callback + "(" + json + ")";

    ctx.Response.ContentType = "application/x-javascript";
    ctx.Response.HeaderEncoding = Encoding.UTF8;
    ctx.Response.ContentEncoding = Encoding.UTF8;
    ctx.Response.Write(json);
}

//--------------------------------------------------------------
// 
// Format DateTime, get month, day & day of week.
// 

string dateString = DateTime.Now.ToString("MM/dd ddd"); // => 04/02 周三

