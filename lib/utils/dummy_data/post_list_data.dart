import 'package:design/constant/app_images.dart';
import 'package:design/models/connected_people.dart';
import 'package:design/models/post_model.dart';

List<PostModel> listDataItem = [
  PostModel(
    id: "1",
    profileImage: AppImages.userThree,
    userName: "Sara Paul",
    postDate: "",
    postTitle: "What is Lorem Ipsum?",
    postprofileImage: "",
    postDescrption:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
    postFileImage: AppImages.imageOne,
    postLikes: "199",
    postComments: "2015",
    postStatus: "1",
  ),
  PostModel(
    id: "2",
    profileImage: AppImages.userOne,
    userName: "Moniruddin Laskar",
    postDate: "",
    postTitle: "What is Lorem Ipsum?",
    postprofileImage: "",
    postDescrption:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
    postFileImage: AppImages.imageTwo,
    postLikes: "255",
    postComments: "1111",
    postStatus: "1",
  ),
  PostModel(
    id: "3",
    profileImage: AppImages.userTwo,
    userName: "Philip Weeks",
    postDate: "",
    postTitle: "What is Lorem Ipsum?",
    postprofileImage: "",
    postDescrption:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
    postFileImage: AppImages.imageOne,
    postLikes: "555",
    postComments: "129",
    postStatus: "1",
  ),
  PostModel(
    id: "4",
    profileImage: AppImages.userOne,
    userName: "Georgy Richard",
    postDate: "",
    postTitle: "What is Lorem Ipsum?",
    postprofileImage: "",
    postDescrption: "Lorem Ipsum is simply dummy text of the printing",
    postFileImage: AppImages.imageOne,
    postLikes: "555",
    postComments: "129",
    postStatus: "1",
  ),
];

