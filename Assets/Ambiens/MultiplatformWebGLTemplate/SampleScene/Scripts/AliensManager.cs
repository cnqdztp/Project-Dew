using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AliensManager : MonoBehaviour
{

    public List<GameObject> Aliens;
    public Transform spawnPoint;
    private float countDown = 5f;
    
    public List<Vector2> Timings;
    private float currentTiming;
    public int currentTimingIndex=0;
    public float timeSwitchDelay=10;
    void Start()
    {
        currentTimingIndex=0;
        currentTiming=0;
    }

    void Update()
    {
        if (countDown <= 0){
            
            GameObject inst = Instantiate(Aliens[0],spawnPoint.position,Quaternion.identity);
            inst.GetComponent<Transform>().SetParent(transform.parent);
            
            countDown = Random.Range(Timings[currentTimingIndex].x,Timings[currentTimingIndex].y);
        }
        countDown -= Time.deltaTime;

        currentTiming+=Time.deltaTime;
        if(currentTiming>=timeSwitchDelay){
            currentTiming=0;
            if(currentTimingIndex < Timings.Count-1)
                currentTimingIndex++;
        }
    }
}
