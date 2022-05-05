import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/pages/project/project_detail.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProjectDetail(
            project: project,
          ),
        ),
      ),
      child: Container(
        height: 400,
        width: 300,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(right: 25.0, top: 15.0, bottom: 25.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 15),
                color: Colors.black.withOpacity(.15),
                blurRadius: 15,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  project.name,
                  style: const TextStyle(fontSize: 18),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    project.year.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Hero(
                tag: project.name,
                child: Container(
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      project.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              project.description,
              style: const TextStyle(
                  fontSize: 14, overflow: TextOverflow.ellipsis),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
