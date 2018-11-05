using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnableScrollView : MonoBehaviour {

    public AudioSource MenuMusicAudioSource;

    public AudioClip MenuMusic;

    private void Start()
    {
        StartCoroutine(ActivationRoutine());

        MenuMusicAudioSource.clip = MenuMusic;
    }

    private IEnumerator ActivationRoutine()
    {
        //Wait for 0.1 secs.
        yield return new WaitForSeconds(14);

        //Turn My game object that is set to false(off) to True(on).
        MenuMusicAudioSource.Play();
    }
}
