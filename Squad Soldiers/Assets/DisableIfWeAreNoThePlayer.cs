using UnityEngine;
using UnityEngine.Networking;

public class DisableIfWeAreNoThePlayer : NetworkBehaviour {

    Behaviour[] componentsToDiable;

    void Start()
    {
        if (!isLocalPlayer)
        {
            for (int i = 0; i < componentsToDiable.Length; i++)
            {

            }
        }
    }

}
