using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashlightSet : MonoBehaviour {

    public GameObject Flashlight;

    public bool FlashLight;

    void Start()
    {
        Flashlight = gameObject;
    }

    void Update()
    {
        if (Input.GetKeyDown("g"))
        {
            Flashlight.SetActive(true);
        }

        if (Input.GetKeyDown("g"))
        {
            Flashlight.SetActive(false);
        }
    }
}