List<ConnectedPeopleModel> listConnectedPeople = [
  ConnectedPeopleModel(
    id: "1",
    profileImage: AppImages.userOne,
    userName: "Monirudin Laskar",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
  ConnectedPeopleModel(
    id: "2",
    profileImage: AppImages.userTwo,
    userName: "Philip Weeks",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
  ConnectedPeopleModel(
    id: "3",
    profileImage: AppImages.userThree,
    userName: "Sara Paul",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
  ConnectedPeopleModel(
    id: "4",
    profileImage: AppImages.userOne,
    userName: "Georgy Richard",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
  ConnectedPeopleModel(
    id: "5",
    profileImage: AppImages.userTwo,
    userName: "Behnam Janko",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
  ConnectedPeopleModel(
    id: "6",
    profileImage: AppImages.userThree,
    userName: "Erna Potter",
    peopleTitle: "Hello Data",
    peopleStatus: "1",
  ),
];

List categories = [
  {
    "id": 1,
    "categoryName": "Category One",
    "isCheck": false,
  },
  {
    "id": 2,
    "categoryName": "Category Two",
    "isCheck": true,
  },
  {
    "id": 3,
    "categoryName": "Category Three",
    "isCheck": false,
  },
];

List subCategoryLIst = [
  {
    "id": 1,
    "categoryId": 1,
    "subcategoriName": "Category One 1",
    "isCheck": false,
  },
  {
    "id": 2,
    "categoryId": 1,
    "subcategoriName": "Category One 2",
    "isCheck": true,
  },
  {
    "id": 3,
    "categoryId": 1,
    "subcategoriName": "Category One 3",
    "isCheck": false,
  },
  {
    "id": 4,
    "categoryId": 1,
    "subcategoriName": "Category One 4",
    "isCheck": false,
  },
  {
    "id": 5,
    "categoryId": 1,
    "subcategoriName": "Category One 5",
    "isCheck": true,
  },
  {
    "id": 6,
    "categoryId": 1,
    "subcategoriName": "Category One 6",
    "isCheck": false,
  },
  {
    "id": 7,
    "categoryId": 1,
    "subcategoriName": "Category One 7",
    "isCheck": false,
  },
  {
    "id": 8,
    "categoryId": 1,
    "subcategoriName": "Category One 8",
    "isCheck": true,
  },
  {
    "id": 9,
    "categoryId": 1,
    "subcategoriName": "Category One 9",
    "isCheck": false,
  },
  {
    "id": 10,
    "categoryId": 1,
    "subcategoriName": "Category One 10",
    "isCheck": false,
  },
  {
    "id": 11,
    "categoryId": 1,
    "subcategoriName": "Category One 11",
    "isCheck": false,
  },
  {
    "id": 12,
    "categoryId": 1,
    "subcategoriName": "Category One 12",
    "isCheck": false,
  },
  {
    "id": 13,
    "categoryId": 1,
    "subcategoriName": "Category One 13",
    "isCheck": false,
  },
];

List subCategoryTwo = [
  {
    "id": 354341,
    "categoryId": 2,
    "subcategoriName": "Category Two 1",
    "isCheck": false,
  },
  {
    "id": 354342,
    "categoryId": 2,
    "subcategoriName": "Category Two 2",
    "isCheck": true,
  },
  {
    "id": 354343,
    "categoryId": 2,
    "subcategoriName": "Category Two 3",
    "isCheck": false,
  },
  {
    "id": 354344,
    "categoryId": 2,
    "subcategoriName": "Category Two 4",
    "isCheck": false,
  },
  {
    "id": 354345,
    "categoryId": 2,
    "subcategoriName": "Category Two 5",
    "isCheck": true,
  },
  {
    "id": 354346,
    "categoryId": 2,
    "subcategoriName": "Category Two 6",
    "isCheck": false,
  },
  {
    "id": 354347,
    "categoryId": 2,
    "subcategoriName": "Category Two 7",
    "isCheck": false,
  },
  {
    "id": 354348,
    "categoryId": 2,
    "subcategoriName": "Category Two 8",
    "isCheck": true,
  },
  {
    "id": 354349,
    "categoryId": 2,
    "subcategoriName": "Category Two 9",
    "isCheck": false,
  },
];
List subCategoryThree = [
  {
    "id": 567891,
    "categoryId": 3,
    "subcategoriName": "Category Three 1",
    "isCheck": false,
  },
  {
    "id": 567892,
    "categoryId": 3,
    "subcategoriName": "Category Three 2",
    "isCheck": true,
  },
  {
    "id": 567893,
    "categoryId": 3,
    "subcategoriName": "Category Three 3",
    "isCheck": false,
  },
  {
    "id": 567894,
    "categoryId": 3,
    "subcategoriName": "Category Three 4",
    "isCheck": false,
  },
  {
    "id": 567895,
    "categoryId": 3,
    "subcategoriName": "Category Three 5",
    "isCheck": true,
  },
  {
    "id": 567896,
    "categoryId": 3,
    "subcategoriName": "Category Three 6",
    "isCheck": false,
  },
  {
    "id": 567897,
    "categoryId": 3,
    "subcategoriName": "Category Three 7",
    "isCheck": false,
  },
  {
    "id": 567898,
    "categoryId": 3,
    "subcategoriName": "Category Three 8",
    "isCheck": true,
  },
  {
    "id": 567899,
    "categoryId": 3,
    "subcategoriName": "Category Three 9",
    "isCheck": false,
  },
  {
    "id": 5678910,
    "categoryId": 3,
    "subcategoriName": "Category Three 10",
    "isCheck": false,
  },
  {
    "id": 5678911,
    "categoryId": 3,
    "subcategoriName": "Category Three 11",
    "isCheck": false,
  },
  {
    "id": 5678912,
    "categoryId": 3,
    "subcategoriName": "Category Three 12",
    "isCheck": false,
  },
  {
    "id": 5678913,
    "categoryId": 3,
    "subcategoriName": "Category Three 13",
    "isCheck": false,
  },
  {
    "id": 56714898,
    "categoryId": 3,
    "subcategoriName": "Category Three 14",
    "isCheck": true,
  },
  {
    "id": 5678915,
    "categoryId": 3,
    "subcategoriName": "Category Three 15",
    "isCheck": false,
  },
  {
    "id": 567891016,
    "categoryId": 3,
    "subcategoriName": "Category Three 16",
    "isCheck": false,
  },
  {
    "id": 56789117,
    "categoryId": 3,
    "subcategoriName": "Category Three 17",
    "isCheck": false,
  },
  {
    "id": 56789128,
    "categoryId": 3,
    "subcategoriName": "Category Three 18",
    "isCheck": false,
  },
  {
    "id": 56789139,
    "categoryId": 3,
    "subcategoriName": "Category Three 19",
    "isCheck": false,
  },
];
