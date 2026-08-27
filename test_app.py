def test_version_page(client):
    
    response = client.get('/version')
    assert response.status_code == 200