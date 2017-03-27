import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

class NewsFeed {
  void setup() {
    //translate(50,50);
    size(200, 200);
    textSize(10);
    display();
  }
  void display()
  {
    String url = "https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=0513a85f1e19418a8e321b35111ab9a2";

    try
    {
      URL obj = new URL(url);
      HttpURLConnection con = (HttpURLConnection) obj.openConnection();
      con.setRequestMethod("GET");
      int responseCode = con.getResponseCode();
      System.out.println("\nSending 'GET' request to URL : " + url);
      System.out.println("Response Code : " + responseCode);

      BufferedReader in = new BufferedReader(
        new InputStreamReader(con.getInputStream()));
      StringBuffer response = new StringBuffer();
      JSONObject json = new JSONObject(in);
      JSONArray y = json.getJSONArray("articles");
      for (int i=0; i<y.size(); i++) {
        String u = y.getJSONObject(i).getString("description");
        response.append(u + "\n");
      }
      fill(0);
      text(response.toString(), 10, 50);
    }
    catch(Exception e) {
      e.printStackTrace();
    }
  }
}