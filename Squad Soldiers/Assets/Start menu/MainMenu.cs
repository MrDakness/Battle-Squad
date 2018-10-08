using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour {

	public void PlayOfflineDesertDay1()
    {
        SceneManager.LoadScene(2);
    }

    public void PlayOfflineBasement()
    {
        SceneManager.LoadScene(1);
    }

    public void PlayOnlineBasement()
    {
        SceneManager.LoadScene(3);
    }

    public void QuitGame()
    {
        Debug.Log("QUIT!!");
        Application.Quit();
    }

}
