using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ambiens.demo.astronaut
{
    public class PlayerExplosion : MonoBehaviour
    {
        public float timer=1;
        private bool alreadyDoneDamage=false;
        private float destroyTime=0;
        void Start()
        {
            destroyTime=Time.time+timer;
        }
        void Update()
        {
            this.transform.localScale=Vector3.Lerp(this.transform.localScale, Vector3.one*2, 0.15f);

            if(Time.time>destroyTime) Destroy(this.gameObject);
        }

        void OnTriggerEnter(Collider collisionInfo)
        {
            if(!alreadyDoneDamage){
                var player=collisionInfo.transform.GetComponent<Player>();
                
                if(player!=null){
                    alreadyDoneDamage=true;
                    player.AddHP(-4);

                }
            }
            
        }
    }
}
