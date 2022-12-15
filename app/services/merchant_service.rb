class MerchantService
    # def self.connect
    #     Faraday.new(url: 'http://localhost:3000/api/v1')
    # end

    def self.merchants
        connect = Faraday.new(url: 'http://localhost:3000')
        response = connect.get('/api/v1/merchants')
        data = JSON.parse(response.body, symbolize_names: true)[:data]
    end

    def self.merchant(id)
        connect = Faraday.new(url: 'http://localhost:3000')
        response = connect.get("/api/v1/merchants/#{id}")
        data = JSON.parse(response.body, symbolize_names: true)[:data]
    end

    def self.merchant_items(id)
        connect = Faraday.new(url: 'http://localhost:3000')
        response = connect.get("/api/v1/merchants/#{id}/items")
        data = JSON.parse(response.body, symbolize_names: true)[:data]
    end
end