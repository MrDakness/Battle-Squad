﻿using UnityEngine;
using UnityEngine.Networking;

public class DisableIfWeAreNoThePlayer : NetworkBehaviour {

    [SerializeField]
    Behaviour[] componentsToDiable;

    Camera sceneCamera; 

    void Start()
    {
        if (!isLocalPlayer)
        {
            for (int i = 0; i < componentsToDiable.Length; i++)
            {
                componentsToDiable[i].enabled = false;
            }
        } else
        {
            sceneCamera = Camera.main;
            if (sceneCamera != null)
            {
                sceneCamera.gameObject.SetActive(false);
            }
        }
    }

    void OnDisable()
    {
        if (sceneCamera != null)
        {
            sceneCamera.gameObject.SetActive(true);
        }
    }

}