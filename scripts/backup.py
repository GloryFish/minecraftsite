#!/usr/bin/python

# 
#  backup.py
#  minecraftsite
#  
#  Created by Jay Roberts on 2010-10-15.
#  Copyright 2010 DesignHammer. All rights reserved.
# 

import sys
import os
import ConfigParser
from StringIO import StringIO
from datetime import datetime
import zipfile
import boto

default_config = """
[backup]
world = worldname
mcpath = /path/to/mc
"""


def zipdir(path, z):
    for root, dirs, files in os.walk(path):
        for f in files:
            z.write(os.path.join(root, f))
            

if __name__ == '__main__':
    print sys.argv[0]
    
    # Load configuration
    try:
        config = ConfigParser.ConfigParser()
        config.readfp(StringIO(default_config))
    except ConfigParser.Error, cpe:
        print 'load_config(): ' + cpe

    if os.path.isfile('backup.ini'):
        print 'Found configuration, loading...'

        try:
            config.read('backup.ini')
        except ConfigParser.Error, cpe:
            print 'load_config(): ' + cpe
    else:
        try:
            config_file = open('backup.ini', 'w')
            config.write(config_file)
            print 'Default backup.ini created.'
            exit()
        except Exception, e:
            print 'load_config(): ' + e
        finally:
            config_file.close()
    
    filename = "%s-%s.zip" % (config.get('backup', 'world'), datetime.now().strftime('%Y%m%d-%H%M'))
    
    print filename
    
    # z = zipfile.ZipFile(filename, 'w')
    # 
    # zipdir(config.get('backup', 'mcpath'), z)
    # z.close()
    