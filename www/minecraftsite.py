# 
#  minecraftsite.py
#  minecraftsite
#  
#  Created by Jay Roberts on 2010-08-25.
#  Copyright 2010 GloryFish.org. All rights reserved.
# 

import bottle
from bottle import route
import telnetlib

bottle.debug(True)

@route('/')
@route('/index.html')
def index():
    try:
        tel = telnetlib.Telnet('minecraft.gloryfish.org', 25565)
        status = 'Server is up'
    except:
        status = 'Server is down'

    return "GloryFish.org Minecraft Server<br >" + status + "<br /><img src='/images/map.png' />"

@route('/images/:filename')
def static_image(filename):
    bottle.send_file(filename, root='/var/www/minecraft.gloryfish.org/www/')
