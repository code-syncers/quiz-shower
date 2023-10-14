import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const Article._();

  const factory Article({
    required String id,
    required String createdBy,
    required DateTime createdAt,
    required String title,
    required String description,
    required bool isBookmarked,
    required ArticleType type,
    required String? url,
    required String content,
    @Default(false) bool isPublic,
  }) = _Article;

  static Article mock() {
    return Article(
      id: '1',
      createdBy: 'taro',
      createdAt: DateTime.now(),
      title: '透明UIを作る',
      description: 'Flutterで透明UIを作る方法を紹介します。',
      isBookmarked: false,
      type: ArticleType.url,
      url: 'https://gajeroll.com/20230606-wwdc23/',
      content:
          '記事本文(例)です。昔々、ある小さな村に、不思議な出来事が起きました。その村に住む人々は、日々の生活に飽き飽きしていました。村は何も変わらず、毎日が同じことの繰り返しでした。しかし、ある日、村の端にひときわ大きな木が現れました。この木は普通の木とは違い、まるで魔法のような光を放っていました。村人たちは驚きと興奮でわいわいと集まり、その木の前で不思議に思いながらも楽しい時間を過ごしました。村人たちはこの木を「幸運の木」と呼ぶことに決めました。幸運の木は、その名の通り、村人たちに幸運をもたらすと言われました。その日以降、村の運勢は劇的に変わりました。農作物は豊かに実り、商売繁盛、健康な子どもたちが生まれ、村人たちは幸せいっぱいでした。しかし、村人たちの中には、幸運の木を守る必要があると信じる者もいました。彼らは夜間に木を見張り、不寝番をすることを始めました。幸運の木は宝物と化し、その価値は日に日に高まっていきました。ある晩、不寝番の村人の一人が目撃したことが、村に大きな騒動を巻き起こしました。月明かりの下、彼は幸運の木の近くで輝く光を見つけました。驚きと恐れに満ちた彼は、その光に近づいてみると、光が木からではなく、地下から発せられていることに気付きました。地下に潜り込むと、そこには巨大な宝石が埋まっていました。これが幸運の木の真実の源だったのです。不寝番の村人は秘密を守り、村には宝石の存在を明かしませんでした。しかし、この宝石が村にもたらす幸運は続き、ますます繁栄しました。村は富み、文化が花開き、人々は幸せに暮らしました。そして、村人たちは宝石を幸運の木に返すことを決意しました。宝石を返すことで、村人たちは真の幸福を見つけたのです。彼らは共に助け合い、友情と信頼が築かれました。幸運の木は再び魔法のような光を放ちましたが、その光は村人たちの心からの幸福に由来していました。この村の物語は、私たちに、幸福は物質的な富だけではなく、共感と協力によってもたらされることを教えてくれます。物事を共有し、心を開くことで、私たちは真の幸福を見つけることができるのです。',
    );
  }
}

enum ArticleType {
  url,
  manual,
}
