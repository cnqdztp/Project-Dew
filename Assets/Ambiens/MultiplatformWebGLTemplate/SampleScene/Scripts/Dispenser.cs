using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;

public class Dispenser 
{
    private float ItemLife = 1; //in seconds
    private const float ITEM_CHECK_INTERVAL = .1f; //how frequently to check for dead bullets

    //private GameObject itemPrefab;

    private GameObject[] items;
    private float[] itemDeathTimes;
    private float nextItemCheckTime = 0f;
    private int nextItemIndex = 0;
    private int numberOfActiveItems;

    private float elapsedTime=0;

    public Action<GameObject> OnItemDeactivate;
    
    public Transform itemParent;

    public void Init(GameObject parent, string prefabPath, Action<GameObject> OnElementInstantiate = null, int poolLenght=10, float itemLife=1)
    {
        //itemPrefab = (GameObject)Resources.Load(prefabPath);
        this.Init(parent, (GameObject)Resources.Load(prefabPath), OnElementInstantiate, poolLenght, itemLife);
        
    }
    public void Init(GameObject parent, GameObject prefab, Action<GameObject> OnElementInstantiate=null, int poolLenght=10, float itemLife=1){
         //creating the pool of items
        items = new GameObject[poolLenght];
        ItemLife = itemLife;
        GameObject baux;
        itemDeathTimes = new float[poolLenght];
        for (int b = 0; b < items.Length; b++)
        {
            baux = (GameObject)GameObject.Instantiate(prefab);
            baux.name = b+"_" + baux.name.Replace("(Clone)","");
            baux.transform.parent = parent.transform;
            baux.SetActive(false);
            if(OnElementInstantiate!=null)
                OnElementInstantiate(baux);
            items[b] = baux;
        }
        itemParent=parent.transform;
    }
    public GameObject GetItem(float itemLife = -1)
    {
        GameObject toReturn = items[nextItemIndex];
        itemDeathTimes[nextItemIndex] = elapsedTime + ((itemLife == -1) ? ItemLife : itemLife);

        nextItemIndex = (nextItemIndex == items.Length - 1) ? 0 : nextItemIndex + 1;
        numberOfActiveItems++;
        return toReturn;
    }

    public GameObject[] GetItems(int numberOfItems, float itemLife = -1)
    {

        GameObject[] toReturn = new GameObject[numberOfItems];

        for (int i = 0; i < numberOfItems; i++)
        {
            toReturn[i] = GetItem(itemLife);
        }

        return toReturn;
    }

    public void PausedUpdate()
    {
        elapsedTime += Time.deltaTime;
        if (numberOfActiveItems > 0
           && nextItemCheckTime < elapsedTime)
        {
            //Debug.Log("Checking bullets to deactivate");
            GameObject currentItemGO;
            nextItemCheckTime = elapsedTime + ITEM_CHECK_INTERVAL; //schedule next check

            bool keepChecking = true;
            int numberOfChecks = 0;
            int itemToCheck = nextItemIndex - 1;
            if (itemToCheck < 0)
            {
                itemToCheck = items.Length - 1;
            }

            while (keepChecking)
            {
                if (itemToCheck == -1)
                {
                    itemToCheck = items.Length - 1;
                }
                currentItemGO = items[itemToCheck];

                if (currentItemGO.activeSelf)
                {
                    if (itemDeathTimes[itemToCheck] < elapsedTime)
                    {
                            
                        if (OnItemDeactivate != null) 
                        {
                            OnItemDeactivate(currentItemGO);
                        }
                        DisableItem(currentItemGO);
                    }
                }
                else
                {
                    keepChecking = false;
                }

                itemToCheck--;
                numberOfChecks++;

                if (numberOfChecks == items.Length)
                {
                    keepChecking = false;
                }
            }
        }
    }

    public void DisableItem(GameObject obj)
    {
        if (obj.activeSelf)
        {
            numberOfActiveItems--;
            obj.SetActive(false);
            obj.transform.parent=itemParent;
        }
        

    }
}
