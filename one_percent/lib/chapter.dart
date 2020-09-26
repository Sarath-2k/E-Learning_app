import 'package:flutter/foundation.dart';

class Chapter {
  @required final String title;
  @required final int count;
  @required final int totalCount;
  @required final bool expanded;
  @required final String vers;

  Chapter(this.title, this.expanded, this.count, this.totalCount, this.vers);
}

