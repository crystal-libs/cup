module Cup
  VERSION = "0.1.0"

  class URL
    def initialize(@url : String)
    end

    def scheme
      return @url.split("://")[0]
    end

    def host
      return @url.split("://")[1].split("/")[0]
    end

    def path
      return @url.split("://")[1].split("?")[0].sub(@url.split("://")[1].split("/")[0], "")
    end

    def query
      return @url.split("?")[1].split("#")[0]
    end

    def frag
      return @url.split("#")[1]
    end
  end
end
