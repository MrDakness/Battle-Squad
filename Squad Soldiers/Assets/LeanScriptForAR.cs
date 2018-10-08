using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeanScriptForAR : MonoBehaviour {

    public Animator LeanRightAR;

	// Use this for initialization
	void Start () {
        LeanRightAR = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown("E"))
        {
            LeanRightAR.Play("AR Lean Right");
        }
	}
}
