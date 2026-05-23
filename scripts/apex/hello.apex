// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

 Http http = new Http();

        String requestBody= '{ "requests": [ { "features": [ { "maxResults": 5, "type": "LABEL_DETECTION" } ], "image": { "source": { "imageUri": "gs://cloud-samples-data/vision/label/setagaya.jpeg" } } } ] }';

        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndPoint('https://vision.googleapis.com/v1/images:annotate?key=AIzaSyB20mxZIINERGW_HIrvYm8Id5imOQfgpzY');
        req.setHeader('Content-Type','application/json');
        req.setBody(requestBody);

        HttpResponse res = http.send(req);

        System.debug('result'+ res.getBody());
    