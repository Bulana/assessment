class PagesController < ApplicationController
  def join_us
  end

  def support
  end

  def news
    require 'net/http'
    require 'json'

    projFileName = "Project.config"
    
    @projFile =File.expand_path("./app/assets/config/Project.config")
    @fileExist =""
    if(File.file?(@projFile)) 
    else 
        @fileExist = "Project.config file does not exist"
    end

    # Accessing Config files and reading data
    @openProjConfig = open(@projFile)
    @projectList = @openProjConfig.read.split("\n")
    
    @projectHash = Hash.new
    @projectList.each {|x|
      @projectHash[x[0...(x.index("=")).to_i]]=(x[(x.index("=")).to_i...x.length]).delete"="
    }

    @binanceURL = @projectHash["BinanceAPI"]
    uri = URI(@binanceURL)
    response = Net::HTTP.get(uri)
    @binanceAPIHash = JSON.parse(response)
    
  end

  def login_or_register
  end

  def exchange
  end
end

            # uri = URI.parse("#{serverURL}/assets/Zapper#{envFilePath}.json")

            # http = Net::HTTP.new(uri.host, uri.port)
            # request = Net::HTTP::Get.new(uri.request_uri)

            # response = http.request(request)

            # hash = JSON.parse(response.body)