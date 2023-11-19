class CustomTournament{

  String groups = "Group-knockout";
  String league = "League";
  String knockout = "Knockout";

  String type = "";
  int maxClubs = 32;
  int minClubs = 4;
  int jumpSize = 1;
  List<String> clubs = [];
  String myClub = "";

  setType(String name){
    type = name;
    setNClubs();
  }

  setNClubs(){
    if(type == groups){
      maxClubs = 32;
      minClubs = 4;
      jumpSize = 4;
    }
    if(type == league){
      maxClubs = 24;
      minClubs = 4;
      jumpSize = 2;
    }
    if(type == knockout){
      maxClubs = 32;
      minClubs = 4;
      jumpSize = 2;
    }
  }
}