using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorAnimation : MonoBehaviour {

    public Animator DoorOpenandCloseAnimation;

	// Use this for initialization
	void Start () {
        DoorOpenandCloseAnimation = GetComponent<Animator>();

    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown("f"))
        {
            DoorOpenandCloseAnimation.Play("Door Open Animation");
        }
	}
}
