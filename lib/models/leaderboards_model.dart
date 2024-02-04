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


  LeaderBoardsModel(totalPoints: 90, branch: 'B-tech', semester: 4,name: "Harsh"),
  LeaderBoardsModel(totalPoints: 82, branch: 'B-tech', semester: 4,name: "Zaidi"),
  LeaderBoardsModel(totalPoints: 79, branch: 'B-tech', semester: 4,name: "Sagrika"),

  LeaderBoardsModel(totalPoints: 74, branch: 'B-tech', semester: 3,name: "Mohit"),
  LeaderBoardsModel(totalPoints: 72, branch: 'Ai/Ml', semester: 8,name: "Deepak"),
  LeaderBoardsModel(totalPoints: 71, branch: 'B-tech', semester: 4,name: "Ali yasin"),
  LeaderBoardsModel(totalPoints: 70, branch: 'B-tech', semester: 2,name: "Indrani"),
  LeaderBoardsModel(totalPoints: 60, branch: 'Ai/Ml', semester: 3,name: "Ganesh"),
  LeaderBoardsModel(totalPoints: 30, branch: 'B-tech', semester: 2,name: "Vinod"),
  LeaderBoardsModel(totalPoints: 10, branch: 'B-tech', semester: 1,name: "Lalit"),


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

 