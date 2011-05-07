# Encoding: UTF-8
# Written by: Signo-Net
# Email: clientes@signo-net.com 
# Web: http://www.signo-net.com 

# This work is licensed under a Creative Commons Attribution 3.0 License.
# [ http://creativecommons.org/licenses/by/3.0/ ]

# This means you may use it for any purpose, and make any changes you like.
# All we ask is that you include a link back to our page in your credits.

# Looking forward your comments and suggestions! clientes@signo-net.com

require_dependency "projects_controller"

module ProjectControllerPatch
  def self.included(base) # :nodoc:
    base.send :include, InstanceMethods
    base.send :extend,  ClassMethods
    base.class_eval do
	  alias_method_chain :show, :chuck
	end
   end
   
  module ClassMethods
  end
  
  module InstanceMethods
    include ChuckNorrisHelper
    
    def show_with_chuck
  	  show_without_chuck
    end

    def next_fact 
	   render :partial => 'fact'
    end

  end
end

ProjectsController.send(:include, ProjectControllerPatch)

#require 'dispatcher'
#Dispatcher.to_prepare do
#end


