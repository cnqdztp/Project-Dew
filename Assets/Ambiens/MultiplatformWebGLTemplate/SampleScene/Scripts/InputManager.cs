using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ambiens.demo.astronaut
{
    public class InputManager : MonoBehaviour
    {
        public Player player;
        void Update()
        {
            if(Input.GetKey(KeyCode.LeftArrow)){
                player.MoveLeft();
            }
            else if(Input.GetKey(KeyCode.RightArrow)){
                player.MoveRight();
            }
            if(Input.GetKey(KeyCode.Space)){
                player.Jump();
            }
            if(Input.GetKeyUp(KeyCode.C)){
                player.Fire();
            }
        }
    }
}