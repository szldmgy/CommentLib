//--------------------------------------------------------------
// 
// Handler(.ashx file)
// 

public void ProcessRequest(HttpContext ctx) {

  string callback = string.Empty,
         json = string.Empty;

  var items = new StringBuilder();

  int pageIndex = 0;

  callback = ctx.Request.QueryString["callback"];
  
  pageIndex = string.IsNullOrEmpty(ctx.Request.QueryString["arg"]) ? 1 : int.Parse(ctx.Request.QueryString["arg"]);

  json = "{" +
           "\"list\":[" + json + "]," +
           "\"item\":\"" + item + "\"," +
           "\"item\":\"" + item + "\"" +
         "}";
  
  json = callback + "(" + json + ")";

  ctx.Response.ContentType = "application/x-javascript";
  ctx.Response.HeaderEncoding = Encoding.UTF8;
  ctx.Response.ContentEncoding = Encoding.UTF8;
  ctx.Response.Write(json);
}
