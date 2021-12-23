## api-docs

Automatic build and deploy your beautiful openapi-schmeas.

### jelastic hosted live server

https://env-0503424.proen.app.ruk-com.cloud/petstore.html

### Fork it and play.

    1. Fork this repo
    2. Add repository secrets in you github account
        host: ${{ secrets.HOST }} # host address
        username: ${{ secrets.USERNAME }} # username to access this host
        port: ${{ secrets.PORT }} # file transfer port
        key: ${{ secrets.API_KEY }} # you will get this key by cat ~/.ssh/id_rsa
        source: "petstore.html" # comma seperated list of documents
        target: ${{ secrets.TARGET }} # root dir of the remote web server
    3. Make some changes in ./examples/v3.0/petstore.json
    4. Push it to main branch
