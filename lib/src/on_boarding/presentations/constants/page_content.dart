import 'package:bidding/core/res/media_res.dart';
import 'package:equatable/equatable.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.image,
    required this.title,
    required this.description,
  });

  const PageContent.first()
      : this(
          image: MediaRes.casualReading,
          title: 'Translate',
          description: " words, learn & have fun",
        );

  const PageContent.second()
      : this(
          image: MediaRes.casualLife,
          title: 'Transcribe',
          description: " speech, & have fun",
        );

  const PageContent.third()
      : this(
          image: MediaRes.casualMeditationScience,
          title: 'Unleash',
          description: " the power of, learn & have fun",
        );

  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}
