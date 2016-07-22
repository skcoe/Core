<html>
<head>
  <script src="https://cdn.firebase.com/js/client/2.2.1/firebase.js"></script>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
  
</head>
<body>
<div class="example-chat l-demo-container">
  <header>Firebase Chat Demo</header>
  <div class='example-chat-toolbar'>
    <label for="nameInput">Username:</label>
    <input type='text' id='nameInput' placeholder='enter a username...'>
  </div>
  <ul id='example-messages' class="example-chat-messages"></ul>
  <footer>
    <input type='text' id='messageInput'  placeholder='Type a message...'>
  </footer>
</div>
<script>
  // CREATE A REFERENCE TO FIREBASE
  var messagesRef = new Firebase('https://appone111.firebaseio.com/');
  messagesRef=messagesRef.child("chatroom");
  var messageField = $('#messageInput');
  var nameField = $('#nameInput');
  var messageList = $('#example-messages');
  // LISTEN FOR KEYPRESS EVENT
  messageField.keypress(function (e) {
    if (e.keyCode == 13) {
      var username = nameField.val();
      var message = messageField.val();
      //SAVE DATA TO FIREBASE AND EMPTY FIELD
      messagesRef.push({name:username, message:message});
      messageField.val('');
    }
  });
  // Add a callback that is triggered for each chat message.
  messagesRef.limitToLast(10).on('child_added', function (snapshot) {
    var data = snapshot.val(); //GET DATA
    var username = data.name || "anonymous";
    var message = data.message;
    //CREATE ELEMENTS MESSAGE & SANITIZE TEXT
    var messageElement = $("<li>");
    var nameElement = $("<strong class='example-chat-username'></strong>")
    nameElement.text(username+"> ");
    messageElement.text(message).prepend(nameElement);
    messageList.append(messageElement) //ADD MESSAGE
    messageList[0].scrollTop = messageList[0].scrollHeight; //SCROLL TO BOTTOM OF MESSAGE LIST
  });
</script>
</body>
</html>