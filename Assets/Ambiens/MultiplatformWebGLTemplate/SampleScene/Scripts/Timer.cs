using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Timer : MonoBehaviour
{
    float time=0;
    public TextMeshProUGUI text;
    void OnEnable()
    {
        time=0;
    }
    void Update()
    {
        time+=Time.deltaTime;
        text.text=((int)time).ToString().PadLeft(3,'0');
    }
}
