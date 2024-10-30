class Assertions
  def request_sucess(status_code,message)
    expect(status_code).to eql (200)
    expect(message).to eql 'OK'
  end
end