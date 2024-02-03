class LeaderBoardsModel {
  late double totalPoints;
  late int semester;
  late String branch;
  late String name;

  LeaderBoardsModel(
      {required this.totalPoints,
      required this.branch,
      required this.semester,
      required this.name
      });
}

List<LeaderBoardsModel> LeaderBoardsData = [
 //Hardcoded Dummy data//


  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 4,name: "A"),
  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 4,name: "B"),
  LeaderBoardsModel(totalPoints: 20, branch: 'B-tech', semester: 4,name: "C"),

  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 3,name: "D"),
  LeaderBoardsModel(totalPoints: 70, branch: 'Ai/Ml', semester: 8,name: "E"),
  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 4,name: "F"),
  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 2,name: "I"),
  LeaderBoardsModel(totalPoints: 40, branch: 'Ai/Ml', semester: 3,name: "G"),
  LeaderBoardsModel(totalPoints: 50, branch: 'B-tech', semester: 2,name: "V"),
  LeaderBoardsModel(totalPoints: 100, branch: 'B-tech', semester: 1,name: "QQ"),


];

// Function LeaderBoardsData.sort((a, b) {
//     // First, sort by totalPoints in descending order
//     int totalPointsComparison = b.totalPoints.compareTo(a.totalPoints);
//     if (totalPointsComparison != 0) {
//       return totalPointsComparison;
//     }

//     // If totalPoints are equal, sort by branch in ascending order
//     int branchComparison = a.branch.compareTo(b.branch);
//     if (branchComparison != 0) {
//       return branchComparison;
//     }

//     // If totalPoints and branch are equal, sort by semester in ascending order
//     return a.semester.compareTo(b.semester);
//   })

 