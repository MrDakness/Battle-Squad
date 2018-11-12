using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DiableTextSpace : MonoBehaviour {

    public GameObject Text;

	// Use this for initialization
	void Start () {
        Text = gameObject;
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            Text.SetActive(false);
        }
	}
}
