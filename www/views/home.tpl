<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">
	<title>GloryFish.org Minecraft Server</title>

	<meta name="description" content="Status page for the GloryFish.org Minecraft server.">
	<link rel="shortcut icon" href="http://minecraft.net/favicon.ico">

	<style type="text/css">
	body {
		font-family: arial;
	}

	h1 {
		font-size: 16px;
	}

	</style>

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
      <a href="/gmap">Explore the world &raquo;</a>
      <br />
      <a href="/maps/current.png"><img style="width: 600px;" src="/maps/current.png" /></a>
   </div>

</body>
</html>
