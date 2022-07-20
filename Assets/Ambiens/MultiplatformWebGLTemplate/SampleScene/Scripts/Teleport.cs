using System.Collections;
using System.Collections.Generic;
using ambiens.demo.astronaut;
using UnityEngine;

public class Teleport : MonoBehaviour
{
    public Transform OtherSide;
    public void OnTriggerEnter(Collider other)
    {
        var p=other.gameObject.GetComponent<Player>();
        if(p!=null)p.CurrentGravityForce=0;

        other.transform.position=OtherSide.position;
    }
}
