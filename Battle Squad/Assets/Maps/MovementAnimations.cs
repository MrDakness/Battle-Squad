using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementAnimations : MonoBehaviour {

    public Animator RevolverMovementAnimations;

	// Use this for initialization
	void Start () {
        RevolverMovementAnimations = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown("e"))
        {
            RevolverMovementAnimations.Play("RevolverLeanRight");
        }
        if (Input.GetKeyUp("e"))
        {
            RevolverMovementAnimations.Play("RevolverLeanBackFromRight");
        }
        if (Input.GetKeyDown("q"))
        {
            RevolverMovementAnimations.Play("RevolverLeanLeft");
        }
        if (Input.GetKeyUp("q"))
        {
            RevolverMovementAnimations.Play("RevolverLeanBackFromLeft");
        }
        if (Input.GetKeyDown("c"))
        {
            RevolverMovementAnimations.Play("Crouch");
        }
        {
            if (Input.GetKeyDown("c"))
            {
                RevolverMovementAnimations.Play("FromCrouchToStandUp");
            }
        }
    }
}
