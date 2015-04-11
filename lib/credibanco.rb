require 'savon'
require_relative "credibanco_gw_wrapper/version"

class Credibanco
  def initialize(user_web_service, pass_web_service, environment)
    @user_web_service = user_web_service
    @pass_web_service = pass_web_service
    @environment = environment
  end
  
  def transaction(hash_body) 
    client = nil
    response = nil
    begin
      if(@environment == 0)
        client = Savon.client(wsdl: "http://pruebas.allegraplatform.com/GatewayIatai/IPPG?wsdl",  wsse_auth: [@user_web_service, @pass_web_service])
      else
        client = Savon.client(wsdl: "http://pruebas.allegraplatform.com/GatewayIatai/IPPG?wsdl",  wsse_auth: [@user_web_service, @pass_web_service])
      end

      if client
        response = client.call(:transaccion, :message => hash_body)
  		else
        raise 'bad params' 
      end
      return response
    rescue Exception => e
      response e.message
    end 
  end

end
