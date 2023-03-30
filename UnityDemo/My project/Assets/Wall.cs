using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wall : MonoBehaviour
{
    public int height = 10;
    public int width = 10;
    // Start is called before the first frame update
    void Start()
    {
        int half = width / 2;
        for (int row = 0; row < height; row++)
        {
            for (int col = 0; col < width; col++)
            {
                GameObject go = GameObject.CreatePrimitive(PrimitiveType.Cube);
                go.transform.parent = transform;
                go.transform.localPosition = new Vector3(col - half, row, 0);
                go.transform.localRotation = Quaternion.identity;
                go.AddComponent<Rigidbody>();
                go.GetComponent<Renderer>().material.color = Color.HSVToRGB(Random.Range(0.0f, 1.0f), 1, 1);
                
            }
        }
       
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
