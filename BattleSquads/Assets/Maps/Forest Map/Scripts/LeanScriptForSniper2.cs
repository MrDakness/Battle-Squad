using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeanScriptForSniper2 : MonoBehaviour {

    public Animator LeanRightSniper2;

	// Use this for initialization
	void Start () {
        LeanRightSniper2 = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown("e"))
        {
            LeanRightSniper2.Play("Lean Right Sniper 2");
        }
        {
            if (Input.GetKeyUp("e"))
            {
                LeanRightSniper2.Play("Lean Back From Left");
            }
        }
        if (Input.GetKeyDown("q"))
        {
            LeanRightSniper2.Play("Lean Left Sniper 2");
        }
        {
            if (Input.GetKeyUp("q"))
            {
                LeanRightSniper2.Play("Lean Back From Right");
            }
        }
        if (Input.GetKeyDown("c"))
        {
            NewMethod();
        }
    }

    private void NewMethod()
    {
        LeanRightSniper2.Play("Croutch");
    }
}
