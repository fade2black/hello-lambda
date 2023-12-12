require "json"
require 'logger'



def lambda_handler(event:, context:)
  logger = Logger.new(STDOUT)
  logger.info{ "Hello, lambda!" }

  require 'logger'
  {
     statusCode: 200,
     headers: {"content-type": "json/html"},
     body: { message: "Hello, world!" }
  }
end
