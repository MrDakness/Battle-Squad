using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnableScenecamera3 : MonoBehaviour {

    public GameObject SceneCamera1;
    public GameObject SceneCamera2;
    public GameObject SceneCamera3;

    private void Start()
    {
        StartCoroutine(ActivationRoutine());
    }

    private IEnumerator ActivationRoutine()
    {
        //Wait for 0.1 secs.
        yield return new WaitForSeconds(20);

        //Turn My game object that is set to false(off) to True(on).
        SceneCamera1.SetActive(false);
        SceneCamera2.SetActive(false);
        SceneCamera3.SetActive(true);
    }
}
