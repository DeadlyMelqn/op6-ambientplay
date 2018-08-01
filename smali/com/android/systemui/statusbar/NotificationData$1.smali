.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 282
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 18
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 286
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 287
    .local v12, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 288
    .local v13, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x3

    .line 289
    .local v2, "aImportance":I
    const/4 v6, 0x3

    .line 290
    .local v6, "bImportance":I
    const/4 v4, 0x0

    .line 291
    .local v4, "aRank":I
    const/4 v8, 0x0

    .line 293
    .local v8, "bRank":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 307
    const/4 v14, 0x1

    if-le v2, v14, :cond_1

    const/4 v3, 0x1

    .line 308
    .local v3, "aMedia":Z
    :goto_0
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 309
    const/4 v14, 0x1

    if-le v6, v14, :cond_3

    const/4 v7, 0x1

    .line 311
    .local v7, "bMedia":Z
    :goto_1
    const/4 v14, 0x4

    if-lt v2, v14, :cond_5

    .line 312
    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 313
    :goto_2
    const/4 v14, 0x4

    if-lt v6, v14, :cond_6

    .line 314
    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    .line 316
    :goto_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    .line 317
    .local v10, "isHeadsUp":Z
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    if-eq v10, v14, :cond_8

    .line 318
    if-eqz v10, :cond_7

    const/4 v14, -0x1

    :goto_4
    return v14

    .line 307
    .end local v3    # "aMedia":Z
    .end local v7    # "bMedia":Z
    .end local v10    # "isHeadsUp":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_0

    .line 306
    .end local v3    # "aMedia":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_0

    .line 309
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_1

    .line 308
    .end local v7    # "bMedia":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_1

    .line 311
    :cond_5
    const/4 v5, 0x0

    .local v5, "aSystemMax":Z
    goto :goto_2

    .line 313
    .end local v5    # "aSystemMax":Z
    :cond_6
    const/4 v9, 0x0

    .local v9, "bSystemMax":Z
    goto :goto_3

    .line 318
    .end local v9    # "bSystemMax":Z
    .restart local v10    # "isHeadsUp":Z
    :cond_7
    const/4 v14, 0x1

    goto :goto_4

    .line 319
    :cond_8
    if-eqz v10, :cond_9

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v14

    return v14

    .line 322
    :cond_9
    if-eq v3, v7, :cond_b

    .line 324
    if-eqz v3, :cond_a

    const/4 v14, -0x1

    :goto_5
    return v14

    :cond_a
    const/4 v14, 0x1

    goto :goto_5

    .line 325
    :cond_b
    if-eq v5, v9, :cond_d

    .line 327
    if-eqz v5, :cond_c

    const/4 v14, -0x1

    :goto_6
    return v14

    :cond_c
    const/4 v14, 0x1

    goto :goto_6

    .line 328
    :cond_d
    if-eq v4, v8, :cond_e

    .line 329
    sub-int v14, v4, v8

    return v14

    .line 331
    :cond_e
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-wide v14, v14, Landroid/app/Notification;->when:J

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Long;->compare(JJ)I

    move-result v14

    return v14
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 284
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
