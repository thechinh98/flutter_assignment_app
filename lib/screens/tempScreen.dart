import 'package:flutter/material.dart';

class GuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  static var fifthGuide = [
    '本サービスの利用を希望する方（以下「登録希望者」といいます）は、本規約を遵守することに同意したうえで、当社の定める一定の事項（以下「登録事項」といいます）を当社の定める方法で申請してください。',
    '当社は、当社の基準に従って、前項に基づいて登録申請を行った登録希望者（以下「登録申請者」といいます）の登録の可否を判断し、当社が登録を認める場合にはその旨を登録申請者に通知します。登録申請者のユーザーとしての登録は、当社が本項の通知を行ったことをもって完了したものとします。',
    '前項に定める登録の完了時に、サービス利用契約がユーザーと当社との間に成立し、ユーザーは本サービスを本規約に従い利用することができるようになります。',
    '当社は、登録申請者が次の各号のいずれかの事由に該当する場合は、登録及び再登録を拒否することがあり、またその理由について一切開示義務を負いません。',
  ];
  static var detailsInFifthGuide = [
    '当社に提供した登録事項の全部又は一部につき虚偽、誤記又は記載漏れがあった場合',
    '登録希望者が、当社の定める方法によらず入会の申込を行った場合',
    '反社会的勢力等（暴力団、暴力団員、反社会的勢力、その他これに準ずる者を意味します。以下同じ。）である、又は資金提供その他を通じて反社会的勢力等との何らかの交流若しくは関与を行っていると当社が判断した場合',
    '登録希望者が過去当社との契約に違反した者又はその関係者であると当社が判断した場合',
    '第12条（登録抹消等）に定める措置を受けたことがある場合',
    'その他当社が登録を適当でないと判断した場合',
  ];
  static var seventhGuide = [
    'ユーザーは、自己の責任において、本サービスに関するパスワード及びユーザーIDを適切に管理及び保管するものとし、これを第三者に利用させ、又は貸与、譲渡、名義変更、売買等をしてはならないものとします。',
    'パスワード及びユーザーIDの管理不十分、使用上の過誤、第三者の使用等によって生じた損害に関する責任はユーザーが負うものとし、当社は一切の責任を負いません。',
    '登録事項が盗用され又は第三者に利用されていることが判明した場合、ユーザーは直ちにその旨を当社に通知するとともに、当社からの指示に従うものとします。'
  ];
  static var ninthGuide = [
    '法令に違反する行為又は犯罪行為に関連する行為',
    '当社又は第三者に対する詐欺又は脅迫行為',
    '公序良俗に反する行為',
    '当社又は第三者の知的財産権、プライバシー等の権利又は財産等の利益を侵害する行為又は侵害するおそれのある行為',
    '当社又は第三者の名誉・信用を毀損又は不当に差別若しくは誹謗中傷する行為',
    '当社又は第三者に経済的損害を与える行為',
    'コンピューターウィルス、有害なプログラムを仕様又はそれを誘発する行為',
    '本サービス用インフラ設備に対して過度な負担となるストレスをかける行為',
    '本サービスの運営を妨害するおそれのある行為',
    '当社のネットワーク、システム等に不正にアクセスし、又は不正なアクセスを試みる行為',
    '第三者に成りすます行為',
    '本サービスの他の利用者のパスワード又はIDを利用する行為',
    '洗車等提供事業者の情報を収集し同業を営む行為',
    '当社、本サービスの他の利用者又はその他の第三者に不利益、損害、不快感等を与える行為',
    '本アプリ上その他で当社が示す本サービスに関するルールに抵触する行為',
    '反社会的勢力等への利益供与',
    '前各号の行為を直接若しくは間接に惹起し、又は容易にする行為',
    'その他、当社が不適切と判断する行為'
  ];
  static var tenthDetailsGuide = [
    '本サービスに係るコンピュータ・システムの点検又は保守作業を緊急に行う場合',
    'コンピュータ、通信回線等が事故により停止した場合',
    '地震、落雷、火災、風水害、停電、天災地変等の不可抗力により本サービスの運営ができなくなった場合',
    'その他、当社が停止又は中断を必要とした場合',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: guidePageAppBar,
      body: Container(
        child: ListView(
          children: <Widget>[
            titleRow,
            detailsRow,
          ],
        ),
      ),
    );
  }

  Widget guidePageAppBar = AppBar(
    backgroundColor: Color.fromRGBO(250, 250, 250, 100),
    leading: Text(''),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          IconData(58837, fontFamily: 'MaterialIcons'),
        ),
        onPressed: () {},
      ),
    ],
  );
  Widget titleRow = Container(
    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
    color: Color.fromRGBO(2, 136, 209, 100),
    child: Text(
      'wash WALLETサービス利用規約',
    ),
  );

  Widget detailsRow = Container(
    padding: EdgeInsets.all(15),
    color: Color.fromRGBO(250, 250, 250, 100),
    child: Column(
      children: <Widget>[
        description,
        firstSection,
        secondSection,
        thirdSection,
        forthSection,
        fifthSection,
        sixthSection,
        seventhSection,
        eighthSection,
        ninthSection,
        tenthSection,
        eleventhSection,
        twelvethSection,
        thirdteenSection,
        forthteenSection,
        fifthteenSection,
        sixteenSection,
        seventeenthSection,
        eighteenSection,
        ninthteenSection,
        twentyOneSection,
        twentyTwoSection,
      ],
    ),
  );

  static Widget description = Container(
    padding: EdgeInsets.all(0),
    child: Text(
      '本規約には、本サービスの提供条件及びユーザーの皆様と当社との間の権利義務関係が定められています。本サービスの利用に際しては、本規約の全文をお読みいただいたうえで本規約に同意いただく必要があります。',
    ),
  );

  static Widget firstSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第１条（適用）'),
        SizedBox(
          height: 10,
        ),
        Text(
          '1. 本規約は、本サービスの利用にあたり、サービスの提供条件及びユーザーと当社との関係を定めることを目的とし、ユーザーと当社との間の本サービスの利用に関わる事項に適用されます。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '2. 本規約の内容と、本規約外における本サービスの説明等とが異なる場合は、本規約の規定が優先して適用されるものとします。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
  static Widget secondSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第２条（定義）'),
        SizedBox(
          height: 10,
        ),
        Text(
          '本規約において使用する下表の用語（５０音順）は、各々下表に定める意味を有するものとします。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
        _createSecondSectionTable('洗車等', '車両洗浄等の自動車整備に関連するサービス'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable(
            '洗車等提供事業者', '本サービスを利用して、ユーザーに対し洗車等を提供しようとする事業者'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable(
            '知的財産権', '本サービスを利用して行われる、洗車等提供事業者とユーザーとの間の洗車サービス利用等に関する取引'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable(
            'ユーザー', '第５条（登録）に基づいて本サービスの利用者として登録がなされた個人又は法人'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable('本アプリケーション', '本サービスのコンテンツが利用可能なアプリケーション'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable(
            '本コンテンツ', '本サービス上で提供される文字、音、静止画、動画、ソフトウェアプログラム、コード等の総称'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable('本サービス', '当社が提供するwash WALLETサービス'),
        SizedBox(
          height: 5,
        ),
        _createSecondSectionTable(
            '本サービス利用契約', '当社とユーザーとの間に締結される本サービスの利用に関する契約'),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );

  static Container _createSecondSectionTable(String name, String details) {
    return Container(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Color.fromRGBO(228, 228, 228, 100),
              width: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(name),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(236, 239, 240, 100),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(details),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget thirdSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第３条（本サービスの内容及び当社の役割）'),
        SizedBox(
          height: 10,
        ),
        Text(
          '本サービスは、洗車等取引を行うための機会を当社が提供することを内容とするものです。そのため、当社は、洗車等取引の当事者にはならず、別途定めた場合を除き、売買契約の取消し、解約、解除、返品・返金や保証などの取引に付随する行為に関しては一切関与いたしません。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
      ],
    ),
  );
  static Widget forthSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第４条（洗車等の内容）'),
        SizedBox(
          height: 10,
        ),
        Text(
          '各洗車等の内容、価格、決済方法等については、各洗車等提供事業者の運営するそれぞれの店舗ページに記載されています。ユーザーは、店舗ページの記載内容をよくご確認のうえ、洗車等取引における一切の義務を自己の費用と責任において遂行するものとします。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
      ],
    ),
  );
  static Widget fifthSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第５条（登録）'),
        Container(
          child: getGuideTextWidget(fifthGuide),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: getGuideDetailsWidget(detailsInFifthGuide),
        )
      ],
    ),
  );
  static Widget sixthSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第６条（登録事項の変更）'),
        SizedBox(
          height: 10,
        ),
        Text(
          'ユーザーは、登録事項に変更があった場合、当社の定める方法により当該変更事項を遅滞なく当社に通知するものとします。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
      ],
    ),
  );
  static Widget seventhSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第７条（パスワード及びユーザーIDの管理）'),
        getGuideTextWidget(seventhGuide),
      ],
    ),
  );
  static Widget eighthSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第８条（料金）'),
        Text(
          'ユーザーは、本サービス利用の対価を支払う義務はありません。なお、洗車等取引として、洗車等提供事業者に対し洗車等の対価を支払う義務が発生する場合があります。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
      ],
    ),
  );
  static Widget ninthSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第９条（禁止事項）'),
        Text(
          '本サービスの利用に際し、ユーザーは、次の各号のいずれかに該当する行為又は該当すると当社が判断する行為をしてはなりません。',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(0, 0, 0, 100),
          ),
        ),
        getGuideDetailsWidget(ninthGuide),
      ],
    ),
  );
  static Widget tenthSection = Container(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        titleGuide('第１０条（本サービスの停止等）'),
        Text(
          '1. 当社は、次の各号のいずれかに該当する場合には、ユーザーに事前に通知することなく、本サービスの全部又は一部の提供を停止又は中断することができるものとします。',
          style: TextStyle(fontSize: 17),
        ),
        getGuideDetailsWidget(tenthDetailsGuide),
        Text(
          '2. 当社は、本条に基づき当社が行った措置に基づきユーザーに生じた損害について一切の責任を負いません。',
          style: TextStyle(fontSize: 17),
        ),
      ],
    ),
  );

  static var eleventhGuide = [
    '本サービス、本アプリ及び本コンテンツに関する知的財産権は全て当社又は当社にライセンスを許諾している者に帰属しており、本規約に基づく本サービス、本アプリ及び本コンテンツの利用許諾は、本サービス、本アプリ及び本コンテンツに関する当社又は当社にライセンスを許諾している者の知的財産権の使用許諾を意味するものではありません。',
    'ユーザーは、当社の定める利用範囲を超えていかなる方法によっても複製､送信､譲渡（ユーザー同士の売買も含みます）､貸与､翻訳､翻案、無断で転載、二次使用、営利目的の使用、改変、逆アセンブル、逆コンパイル、リバースエンジニアリング等を行うことをしてはなりません。'
  ];
  static Widget eleventhSection = Container(
    child: Column(
      children: [
        titleGuide('第１１条（権利帰属等）'),
        getGuideTextWidget(eleventhGuide),
      ],
    ),
  );

  static var twelvethDetailsGuide = [
    '本規約のいずれかの条項に違反した場合',
    '登録事項に虚偽の事実があることが判明した場合',
    '支払停止若しくは支払不能となり、又は破産手続開始、民事再生手続開始、会社更正手続開始、特別清算開始若しくはこれらに類する手続の開始の申立てがあった場合',
    '６か月以上本サービスの利用がない場合　',
    '当社からの問い合わせその他の回答を求める連絡に対して３０日間以上応答がない場合',
    ' 第５条（登録）第４項各号に該当する場合',
    'その他、当社が本サービスの利用、ユーザーとしての登録、又は本サービス利用契約の継続を適当でないと判断した場合'
  ];

  static Widget twelvethSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１２条（登録抹消等）'),
        Text(
          '1. 当社は、ユーザーが、次の各号のいずれかの事由に該当する場合は、事前に通知又は催告することなく、当該ユーザーについて本サービスの利用を一時的に停止し、又はユーザーとしての登録を抹消、若しくは本サービス利用契約を解除することができます。',
          style: TextStyle(fontSize: 17),
        ),
        getGuideDetailsWidget(twelvethDetailsGuide),
        Text(
            '2. 前項各号のいずれかの事由に該当した場合、ユーザーは、当社に対して負っている債務の一切について当然に期限の利益を失い、直ちに当社に対して全ての債務の支払を行わなければなりません。',
            style: TextStyle(fontSize: 17)),
        Text(
          '3. 当社は、本条に基づき当社が行った行為によりユーザーに生じた損害について一切の責任を負いません。',
          style: TextStyle(fontSize: 17),
        ),
      ],
    ),
  );

  static var thirteenGuide = [
    'ユーザーは当社の定める方法で当社に通知することにより、本サービスから退会し、自己のユーザーとしての登録を抹消することができます。',
    '退会にあたり、ユーザーが当社に対して負っている債務が有る場合は、ユーザーは当社に対して負っている債務の一切について当然に利益を失い、直ちに当社に対して全ての債務を履行しなければなりません。',
    '退会後の本アプリ上のユーザーの利用者情報の取扱いについては、第１７条（利用者情報の取扱い）の規定に従うものとします。',
  ];
  static Widget thirdteenSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１３条（退会）'),
        getGuideTextWidget(thirteenGuide),
      ],
    ),
  );

  static var forthteenGuide = [
    ' 当社は、当社の都合により、本サービスの内容を変更し、又は提供を終了することができます。当社が本サービスの提供を終了する場合、当社はユーザーに事前に通知するものとします。',
    '当社は、本条に基づき当社が行った措置によってユーザーに生じた損害について一切の責任を負いません。',
  ];
  static Widget forthteenSection = Container(
    child: Column(
      children: [
        titleGuide('第１４条（本サービスの内容の変更又は終了）'),
        getGuideTextWidget(forthteenGuide),
      ],
    ),
  );

  static var fifteenGuide = [
    '当社は、本サービスがユーザーの特定の目的に適合すること、期待する機能、商品的価値、正確性及び有用性を有すること、ユーザーによる本サービスの利用がユーザーに適用のある法令、業界団体の内部規則等に適合すること並びに不具合が生じないことについては、何ら保証するものではありません。',
    '当社は、本サービスが全ての情報端末に対応していることを保証するものではなく、本サービスの利用に供する情報端末のＯＳのバージョンアップ等に伴い、本サービスの動作に不具合が生じる可能性があることにつき、ユーザーはあらかじめ了承するものとします。かかる不具合が生じた場合にプログラムの修正等を当社が行ったとしても、当該不具合が解消されることを保証するものではありません。',
    'ユーザーは、AppStore、GooglePlay等のサービスストアの利用規約および運用方針の変更等に伴い、本サービスの一部又は全部の利用が制限される可能性があることをあらかじめ了承するものとします。',
    '当社は、ユーザーの本サービスの利用環境に一切関与せず、本サービスの提供の中断、停止、終了、利用不能又は変更、ユーザーが本サービスに送信したメッセージ又情報の削除又は消失、ユーザーの登録の抹消、本サービスの利用による登録データの消失又は機器の故障若しくは損傷、その他本サービスに関してユーザーが被った損害（以下「ユーザー損害」といいます）につき、賠償する責任を一切負わないものとします。',
    '何らかの理由により当社が責任を負う場合であっても、当社は、ユーザー損害につき、当該損害が発生した月から過去に遡って１年の間にユーザーが本サービスの利用を通して洗車等提供事業者に支払った対価の金額を超えて賠償する責任を負わないものとし、また、付随的損害、間接損害、特別損害、将来の損害及び逸失利益にかかる損害については、賠償する責任を負わないものとします。',
    'ユーザーと洗車等提供事業者その他の第三者との間の論議・紛争その他のトラブルについて、当社は一切責任を負わないものとします。ユーザーは洗車等提供事業者その他の第三者とトラブルになった場合であっても、自己の責任で解決するものとし、当社には一切の請求をしないものとします。',
  ];
  static Widget fifthteenSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１５条（保証の否認及び免責）'),
        getGuideTextWidget(fifteenGuide),
      ],
    ),
  );
  static Widget sixteenSection = Container(
    child: Column(
      children: [
        titleGuide('第１６条（秘密保持）'),
        Text(
          'ユーザーは、本サービスに関連して当社がユーザーに対して秘密に取り扱うことを求めて開示した非公知の情報について、当社の事前の書面による承諾がある場合を除き、秘密に取り扱うものとし、登録抹消等になった後も同様とします。',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    ),
  );

  static var seventeenthGuide = [
    '本アプリ上のユーザーの利用者情報（個人情報を含む。）の取扱いについては、当社が別途定める「wash WALLETサービスにおける利用者情報の取扱いについて」の定めによるものとし、ユーザーは、当該定めに従って当社がユーザーの利用者情報を取り扱うことについて同意するものとします。',
    '当社は、ユーザーが提供した情報、データ等を、個人を特定できない形での統計的な情報として、当社の裁量で、利用及び公開することができるものとし、ユーザーはこれに異議を唱えないものとします。'
  ];
  static Widget seventeenthSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１７条（利用者情報の取扱い）'),
        getGuideTextWidget(seventeenthGuide),
      ],
    ),
  );

  static var eighteenGuide = [
    '  当社は、利用者の承諾を得ることなく、いつでも、本規約の内容を変更することができるものとし、利用者はこれを異議なく承諾するものとします。',
    '  当社は、本規約を変更した場合には、当該変更内容を当社の定める方法により通知します。当該通知後、ユーザーが本サービスを利用したとき又は当社の定める期間内に登録抹消の手続をとらなかったときには、ユーザーは本規約の変更に同意したものとみなします。',
    '  前項の変更の効力は、当社が変更の通知を行った時点から生じるものとします。',
  ];
  static Widget eighteenSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１８条（本規約の変更）'),
        getGuideTextWidget(eighteenGuide),
      ],
    ),
  );
  static var ninthteenGuide = [
    'ユーザーは、当社の書面による事前の承諾がない限り、本サービス利用契約上の地位又は本規約に基づく権利若しくは義務の全部又は一部につき、第三者に対し譲渡、移転、担保設定、その他の処分をしてはならないものとします。',
    '当社は、本サービスにかかる事業の全部又は一部を当社の裁量により第三者に譲渡することができ、当該事業譲渡に伴い本サービス利用契約上の地位、本規約に基づく権利及び義務並びにユーザーの登録事項その他の顧客情報を当該事業譲渡の譲受人に譲渡できるものとします。ユーザーは当該譲渡につき本項においてあらかじめ同意したものとみなします。なお、本項に定める事業譲渡には、通常の事業譲渡のみならず、会社分割その他事業が移転するあらゆる場合を含むものとします。'
  ];
  static Widget ninthteenSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第１９条（連絡又は通知）'),
        getGuideTextWidget(ninthteenGuide),
      ],
    ),
  );

  static Widget twentyOneSection = Container(
    child: Column(
      children: <Widget>[
        titleGuide('第２１条（分離可能性'),
        Text(
          '本規約のいずれかの条項又はその一部が、消費者契約法その他の法令等により無効又は執行不能と判断された場合であっても、本規約の残りの規定及び一部が無効又は執行不能と判断された規定の残りの部分は、継続して完全に効力を有するものとします。',
        ),
      ],
    ),
  );

  static var twentyTwoGuide = [
    '本規約及び本サービス利用契約の有効性、解釈及び履行については、日本法に準拠し、日本法に従って解釈されるものとします。なお、本サービスにおいて物品の売買が発生する場合であっても、国際物品売買契約に関する国際連合条約の適用を排除することに合意します。',
    '本規約若しくは本サービス利用契約に起因し、又は関連する一切の紛争については、訴額に応じて、東京簡易裁判所又は東京地方裁判所を専属的合意管轄裁判所とします｡'
  ];
  static Widget twentyTwoSection = Container(
      child: Column(
        children: <Widget>[
          titleGuide('第２２条（準拠法及び管轄裁判所）'),
          getGuideTextWidget(twentyTwoGuide),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '20●●年●月●日　施行',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ));
  static Widget getGuideTextWidget(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 1; i < strings.length + 1; i++) {
      list.add(
        new Container(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "$i. ",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Expanded(
                  child: Text(strings[i - 1]),
                ),
              ],
            ),
          ),
        ),
      );
      list.add(
        SizedBox(
          height: 10,
        ),
      );
    }
    return new Column(children: list);
  }

  static Widget getGuideDetailsWidget(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 1; i < strings.length + 1; i++) {
      list.add(
        new Container(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "($i) ",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Expanded(
                  child: Text(strings[i - 1]),
                ),
              ],
            ),
          ),
        ),
      );
      list.add(
        SizedBox(
          height: 10,
        ),
      );
    }
    return new Column(children: list);
  }

  static Container titleGuide(String text) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(43, 163, 217, 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}