# Encoding: UTF-8
# Written by: Signo-Net
# Email: clientes@signo-net.com 
# Web: http://www.signo-net.com 

# This work is licensed under a Creative Commons Attribution 3.0 License.
# [ http://creativecommons.org/licenses/by/3.0/ ]

# This means you may use it for any purpose, and make any changes you like.
# All we ask is that you include a link back to our page in your credits.

# Looking forward your comments and suggestions! clientes@signo-net.com

class ChuckNorrisController < ApplicationController
  
  unloadable
  include ChuckNorrisHelper
 
  before_filter :find_project, :authorize, :only => :index
  
  def index
  end
  
  def next_fact 
    render :partial => 'fact'
  end
 
 private
 
 def find_project
   # @project variable must be set before calling the authorize filter
   @project = Project.find(params[:project_id])
 end
 
end
