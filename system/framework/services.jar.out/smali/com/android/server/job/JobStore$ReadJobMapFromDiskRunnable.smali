.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 579
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 580
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 865
    const-string/jumbo v4, "jobid"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 866
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "class"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 874
    const-string/jumbo v1, "connectivity"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 878
    :cond_0
    const-string/jumbo v1, "metered"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_1

    .line 880
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 882
    :cond_1
    const-string/jumbo v1, "unmetered"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_2

    .line 884
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 886
    :cond_2
    const-string/jumbo v1, "not-roaming"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_3

    .line 888
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 890
    :cond_3
    const-string/jumbo v1, "idle"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_4

    .line 892
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 894
    :cond_4
    const-string/jumbo v1, "charging"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_5

    .line 896
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 898
    :cond_5
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 950
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 952
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    .line 953
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    .line 954
    .local v8, "latestRunTimeElapsed":J
    const-string/jumbo v21, "deadline"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 955
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 956
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 958
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 959
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    .line 961
    .end local v10    # "latestRuntimeWallclock":J
    .end local v12    # "maxDelayElapsed":J
    :cond_0
    const-string/jumbo v21, "delay"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 962
    if-eqz v20, :cond_1

    .line 963
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 965
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 966
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    .line 969
    .end local v6    # "earliestRuntimeWallclock":J
    .end local v14    # "minDelayElapsed":J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    return-object v21
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 929
    const-string/jumbo v5, "delay"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 930
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 931
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 933
    .local v0, "earliestRunTimeRtc":J
    :goto_0
    const-string/jumbo v5, "deadline"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    if-eqz v4, :cond_1

    .line 935
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 937
    .local v2, "latestRunTimeRtc":J
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 932
    .end local v0    # "earliestRunTimeRtc":J
    .end local v2    # "latestRunTimeRtc":J
    :cond_0
    const-wide/16 v0, 0x0

    .restart local v0    # "earliestRunTimeRtc":J
    goto :goto_0

    .line 936
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .restart local v2    # "latestRunTimeRtc":J
    goto :goto_1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, 0x0

    .line 905
    const-string/jumbo v4, "initial-backoff"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 907
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 908
    .local v2, "initialBackoff":J
    const-string/jumbo v4, "backoff-policy"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 910
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 912
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .locals 13
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 630
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 631
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 633
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 634
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v12, :cond_0

    .line 635
    if-eq v1, v11, :cond_0

    .line 636
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 637
    const-string/jumbo v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Start tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_0
    if-ne v1, v11, :cond_2

    .line 640
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 641
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "No persisted jobs."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_1
    return-object v10

    .line 646
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "job-info"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 652
    .local v6, "version":I
    if-eqz v6, :cond_3

    .line 653
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-object v10

    .line 656
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-object v10

    .line 660
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 663
    :cond_4
    if-ne v1, v12, :cond_6

    .line 664
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 666
    const-string/jumbo v7, "job"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 667
    invoke-direct {p0, p2, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 668
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_7

    .line 669
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 670
    const-string/jumbo v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Read out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 679
    if-ne v1, v11, :cond_4

    .line 680
    return-object v2

    .line 674
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_8
    return-object v10
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 42
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v31

    .line 700
    .local v31, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 701
    const-string/jumbo v7, "uid"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 703
    .local v8, "uid":I
    const-string/jumbo v7, "priority"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 704
    .local v37, "val":Ljava/lang/String;
    if-eqz v37, :cond_0

    .line 705
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 707
    :cond_0
    const-string/jumbo v7, "flags"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 708
    if-eqz v37, :cond_1

    .line 709
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 711
    :cond_1
    const-string/jumbo v7, "sourceUserId"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 712
    if-nez v37, :cond_3

    const/4 v10, -0x1

    .line 714
    .local v10, "sourceUserId":I
    :goto_0
    const-string/jumbo v7, "lastSuccessfulRunTime"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 715
    if-nez v37, :cond_4

    const-wide/16 v16, 0x0

    .line 717
    .local v16, "lastSuccessfulRunTime":J
    :goto_1
    const-string/jumbo v7, "lastFailedRunTime"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 718
    if-nez v37, :cond_5

    const-wide/16 v18, 0x0

    .line 724
    .local v18, "lastFailedRunTime":J
    :goto_2
    const-string/jumbo v7, "sourcePackageName"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 726
    .local v9, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v7, "sourceTag"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 731
    .local v11, "sourceTag":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .line 732
    .local v29, "eventType":I
    const/4 v7, 0x4

    move/from16 v0, v29

    if-eq v0, v7, :cond_2

    .line 734
    const/4 v7, 0x2

    move/from16 v0, v29

    if-ne v0, v7, :cond_6

    .line 735
    const-string/jumbo v7, "constraints"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 734
    :goto_3
    if-nez v7, :cond_7

    .line 737
    const/4 v7, 0x0

    return-object v7

    .line 712
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "sourceUserId":I
    .end local v11    # "sourceTag":Ljava/lang/String;
    .end local v16    # "lastSuccessfulRunTime":J
    .end local v18    # "lastFailedRunTime":J
    .end local v29    # "eventType":I
    :cond_3
    :try_start_1
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "sourceUserId":I
    goto :goto_0

    .line 715
    :cond_4
    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .restart local v16    # "lastSuccessfulRunTime":J
    goto :goto_1

    .line 718
    :cond_5
    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v18

    .restart local v18    # "lastFailedRunTime":J
    goto :goto_2

    .line 719
    .end local v8    # "uid":I
    .end local v10    # "sourceUserId":I
    .end local v16    # "lastSuccessfulRunTime":J
    .end local v18    # "lastFailedRunTime":J
    .end local v31    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v37    # "val":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 720
    .local v21, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error parsing job\'s required fields, skipping"

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v7, 0x0

    return-object v7

    .line 734
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "uid":I
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v10    # "sourceUserId":I
    .restart local v11    # "sourceTag":Ljava/lang/String;
    .restart local v16    # "lastSuccessfulRunTime":J
    .restart local v18    # "lastFailedRunTime":J
    .restart local v29    # "eventType":I
    .restart local v31    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v37    # "val":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 740
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 745
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 749
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .line 750
    const/4 v7, 0x4

    move/from16 v0, v29

    if-eq v0, v7, :cond_8

    .line 751
    const/4 v7, 0x2

    move/from16 v0, v29

    if-eq v0, v7, :cond_9

    .line 752
    const/4 v7, 0x0

    return-object v7

    .line 741
    :catch_1
    move-exception v21

    .line 742
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading constraints, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v7, 0x0

    return-object v7

    .line 758
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v36

    .line 766
    .local v36, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 767
    .local v26, "elapsedNow":J
    move-object/from16 v0, v36

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->-wrap0(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v28

    .line 769
    .local v28, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v7, "periodic"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 771
    :try_start_4
    const-string/jumbo v7, "period"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 772
    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 773
    .local v34, "periodMillis":J
    const-string/jumbo v7, "flex"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 774
    if-eqz v37, :cond_e

    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 775
    .local v32, "flexMillis":J
    :goto_4
    move-object/from16 v0, v31

    move-wide/from16 v1, v34

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 780
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v14, v26, v34

    add-long v14, v14, v32

    cmp-long v7, v12, v14

    if-lez v7, :cond_a

    .line 781
    add-long v12, v26, v32

    add-long v24, v12, v34

    .line 783
    .local v24, "clampedLateRuntimeElapsed":J
    sub-long v22, v24, v32

    .line 785
    .local v22, "clampedEarlyRuntimeElapsed":J
    const-string/jumbo v12, "JobStore"

    .line 786
    const-string/jumbo v13, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    const/4 v7, 0x5

    new-array v14, v7, [Ljava/lang/Object;

    .line 788
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 789
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v14, v15

    .line 790
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v14, v15

    .line 792
    const-wide/16 v38, 0x3e8

    div-long v38, v22, v38

    .line 791
    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v14, v15

    .line 794
    const-wide/16 v38, 0x3e8

    div-long v38, v24, v38

    .line 793
    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x4

    aput-object v7, v14, v15

    .line 786
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 785
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v28

    .line 823
    .end local v22    # "clampedEarlyRuntimeElapsed":J
    .end local v24    # "clampedLateRuntimeElapsed":J
    .end local v32    # "flexMillis":J
    .end local v34    # "periodMillis":J
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 825
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 829
    :cond_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .line 830
    const/4 v7, 0x4

    move/from16 v0, v29

    if-eq v0, v7, :cond_b

    .line 831
    const/4 v7, 0x2

    move/from16 v0, v29

    if-ne v0, v7, :cond_13

    .line 832
    const-string/jumbo v7, "extras"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 831
    :goto_6
    if-nez v7, :cond_14

    .line 833
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 834
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading extras, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_c
    const/4 v7, 0x0

    return-object v7

    .line 759
    .end local v26    # "elapsedNow":J
    .end local v28    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v36    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_2
    move-exception v21

    .line 760
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 761
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error parsing execution time parameters, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_d
    const/4 v7, 0x0

    return-object v7

    .line 774
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "elapsedNow":J
    .restart local v28    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v34    # "periodMillis":J
    .restart local v36    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_e
    move-wide/from16 v32, v34

    .restart local v32    # "flexMillis":J
    goto/16 :goto_4

    .line 799
    .end local v32    # "flexMillis":J
    .end local v34    # "periodMillis":J
    :catch_3
    move-exception v21

    .line 800
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading periodic execution criteria, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v7, 0x0

    return-object v7

    .line 803
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v7, "one-off"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 805
    :try_start_5
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_10

    .line 806
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v12, v26

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 808
    :cond_10
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v7, v12, v14

    if-eqz v7, :cond_a

    .line 810
    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v12, v26

    .line 809
    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_5

    .line 812
    :catch_4
    move-exception v21

    .line 813
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading job execution criteria, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v7, 0x0

    return-object v7

    .line 817
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 818
    const-string/jumbo v7, "JobStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid parameter tag, skipping - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_12
    const/4 v7, 0x0

    return-object v7

    .line 831
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 839
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v30

    .line 840
    .local v30, "extras":Landroid/os/PersistableBundle;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 841
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 844
    const-string/jumbo v7, "android"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 845
    if-eqz v30, :cond_15

    .line 846
    const-string/jumbo v7, "SyncManagerJob"

    const/4 v12, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 844
    if-eqz v7, :cond_15

    .line 847
    const-string/jumbo v7, "owningPackage"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 848
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 849
    const-string/jumbo v7, "JobStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 850
    const-string/jumbo v13, "\'"

    .line 849
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_15
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    .line 856
    invoke-virtual/range {v31 .. v31}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 857
    move-object/from16 v0, v28

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, v28

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 859
    if-eqz p1, :cond_16

    const/16 v20, 0x0

    .line 855
    :goto_7
    invoke-direct/range {v6 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;JJJJLandroid/util/Pair;)V

    .line 860
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v6

    .end local v6    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_16
    move-object/from16 v20, v36

    .line 859
    goto :goto_7
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 584
    const/4 v7, 0x0

    .line 585
    .local v7, "numJobs":I
    const/4 v11, 0x0

    .line 586
    .local v11, "numSystemJobs":I
    const/4 v10, 0x0

    .line 589
    .local v10, "numSyncJobs":I
    :try_start_0
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 590
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v13, v12, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    :try_start_1
    iget-boolean v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v12}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 592
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_1

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 594
    .local v8, "now":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 595
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 596
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 597
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v6, v0}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 598
    iput-wide v8, v6, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 599
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v12, v6}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 601
    add-int/lit8 v7, v7, 0x1

    .line 602
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    const/16 v14, 0x3e8

    if-ne v12, v14, :cond_0

    .line 603
    add-int/lit8 v11, v11, 0x1

    .line 604
    invoke-static {v6}, Lcom/android/server/job/JobStore;->-wrap1(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_0

    .line 605
    add-int/lit8 v10, v10, 0x1

    .line 595
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "i":I
    .end local v6    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "now":J
    :cond_1
    :try_start_2
    monitor-exit v13

    .line 611
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iget v12, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v12, :cond_2

    .line 620
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v7, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 621
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v11, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 622
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1
    iput v10, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 625
    :cond_2
    const-string/jumbo v12, "JobStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Read "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " jobs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 590
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13

    throw v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 612
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 614
    const-string/jumbo v12, "JobStore"

    const-string/jumbo v13, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 619
    :cond_3
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iget v12, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v12, :cond_2

    .line 620
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v7, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 621
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v11, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 622
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    goto :goto_1

    .line 616
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "JobStore"

    const-string/jumbo v13, "Error jobstore xml."

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 619
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iget v12, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v12, :cond_2

    .line 620
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v7, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 621
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    iput v11, v12, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 622
    iget-object v12, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v12}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v12

    goto/16 :goto_1

    .line 618
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    .line 619
    iget-object v13, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v13}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v13

    iget v13, v13, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v13, :cond_4

    .line 620
    iget-object v13, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v13}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v13

    iput v7, v13, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 621
    iget-object v13, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v13}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v13

    iput v11, v13, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 622
    iget-object v13, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v13}, Lcom/android/server/job/JobStore;->-get2(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v13

    iput v10, v13, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 618
    :cond_4
    throw v12
.end method
