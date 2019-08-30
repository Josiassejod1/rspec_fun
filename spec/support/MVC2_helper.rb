class MVC2_HELPER
  def stub_service(method, url, body, version: 1, status: 200, query: nil, request_body: nil, headers: nil)
    with_params = {
      headers: standard_service_headers(version: version),
      query: query,
    }
    if request_body
      with_params[:body] = request_body
    end
    stub_request(method, url)
      .with(with_params)
      .to_return(status: status, body: body.to_json, headers: headers)
    end
end
