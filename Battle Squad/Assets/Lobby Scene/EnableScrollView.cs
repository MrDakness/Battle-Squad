using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnableScrollView : MonoBehaviour {

    public GameObject objectToActivate;

    public GameObject objectToDisable;

    private void Start()
    {
        StartCoroutine(ActivationRoutine());
    }

    private IEnumerator ActivationRoutine()
    {
        //Wait for 0.1 secs.
        yield return new WaitForSeconds(5);

        //Turn My game object that is set to false(off) to True(on).
        objectToActivate.SetActive(true);
        objectToDisable.SetActive(false);
    }
}
