//--------------------------------------------------------------
// 
// C#
// 

public void ProcessRequest(HttpContext ctx) {

  string callback = string.Empty,
         json = string.Empty,
         item = string.Empty;

  int pageIndex = 0;

  List<OrderComment> orderList = null;

  callback = ctx.Request.QueryString["callback"];

  pageIndex = string.IsNullOrEmpty(ctx.Request.QueryString["pi"]) ? 1 : Convert.ToInt32(ctx.Request.QueryString["pi"]);

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
