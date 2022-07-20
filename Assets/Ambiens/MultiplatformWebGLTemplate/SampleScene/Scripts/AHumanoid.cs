using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace ambiens.demo.astronaut
{
    public abstract class AHumanoid : MonoBehaviour
    {

        public UnityEvent OnDie;
        public int HP=10;
        public float speed;
        public Animator anim;
        
        protected bool isAlive=true;
        public float gravitySpeed=5;
        public float jumpForce=3;
        
        public LayerMask FloorLayerMask;
        public Weapon weapon;
        protected bool isJumping;

        public void MoveLeft(){
            this.transform.position+=this.transform.right*Time.deltaTime*this.speed;
            this.transform.right=-Vector3.right;
            this.anim.Play("WALKING_FIRING");
        }
        public void MoveRight(){
            this.transform.position+=this.transform.right*Time.deltaTime*this.speed;
            this.transform.right=Vector3.right;
            this.anim.Play("WALKING_FIRING");
        }
        public int moveFromUI=0;
        public void StartMoveLeft(){
            moveFromUI=1;
        }
        public void StartMoveRight(){
            moveFromUI=-1;
            
        }
        public void StopMove(){
            moveFromUI=0;
        }
        protected float JumpingTime=0;
        protected bool landed=true;
        public void Jump(){
            if(landed){
                CurrentGravityForce=-jumpForce;
                JumpingTime=Time.time+0.5f;
                landed=false;
            }
        }
        public void Fire(){
            weapon.Fire();
        }
        public float CurrentGravityForce=0;
        protected RaycastHit hit;
        protected virtual void Update()
        {
            if(!isAlive) return;

            if(JumpingTime<Time.time){
                if(Physics.Raycast( this.transform.position+Vector3.up*0.2f, Vector3.down, out hit,  0.3f, FloorLayerMask)){
                    CurrentGravityForce=0;
                    this.transform.position=hit.point;
                    landed=true;
                }
                else landed=false;
            }

            if(moveFromUI==1){
                MoveLeft();
            }
            else if(moveFromUI==-1){
                MoveRight();
            }

            this.transform.position+=Vector3.down*CurrentGravityForce*Time.deltaTime;
            CurrentGravityForce+=gravitySpeed*Time.deltaTime;

        }
        protected virtual void FixedUpdate()
        {
            if(JumpingTime<Time.time){
                if(Physics.Raycast( this.transform.position+Vector3.up*0.2f, Vector3.down, out hit,  0.3f, FloorLayerMask)){
                    CurrentGravityForce=0;
                    landed=true;
                }
                else landed=false;
            }
        }

        public void AddHP(int amount){
            this.HP+=amount;
            if(this.HP<0){
                isAlive=false;
                KindlyDiePlease();
                OnDie.Invoke();
            }
        }
        protected abstract void KindlyDiePlease();
    }

}