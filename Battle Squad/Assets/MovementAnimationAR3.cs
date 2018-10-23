using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementAnimationAR3 : MonoBehaviour {

    public Animator AR3Animations;

	// Use this for initialization
	void Start () {
        AR3Animations = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown("c"))
        {
            AR3Animations.Play("");
        }
	}
}
