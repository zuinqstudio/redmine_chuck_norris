# Encoding: UTF-8
#	Written by: Signo-Net
#	Email: clientes@signo-net.com 
#	Web: http://www.signo-net.com 

# This work is licensed under a Creative Commons Attribution 3.0 License.
# [ http://creativecommons.org/licenses/by/3.0/ ]

# This means you may use it for any purpose, and make any changes you like.
# All we ask is that you include a link back to our page in your credits.

# Looking forward your comments and suggestions! clientes@signo-net.com

require 'redmine'
require 'project_chuck_norris_patch'

Redmine::Plugin.register :redmine_chuck_norris do
  name 'Redmine Chuck Norris plugin'
  author 'Signo-Net'
  description 'This plugin modifies the Project overview tab showing a random Chuck Norris fact. Chuck will also approve the project if more than 50% issues are closed.'
  version '0.0.1'
  url 'http://www.signo-net.com/downloads/'
  author_url 'http://www.signo-net.com'
  requires_redmine :version_or_higher => '1.0.0'
end
