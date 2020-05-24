#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <glm/vec3.hpp>         // glm::vec3
#include <glm/geometric.hpp>    // glm::cross, glm::normalize

#include <assimp/Importer.hpp>      // C++ importer interface
#include <assimp/scene.h>           // Output data structure
#include <assimp/postprocess.h>     // Post processing flags

#include <GL/glew.h>
#include <glm/glm.hpp>



bool DoTheImportThing(const std::string& pFile)
{
    glewGetErrorString(1);
    // Create an instance of the Importer class
    Assimp::Importer importer;
    // And have it read the given file with some example postprocessing
    // Usually - if speed is not the most important aspect for you - you'll 
    // propably to request more postprocessing than we do in this example.
    const aiScene* scene = importer.ReadFile(pFile,
        aiProcess_CalcTangentSpace |
        aiProcess_Triangulate |
        aiProcess_JoinIdenticalVertices |
        aiProcess_SortByPType);

    // If the import failed, report it
    if (!scene)
    {
     //   DoTheErrorLogging(importer.GetErrorString());
        return false;
    }
    // Now we can access the file's contents. 
    //DoTheSceneProcessing(scene);
    // We're done. Everything will be cleaned up by the importer destructor
    return true;
}



int main(int argc, char** argv )
{
    DoTheImportThing("");

    // test if gml isd linking
    glm::vec3(1, 2, 3);

    if (argc != 2) {
        printf("usage: DisplayImage.out <Image_Path>\n");
        return -1;
    }

    cv::Mat image = cv::imread( argv[1], 1 );
    if (!image.data) {
        printf("No image data \n");
        return -1;
    }
    cv::namedWindow("Display Image", cv::WINDOW_AUTOSIZE );
    cv::imshow("Display Image", image);
    cv::waitKey(0);

    return 0;
}