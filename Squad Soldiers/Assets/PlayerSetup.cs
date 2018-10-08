using UnityEngine;
using UnityEngine.Networking;

public class PlayerSetup : NetworkBehaviour {

    [SerializeField]
    Behaviour[] ComponentsToDiable;

    Camera sceneCamera;

    void Start()
    {
        if (!isLocalPlayer)
        {
            for (int i = 0; i < ComponentsToDiable.Length; i++)
            {
                ComponentsToDiable[i].enabled = false;
            }
        }
        else
        {
            sceneCamera = Camera.main;
            if (sceneCamera != null)
            {
                sceneCamera.gameObject.SetActive(false);
            }
        }
    }

    private void OnDisable()
    {
        if (sceneCamera != null)
        {
            sceneCamera.gameObject.SetActive(true);
        }
    }

}
