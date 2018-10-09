using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OptionsMenu : MonoBehaviour
{

    public static bool GameIsPaused = false;

    public GameObject OptionsMenuUI;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.O))
        {
            if (GameIsPaused)
            {
                Resume();
            }
            else
            {
                Pause();
            }
        }
    }

    public void Resume()
    {
        OptionsMenuUI.SetActive(false);
        GameIsPaused = false;
        Time.timeScale = 1f;
    }

    void Pause()
    {
        OptionsMenuUI.SetActive(true);
        GameIsPaused = true;
        Time.timeScale = 0f;
    }
}