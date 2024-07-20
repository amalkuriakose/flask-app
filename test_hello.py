from hello import app

def test_hello():
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert b"<h2>Hello, World!v2</h2>" in response.data