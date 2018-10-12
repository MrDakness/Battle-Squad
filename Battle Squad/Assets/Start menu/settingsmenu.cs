using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class settingsmenu : MonoBehaviour {

    public AudioMixer GVolume;

    public void SetVolume(float GunVolume)
    {
        GVolume.SetFloat("GUNVolume", GunVolume);
    }

    public AudioMixer MusicV;

    public void MenuMusicVolume(float MusicVolume)
    {
        MusicV.SetFloat("MenuMusic", MusicVolume);
    }

    public AudioMixer Walk;

    public void WalkAJump(float JumpAWalk)
    {
        Walk.SetFloat("Walk,Jump", JumpAWalk);
    }

}
