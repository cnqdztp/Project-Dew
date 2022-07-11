using System;
using System.Collections;
using System.Collections.Generic;
// using JeffreyLanters.WebRequests;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class POSTTest : MonoBehaviour
{
    public Text debugText;

    public string url;//http://r2-access.uxingame.com/test.txt
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // public async void startUpload()
    // {
    //     try {
    //         var request = await new WebRequest (url) {
    //             method = RequestMethod.Post,
    //             contentType = ContentType.ApplicationJson,
    //             body = JsonUtility.ToJson (new Wish(){
    //                 name = "子怡"
    //             })
    //         }.Send();
    //         var response =  request.webRequestResponseText;
    //         debugText.text = response;
    //     } catch (WebRequestException exception) {
    //         Debug.Log ($"Error {exception.httpStatusCode} while fetching {exception.url}");
    //         if (exception.httpStatus == HttpStatus.Unauthorized) {
    //             Debug.Log ($"Not authorized! {exception.rawResponseData}");
    //         }
    //     }
    //     
    //     // StartCoroutine(Upload());
    // }

    public void startUpload()
    {
        StartCoroutine(Upload());
    }

    IEnumerator Upload() {
        byte[] myData = System.Text.Encoding.UTF8.GetBytes(JsonUtility.ToJson(
            new Wish(){name = "子怡",phone = "0",wishContent = "返校"}
            ));
        UnityWebRequest www = UnityWebRequest.Put(url, myData);
        yield return www.SendWebRequest();
 
        if (www.result != UnityWebRequest.Result.Success) {
            Debug.Log(www.error);
        }
        else {
            Debug.Log("Upload complete!");
        }
    }

    public class Wish
    {
        public string name;
        public string phone;
        public string wishContent;
    }
}
