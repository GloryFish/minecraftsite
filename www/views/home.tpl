<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">
	<title>GloryFish.org Minecraft Server</title>
	
	<meta name="description" content="Status page for the GloiryFish.org Minecraft server.">
</head>

<body>

   <div>
   	<h1>GloryFish.org Minecraft Server</h1>
      <p>
         %if status:
         The server is up
         %else:
         The server is down
         %end
      </p>
      
      <img src="/images/current.png" />
   </div>

</body>
</html>
