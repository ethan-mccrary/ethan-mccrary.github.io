package com.personal.personal_website;

import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.ListObjectsV2Result;
import com.amazonaws.services.s3.model.S3ObjectSummary;

import java.util.ArrayList;
import java.util.List;

public class GetImages {
    private final String bucket_name;
    public ArrayList<String> images;

    public GetImages() {
        bucket_name = "emccrary.com-images";
        images = getImages();
    }

    public ArrayList<String> getImages() {
        images = new ArrayList<>();
        final AmazonS3 s3 = AmazonS3ClientBuilder.standard().withRegion(Regions.US_EAST_2).build();
        ListObjectsV2Result result = s3.listObjectsV2(bucket_name);
        List<S3ObjectSummary> objects = result.getObjectSummaries();
        for (S3ObjectSummary os : objects) {
            images.add(os.getKey());
        }
        return images;
    }
}
