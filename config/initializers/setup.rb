#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
