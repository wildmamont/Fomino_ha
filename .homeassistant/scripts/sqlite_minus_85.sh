#!/bin/bash

sqlite3 /config/home-assistant_v2.db "delete from states  where  state='85.0'"
