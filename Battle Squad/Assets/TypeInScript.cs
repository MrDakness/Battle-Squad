using UnityEngine;
using System.Collections

public class AutoType : MonoBehaviour
{

    public float letterPause = 0.2f;

    string message;

    // Use this for initialization
    void Start()
    {
        message = guiText.text;
        guiText.text = "Development";
        StartCoroutine(TypeText());
    }

    IEnumerator TypeText()
    {
        foreach (char letter in message.ToCharArray())
        {
            guiText.text += letter;
            yield return 0;
            yield return new WaitForSeconds(letterPause);
        }
    }
}