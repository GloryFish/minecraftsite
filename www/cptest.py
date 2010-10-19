#! /usr/bin/python

# 
#  cptest.py
#  minecraftsite
#  
#  Created by Jay Roberts on 2010-10-19.
# 

import cherrypy
import telnetlib

class MinecraftSite:
    @cherrypy.expose
    def index(self):
        try:
            tel = telnetlib.Telnet('minecraft.gloryfish.org', 25565)
            server_status = True
        except:
            server_status = False

        return str(server_status)

cherrypy.quickstart(MinecraftSite(), '/', '/Users/jroberts/Documents/Source/git/minecraftsite/www/config.ini')