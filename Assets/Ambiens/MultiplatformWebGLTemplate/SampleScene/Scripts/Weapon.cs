using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    public GameObject projectilePrefab;
    public float cooldown=0.1f;
    private float lastShootTime;
    public Dispenser dispenser;
    public void Start()
    {
        dispenser= new Dispenser();

        dispenser.Init( this.gameObject, projectilePrefab, (GameObject projectile)=>{
            projectile.GetComponent<Projectile>().Init(this.dispenser);
        });

    }

    void Update()
    {
        dispenser.PausedUpdate();
    }

    public void Fire(){
        if(lastShootTime == 0 || Time.time-lastShootTime >cooldown){
            var p=this.dispenser.GetItem();
            p.SetActive(true);
            p.transform.position=this.transform.position;
            p.transform.forward=this.transform.forward;
            p.transform.parent=null;
        }
    }
}
