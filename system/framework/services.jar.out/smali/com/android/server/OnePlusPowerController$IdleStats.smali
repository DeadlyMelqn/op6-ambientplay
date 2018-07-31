.class public Lcom/android/server/OnePlusPowerController$IdleStats;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleStats"
.end annotation


# static fields
.field private static final RECORDS_FILENAME:Ljava/lang/String; = "idle-records.xml"


# instance fields
.field private mDeepSleepDuration:Ljava/time/Duration;

.field private mDeepSleepStart:Ljava/time/LocalTime;

.field public mFile:Landroid/util/AtomicFile;

.field private final mIdleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OnePlusPowerController$IdleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRecordTime:Ljava/time/LocalDateTime;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    .line 1679
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1680
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1681
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "idle-records.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    .line 1682
    return-void
.end method

.method private readIdleItemLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 40
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1908
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, "type":I
    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    .line 1909
    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1913
    :cond_1
    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    .line 1914
    new-instance v35, Ljava/lang/IllegalStateException;

    const-string/jumbo v36, "not start tag found"

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 2034
    .end local v34    # "type":I
    :catch_0
    move-exception v11

    .line 2035
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    .line 1917
    .restart local v34    # "type":I
    :cond_3
    :try_start_1
    const-string/jumbo v35, "idle-items"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 1918
    const-string/jumbo v35, "last"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v4

    .line 1921
    .local v4, "attr":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v20

    .line 1922
    .local v20, "last":Ljava/time/LocalDateTime;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "last record time: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8

    .line 1932
    .end local v4    # "attr":Ljava/lang/String;
    .end local v20    # "last":Ljava/time/LocalDateTime;
    :cond_4
    :goto_1
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    .line 1933
    .local v21, "outerDepth":I
    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    .line 1934
    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 1935
    :cond_6
    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5

    .line 1939
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 1940
    .local v32, "tagName":Ljava/lang/String;
    const-string/jumbo v35, "item"

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 1941
    new-instance v17, Lcom/android/server/OnePlusPowerController$IdleItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleItem;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 1944
    .local v17, "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string/jumbo v35, "rawStart"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1945
    .restart local v4    # "attr":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 1946
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 1947
    .local v26, "rawStart":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v30

    .line 1948
    .local v30, "start":Ljava/time/LocalDateTime;
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalStartTime(Ljava/time/LocalDateTime;)V

    .line 1951
    .end local v26    # "rawStart":J
    .end local v30    # "start":Ljava/time/LocalDateTime;
    :cond_7
    const-string/jumbo v35, "rawEnd"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1952
    if-eqz v4, :cond_8

    .line 1953
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1954
    .local v24, "rawEnd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v16

    .line 1955
    .local v16, "end":Ljava/time/LocalDateTime;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalEndTime(Ljava/time/LocalDateTime;)V

    .line 1958
    .end local v16    # "end":Ljava/time/LocalDateTime;
    .end local v24    # "rawEnd":J
    :cond_8
    const-string/jumbo v35, "length"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1959
    if-eqz v4, :cond_9

    .line 1960
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 1961
    .local v22, "length":J
    invoke-static/range {v22 .. v23}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v7

    .line 1962
    .local v7, "duration":Ljava/time/Duration;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/OnePlusPowerController$IdleItem;->setDuration(Ljava/time/Duration;)V

    .line 1966
    .end local v7    # "duration":Ljava/time/Duration;
    .end local v22    # "length":J
    :cond_9
    const-string/jumbo v35, "localStart"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1967
    if-eqz v4, :cond_a

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v33

    .line 1970
    .local v33, "time":Ljava/time/LocalDateTime;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalStartTime(Ljava/time/LocalDateTime;)V

    .line 1973
    .end local v33    # "time":Ljava/time/LocalDateTime;
    :cond_a
    const-string/jumbo v35, "localEnd"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1974
    if-eqz v4, :cond_b

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v33

    .line 1977
    .restart local v33    # "time":Ljava/time/LocalDateTime;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalEndTime(Ljava/time/LocalDateTime;)V

    .line 1980
    .end local v33    # "time":Ljava/time/LocalDateTime;
    :cond_b
    const-string/jumbo v35, "duration"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1981
    if-eqz v4, :cond_c

    .line 1982
    invoke-static {v4}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v7

    .line 1983
    .restart local v7    # "duration":Ljava/time/Duration;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/OnePlusPowerController$IdleItem;->setDuration(Ljava/time/Duration;)V

    .line 1986
    .end local v7    # "duration":Ljava/time/Duration;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v35

    if-eqz v35, :cond_5

    .line 1987
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object v35

    if-eqz v35, :cond_5

    .line 1988
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v35

    if-eqz v35, :cond_5

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_2

    .line 2036
    .end local v4    # "attr":Ljava/lang/String;
    .end local v17    # "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    .end local v21    # "outerDepth":I
    .end local v32    # "tagName":Ljava/lang/String;
    .end local v34    # "type":I
    :catch_1
    move-exception v13

    .line 2037
    .local v13, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1924
    .end local v13    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v34    # "type":I
    :catch_2
    move-exception v5

    .line 1926
    .local v5, "dte":Ljava/time/format/DateTimeParseException;
    :try_start_4
    const-string/jumbo v35, "OnePlusPowerController"

    const-string/jumbo v36, "failed by simple date format, retry by milliseconds"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v18, v36, v38

    .line 1928
    .local v18, "last":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v36

    const/16 v37, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v37

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_1

    .line 2038
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "dte":Ljava/time/format/DateTimeParseException;
    .end local v18    # "last":J
    .end local v34    # "type":I
    :catch_3
    move-exception v14

    .line 2039
    .local v14, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1994
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "outerDepth":I
    .restart local v34    # "type":I
    :cond_d
    :goto_3
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2

    .line 1995
    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 1996
    :cond_e
    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    .line 1999
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 2000
    .restart local v32    # "tagName":Ljava/lang/String;
    const-string/jumbo v35, "deep-sleep"

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 2001
    const-string/jumbo v35, "start"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v4

    .line 2003
    .restart local v4    # "attr":Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 2005
    :try_start_6
    invoke-static {v4}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v31

    .line 2006
    .local v31, "start":Ljava/time/LocalTime;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V
    :try_end_6
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8

    .line 2015
    .end local v31    # "start":Ljava/time/LocalTime;
    :cond_f
    :goto_4
    :try_start_7
    const-string/jumbo v35, "length"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2016
    if-eqz v4, :cond_10

    .line 2018
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2019
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 2022
    .end local v8    # "duration":J
    :cond_10
    const-string/jumbo v35, "duration"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v4

    .line 2023
    if-eqz v4, :cond_d

    .line 2025
    :try_start_8
    invoke-static {v4}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v7

    .line 2026
    .restart local v7    # "duration":Ljava/time/Duration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V
    :try_end_8
    .catch Ljava/time/format/DateTimeParseException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_3

    .line 2027
    .end local v7    # "duration":Ljava/time/Duration;
    :catch_4
    move-exception v6

    .line 2028
    .local v6, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_9
    const-string/jumbo v35, "OnePlusPowerController"

    const-string/jumbo v36, "failed to parse duration"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_3

    .line 2040
    .end local v4    # "attr":Ljava/lang/String;
    .end local v6    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v21    # "outerDepth":I
    .end local v32    # "tagName":Ljava/lang/String;
    .end local v34    # "type":I
    :catch_5
    move-exception v15

    .line 2041
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2007
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v32    # "tagName":Ljava/lang/String;
    .restart local v34    # "type":I
    :catch_6
    move-exception v5

    .line 2009
    .restart local v5    # "dte":Ljava/time/format/DateTimeParseException;
    :try_start_a
    const-string/jumbo v35, "OnePlusPowerController"

    const-string/jumbo v36, "failed by simple date format, retry by milliseconds"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2011
    .local v28, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v35

    const-wide/16 v36, 0x3e8

    div-long v36, v28, v36

    invoke-static/range {v36 .. v37}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_4

    .line 2042
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "dte":Ljava/time/format/DateTimeParseException;
    .end local v21    # "outerDepth":I
    .end local v28    # "start":J
    .end local v32    # "tagName":Ljava/lang/String;
    .end local v34    # "type":I
    :catch_7
    move-exception v10

    .line 2043
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2044
    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    .line 2045
    .local v12, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v35, "OnePlusPowerController"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Failed parsing idle "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private writeIdleItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1842
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1843
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1844
    const-string/jumbo v5, "idle-items"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1845
    const-string/jumbo v5, "last"

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v7, v7, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1847
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1848
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1849
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 1850
    .local v3, "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string/jumbo v5, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write idle iteam: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string/jumbo v5, "item"

    const/4 v7, 0x0

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    const-string/jumbo v5, "localStart"

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v8, v8, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v8, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1853
    const-string/jumbo v5, "localEnd"

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v8, v8, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v8, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1854
    const-string/jumbo v5, "duration"

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v8, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1855
    const-string/jumbo v5, "item"

    const/4 v7, 0x0

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    :cond_0
    monitor-exit v6

    .line 1859
    const-string/jumbo v5, "idle-items"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1861
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v0

    .line 1862
    .local v0, "deepStart":Ljava/time/LocalTime;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v1

    .line 1864
    .local v1, "duration":Ljava/time/Duration;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1865
    const-string/jumbo v5, "deep-sleep"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    const-string/jumbo v5, "start"

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v6, v6, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1867
    const-string/jumbo v5, "duration"

    invoke-virtual {v1}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1868
    const-string/jumbo v5, "deep-sleep"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1872
    return-void

    .line 1847
    .end local v0    # "deepStart":Ljava/time/LocalTime;
    .end local v1    # "duration":Ljava/time/Duration;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public addIdleItem(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .locals 4
    .param p1, "start"    # Ljava/time/LocalDateTime;
    .param p2, "end"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1686
    new-instance v0, Lcom/android/server/OnePlusPowerController$IdleItem;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/OnePlusPowerController$IdleItem;-><init>(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    .line 1688
    .local v0, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get15()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1692
    :cond_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1695
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1696
    const-string/jumbo v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addIdleItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_1
    return-void

    .line 1688
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dumpIdleItems(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1712
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1713
    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 1714
    .local v0, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusPowerController$IdleItem;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1712
    .end local v0    # "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "item$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1717
    return-void
.end method

.method public getDataSet()[[D
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1800
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    aput v4, v3, v5

    aput v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1801
    .local v0, "dataSet":[[D
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1802
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1803
    aget-object v4, v0, v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusPowerController$IdleItem;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-double v6, v2

    const/4 v2, 0x0

    aput-wide v6, v4, v2

    .line 1804
    aget-object v4, v0, v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusPowerController$IdleItem;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    long-to-double v6, v6

    const/4 v2, 0x1

    aput-wide v6, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 1807
    return-object v0

    .line 1801
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getDeepSleepDuration()Ljava/time/Duration;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public getDeepSleepStart()Ljava/time/LocalTime;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getLastRecordTime()Ljava/time/LocalDateTime;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getNextSleepEnd()Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 1779
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get24(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1780
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get24(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v5

    return-object v5

    .line 1782
    :cond_0
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v4

    .line 1783
    .local v4, "time":Ljava/time/LocalTime;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v1

    .line 1785
    .local v1, "duration":Ljava/time/Duration;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1786
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 1787
    .local v0, "date":Ljava/time/LocalDate;
    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1788
    .local v3, "sleepStart":Ljava/time/LocalDateTime;
    invoke-virtual {v3, v1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1789
    .local v2, "sleepEnd":Ljava/time/LocalDateTime;
    return-object v2

    .line 1792
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v2    # "sleepEnd":Ljava/time/LocalDateTime;
    .end local v3    # "sleepStart":Ljava/time/LocalDateTime;
    :cond_1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v5

    return-object v5
.end method

.method public getNextSleepStart()Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1755
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get25(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1756
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get25(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v4

    return-object v4

    .line 1758
    :cond_0
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    if-nez v4, :cond_1

    return-object v5

    .line 1760
    :cond_1
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 1761
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1763
    .local v3, "time":Ljava/time/LocalTime;
    invoke-static {v0, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1764
    .local v2, "start":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1767
    .local v1, "now":Ljava/time/LocalDateTime;
    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1768
    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1771
    :cond_2
    return-object v2
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 1734
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1735
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public recordIdleItemLocked()V
    .locals 5

    .prologue
    .line 1811
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1812
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V

    .line 1815
    :try_start_0
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1816
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1817
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->writeIdleItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1818
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/OnePlusPowerController$IdleStats$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats$1;-><init>(Lcom/android/server/OnePlusPowerController$IdleStats;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 1837
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public resetIdleItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1701
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1705
    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1706
    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    .line 1707
    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    .line 1708
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1709
    return-void

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restoreIdleItemsLocked()V
    .locals 10

    .prologue
    .line 1875
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1876
    :try_start_0
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1880
    :try_start_1
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 1886
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1887
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->readIdleItemLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1892
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1897
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1898
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Reading idle items from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 1900
    .local v3, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "item: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleItem;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1875
    .end local v3    # "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 1893
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1889
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 1892
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 1893
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1890
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v7

    .line 1892
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1890
    :goto_2
    throw v7

    .line 1893
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1903
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method setDeepSleepDuration(Ljava/time/Duration;)V
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    .line 1728
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeepSleepDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_0
    return-void
.end method

.method setDeepSleepStart(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "start"    # Ljava/time/LocalTime;

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1721
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeepSleepStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_0
    return-void
.end method

.method public setLastRecordTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    .line 1797
    return-void
.end method
