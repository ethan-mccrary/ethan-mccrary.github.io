package com.personal.personal_website;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Data {

    public List<String> projects;
    public List<String> links;

    public Data() {
        projects = new ArrayList<>();
        links = new ArrayList<>();
        System.out.println(new File(".").getAbsolutePath());

        String project = "";
        String link = "";
        try(InputStream inputStream = getClass().getResourceAsStream("/projects.txt");
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream))) {
            String line = "";
            while ((line = br.readLine()) != null) {
                project = line;
                projects.add(project);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        try(InputStream inputStream = getClass().getResourceAsStream("/links.txt");
             BufferedReader br = new BufferedReader(new InputStreamReader(inputStream))) {
            String line = "";
            while ((line = br.readLine()) != null) {
                link = line;
                links.add("projects.jsp#" + link);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<String> getData(String query) {
        query = query.toLowerCase();

        List<String> matched = new ArrayList<>();

        for (String project : projects) {
            if (project.toLowerCase().startsWith(query)) {
                matched.add(project);
            }
        }

        return matched;
    }
}
