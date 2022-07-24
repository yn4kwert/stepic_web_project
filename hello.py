def wsgi_app(environ, start_response):
    print(environ)
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]
    #body = [(i + '\n') for i in environ['QUERY_STRING'].split('&')]
    body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
    print(headers)
    start_response(status, headers)
    return body
