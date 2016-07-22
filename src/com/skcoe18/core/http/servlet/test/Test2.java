package com.skcoe18.core.http.servlet.test;

import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import com.firebase.client.ChildEventListener;
import com.firebase.client.DataSnapshot;
import com.firebase.client.Firebase;
import com.firebase.client.FirebaseError;
import com.firebase.client.Query;
import com.firebase.client.ValueEventListener;
import com.shaded.fasterxml.jackson.databind.ObjectMapper;
import com.skcoe18.core.http.servlet.Constants;
import com.sun.tools.xjc.Driver;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;

public class Test2 {

	public static void main(String[] args) {
		 System.out.println("----------------------------Start");
		/*IDriver driver = new Driver();
		driver.setChannel("http://demo.firebase.com/SampleChat/");
		Reader reader = driver.read("users/jack");
		try{
		   ObjectMapper mapper = new ObjectMapper();
		   User user = mapper.readValue(reader, User.class);
		   System.out.println(user.getName());
		} catch (Exception ex){
		   ex.printStackTrace();
		}*/
		
		//Firebase ref = new Firebase(Constants.FIREBASE_URL);
		/*Firebase s = ref.child("chatroom");
		//ValueEventListener listener=new ;
		Query ss = s.limitToLast(10);
		System.out.println(ss);
		*/
	//	ref.child("message").setValue("Do you have data? You'll love Firebase.");
	/*	ref.child("message").addValueEventListener(new ValueEventListener() {
			  @Override
			  public void onDataChange(DataSnapshot snapshot) {
			    System.out.println(snapshot.getValue());  //prints "Do you have data? You'll love Firebase."
			  }
			  @Override public void onCancelled(FirebaseError error) { }
			});*/
		//DataSnapshot a=ref.child("chatroom");
		
		
		 //queryData();
		/* FirebaseAuth auth = FirebaseAuth.getInstance();
		 auth.signInWithEmailAndPassword(email, password)
		     .addOnCompleteListener(new OnCompleteListener() {
		         @Override
		         public void onComplete(Task task) {
		             if (task.isSuccessful()) {
		                 FirebaseUser user = task.getResult().getUser();
		                 String email = user.getEmail();
		                 // ...
		             }
		         }
		     });
		*/
		 System.out.println("---------------------End");
	}
	private static void queryData() {
		 HashMap mChats= new HashMap<String, String>();
		Firebase mFirebase = new Firebase(Constants.FIREBASE_URL);
		mFirebase=mFirebase.child("chatroom");
	    Query query = mFirebase.limitToLast(10);

	    
	    query.addChildEventListener(new ChildEventListener() {
	        @Override
	        public void onChildAdded(DataSnapshot dataSnapshot, String s) {
	            Map<String, Object> newPost = (Map<String, Object>) dataSnapshot.getValue();
	            String owner = newPost.get("name").toString();
	            String message = newPost.get("message").toString();

	           System.out.println("name :"+owner);
			
	        }

	        @Override
	        public void onChildChanged(DataSnapshot dataSnapshot, String s) {
	           
	        }

	        @Override
	        public void onChildRemoved(DataSnapshot dataSnapshot) {

	        }

	        @Override
	        public void onChildMoved(DataSnapshot dataSnapshot, String s) {

	        }

	        @Override
	        public void onCancelled(FirebaseError firebaseError) {

	        }
	    });
	}

}
