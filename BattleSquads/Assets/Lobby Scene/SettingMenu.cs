using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;

public class SettingMenu : MonoBehaviour {

    public Dropdown resolutionDropdown;

    Resolution[] resolutions;

    public bool Fullscreen;

    public AudioMixerGroup MasterAudio;

    public AudioMixerGroup MusicAudio;

    public AudioMixerGroup GameplayAudio;

    public AudioMixerGroup ProgressAudio;

    void Start()
    {
        resolutions = Screen.resolutions;

        resolutionDropdown.ClearOptions();

        List<string> options = new List<string>();

        int currentResolutionIndex = 0;
        for (int i = 0; i < resolutions.Length; i++)
        {
            string option = resolutions[i].width + " x " + resolutions[i].height;
            options.Add(option);

            if (resolutions[i].width == Screen.currentResolution.width && 
                resolutions[i].height == Screen.currentResolution.height)
            {
                currentResolutionIndex = i;
            }
        }

        resolutionDropdown.AddOptions(options);
        resolutionDropdown.value = currentResolutionIndex;
        resolutionDropdown.RefreshShownValue();
    }

    public void SetFullScreen (bool isFullscreen)
    {
        Screen.fullScreen = isFullscreen;
    }

    public void SetQuality(int qualityindex)
    {
        QualitySettings.SetQualityLevel(qualityindex);
    }

    public void VsyncOn()
    {
        QualitySettings.vSyncCount = 1;
        Debug.Log("VSYNC IS ON!!!!");
    }

    public void VsyncOff()
    {
        QualitySettings.vSyncCount = 0;
        Debug.Log("VSYNC IS OFF!!!!");
    }

    public void AudioMaster(float mastervolume)
    {
        MasterAudio.audioMixer.SetFloat("MasterAudio", mastervolume);
    }

    public void AudioMusic(float musicvolume)
    {
        MusicAudio.audioMixer.SetFloat("Musicaudio", musicvolume);
    }

    public void AudioGameplay(float gameplayvolume)
    {
        GameplayAudio.audioMixer.SetFloat("GameplayAudio", gameplayvolume);
    }

    public void AudioProgress(float progressvolume)
    {
        ProgressAudio.audioMixer.SetFloat("ProgressAudio", progressvolume);
    }

}
