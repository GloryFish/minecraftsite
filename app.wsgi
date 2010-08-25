# 
#  app.wsgi
#  minecraftsite
#  
#  Created by Jay Roberts on 2010-08-25.
#  Copyright 2010 GloryFish.org. All rights reserved.
# 

import os
import sys

# Change working directory so relative paths (and template lookup) work again
os.chdir(os.path.dirname(__file__))
sys.path.insert(0, os.path.dirname(__file__))

import bottle
import minecraftsite

# Do NOT use bottle.run() with mod_wsgi
application = bottle.default_app()
