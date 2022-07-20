using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ambiens.demo.astronaut
{
    public class Player : AHumanoid
    {
        protected override void KindlyDiePlease()
        {
            GameObject.Destroy(this.gameObject);
        }
    }
}