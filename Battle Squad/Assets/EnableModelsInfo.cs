using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnableModelsInfo : MonoBehaviour {

    public GameObject objectToActivate;

    private void Start()
    {
        StartCoroutine(ActivationRoutine());
    }

    private IEnumerator ActivationRoutine()
    {
        //Wait for 0.1 secs.
        yield return new WaitForSeconds(2f);

        //Turn My game object that is set to false(off) to True(on).
        objectToActivate.SetActive(true);
    }
}
