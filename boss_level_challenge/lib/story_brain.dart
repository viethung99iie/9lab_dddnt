import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle:
      'Bạn đang đi bộ về nhà sau buổi học muộn. Trời bắt đầu đổ mưa. Bỗng một chiếc xe hơi dừng lại bên lề, một người phụ nữ trung niên mỉm cười và nói: "Em muốn đi nhờ không?"',
      choice1: 'Cảm ơn cô, em lên xe ạ.',
      choice2: 'Không cần đâu cô, em tự đi bộ được.',
    ),
    Story(
      storyTitle:
      'Bạn lên xe. Cô ấy bắt chuyện một cách thân thiện. Nhưng rồi cô quẹo vào một con đường khác không phải hướng về nhà bạn.',
      choice1: 'Hỏi nhẹ: "Cô ơi, mình đang đi đâu vậy ạ?"',
      choice2: 'Giả vờ có điện thoại, tạo cớ để xuống xe.',
    ),
    Story(
      storyTitle:
      'Bạn từ chối đi nhờ và tiếp tục đi bộ dưới mưa. Một lúc sau, bạn nhận ra chiếc xe vẫn đi chầm chậm phía sau mình.',
      choice1: 'Chạy nhanh vào một cửa hàng gần đó.',
      choice2: 'Quay lại hỏi cô ta muốn gì.',
    ),
    Story(
      storyTitle:
      'Cô mỉm cười nói đang ghé tiệm tạp hóa một chút. Không lâu sau, bạn được thả đúng nơi cần đến. Mọi chuyện đều ổn.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    Story(
      storyTitle:
      'Bạn giả vờ nghe điện thoại, cô ấy không nói gì thêm và sau đó thả bạn xuống trạm xe buýt. An toàn rồi.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    Story(
      storyTitle:
      'Bạn chạy vào cửa hàng và gọi người thân. Khi nhìn ra, chiếc xe đã biến mất giữa màn mưa.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    Story(
      storyTitle:
      'Bạn quay lại hỏi. Cô ta không đáp, chỉ lặng lẽ lái xe đi. Bạn cảm thấy rùng mình và nhanh chóng rời khỏi đó.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        if (choiceNumber == 1) {
          _storyNumber = 1;
        } else {
          _storyNumber = 2;
        }
        break;
      case 1:
        if (choiceNumber == 1) {
          _storyNumber = 3;
        } else {
          _storyNumber = 4;
        }
        break;
      case 2:
        if (choiceNumber == 1) {
          _storyNumber = 5;
        } else {
          _storyNumber = 6;
        }
        break;
      default:
        restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber <= 2;
  }
}
