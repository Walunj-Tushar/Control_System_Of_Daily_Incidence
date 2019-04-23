package com;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
public class sendSMS {
	public String sendSms(String id , String date, String stime, String etime, String location,String pincode,String contact) {
		try {
			// Construct data
			String user = "username=" + "kiranwav@gmail.com";
			String hash = "&hash="
					+ "c4238355433f69f206bbd96597916f65e2faff95855ea1e811fa10413224018a";
			String message = "&message=" + id + ""+date+""+stime+""+etime+""+location+""+pincode;
			String sender = "&sender=" + "TXTLCL";
			// --------Number to whom send the  message----------
			String numbers = "&numbers=" + contact;//7756945494

			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL(
					"http://api.textlocal.in/send/?").openConnection();
			String data = user + hash + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length",
					Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(
					conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS " + e);
			return "Error " + e;
		}
	}

	public static void main(String[] args) {
		/*sendSMS obj = new sendSMS();
		String msg = "You are cross Signal";
		obj.sendSms(msg , contact);*/
	}
}