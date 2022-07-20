using System.Collections;
using System.Collections.Generic;
using ambiens.demo.astronaut;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float speed=10;
    Dispenser dispenser;
    public void Init(Dispenser d){
        this.dispenser=d;
    }
    void Update()
    {
        this.transform.position+=this.transform.forward*this.speed*Time.deltaTime;
    }

    void OnCollisionEnter(Collision collisionInfo)
    {
        this.dispenser.DisableItem(this.gameObject);
        var alien=collisionInfo.transform.GetComponent<Alien>();
        if(alien!=null){
            alien.AddHP(-1);
        }
    }
}
