using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Networking;

public class CustomWebRequest : MonoBehaviour
{
    public string url;
    public TMP_InputField nameInput,phoneInput,wishInput;

    private string thisName, phone, wish;
    public void CompleteCapsule()
    {
        thisName = nameInput.text;
        phone = phoneInput.text;
        wish = wishInput.text;
        // Debug.Log(wish);
        StartCoroutine(Upload());
    }

    IEnumerator Upload() {
        byte[] myData = System.Text.Encoding.UTF8.GetBytes(JsonUtility.ToJson(
            new Wish(){name = thisName,phone = phone,wishContent = wish}
        ));
        UnityWebRequest www = UnityWebRequest.Put(url, myData);
        // Debug.Log("Starting");

        yield return www.SendWebRequest();
        // Debug.Log("Completed");
        
        Debug.Log(www.result);
        // if (www.result != UnityWebRequest.Result.Success) {
        //     Debug.Log(www.error);
        // }
        // else
        // {
        //     Debug.Log("Upload complete!");
        // }
    }
    
    public class Wish
    {
        public string name;
        public string phone;
        public string wishContent;
    }
    
    // Update is called once per frame
    void Update()
    {
        
    }
}
