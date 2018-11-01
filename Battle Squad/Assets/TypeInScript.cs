using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TypeinScript : MonoBehaviour {

    public Text displayedText;
    public Text InputText;

    private string outputString = null;
    private int i = -1;
    private bool done;

    // Update is called once per frame
    void Update()
    {
        if (!done)
        {
            displayedText.text = Typewrite(InputText.text);
        }
    }
    private string Typewrite(string text)
    {
        i++;
        char[] characters = text.ToCharArray();
        outputString = outputString + characters[i].ToString ();
        if (i == (characters.Length - 1))
        {
            done = true;
        }
        return outputString;
    }
}