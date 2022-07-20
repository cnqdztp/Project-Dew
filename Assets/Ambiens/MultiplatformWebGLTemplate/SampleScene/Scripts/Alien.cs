using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace ambiens.demo.astronaut
{
    public class Alien : AHumanoid
    {
        public LayerMask WallsLayerMask;
        public float ExploreAfterSec=1;

        public Material ExplodeMaterial;

        public GameObject Explosion;

        protected override void Update()
        {
            if(!isAlive) return;

            if(landed){
                if(moveFromUI==0){
                    moveFromUI=(Random.Range(0,100)>50)?1:-1;
                }
                if(Physics.Raycast( this.transform.position+Vector3.up*0.4f, this.transform.right, out hit,  1f, WallsLayerMask)){
                    moveFromUI=moveFromUI>0?-1:1;
                }
                //Debug.DrawLine(this.transform.position+Vector3.up*0.4f, this.transform.position+Vector3.up*0.4f+this.transform.right);
            }

            base.Update();
        }

        protected override void KindlyDiePlease()
        {
            
            StartCoroutine(ExplodeAfterSeconds(this.ExploreAfterSec));
            
        }

        IEnumerator ExplodeAfterSeconds(float sec){
            float t=Time.time+sec;
            List<Material> matList=new List<Material>();
            foreach(var r in GetComponentsInChildren<SkinnedMeshRenderer>()){
                matList.Clear();
                for(int i=0; i< r.materials.Length; i++){
                    matList.Add(this.ExplodeMaterial);
                }
                r.materials=matList.ToArray();
            }

            while(Time.time<t){

                this.transform.localScale=Vector3.Lerp(this.transform.localScale, Vector3.one*1.5f, 0.15f);

                yield return new WaitForEndOfFrame();
            }
            GameObject.Instantiate(Explosion, this.transform.position, this.transform.rotation, this.transform.parent);

            GameObject.Destroy(this.gameObject);
        }

    }
}