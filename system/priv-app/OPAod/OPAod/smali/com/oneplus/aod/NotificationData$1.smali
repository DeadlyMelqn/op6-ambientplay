.class Lcom/oneplus/aod/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationData;
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
        "Lcom/oneplus/aod/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/oneplus/aod/NotificationData;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 266
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData$Entry;)I
    .locals 18
    .param p1, "a"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "b"    # Lcom/oneplus/aod/NotificationData$Entry;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 271
    .local v11, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 272
    .local v12, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x3

    .line 273
    .local v2, "aImportance":I
    const/4 v6, 0x3

    .line 274
    .local v6, "bImportance":I
    const/4 v4, 0x0

    .line 275
    .local v4, "aRank":I
    const/4 v8, 0x0

    .line 277
    .local v8, "bRank":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v13}, Lcom/oneplus/aod/NotificationData;->-get1(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v13}, Lcom/oneplus/aod/NotificationData;->-get1(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v13}, Lcom/oneplus/aod/NotificationData;->-get1(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v13}, Lcom/oneplus/aod/NotificationData;->-get0(Lcom/oneplus/aod/NotificationData;)Lcom/oneplus/aod/NotificationData$Environment;

    move-result-object v13

    invoke-interface {v13}, Lcom/oneplus/aod/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 291
    const/4 v13, 0x1

    if-le v2, v13, :cond_1

    const/4 v3, 0x1

    .line 292
    .local v3, "aMedia":Z
    :goto_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 293
    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    const/4 v7, 0x1

    .line 295
    .local v7, "bMedia":Z
    :goto_1
    const/4 v13, 0x5

    if-lt v2, v13, :cond_5

    .line 296
    invoke-static {v11}, Lcom/oneplus/aod/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 297
    :goto_2
    const/4 v13, 0x5

    if-lt v6, v13, :cond_6

    .line 298
    invoke-static {v12}, Lcom/oneplus/aod/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    .line 308
    :goto_3
    if-eq v3, v7, :cond_8

    .line 310
    if-eqz v3, :cond_7

    const/4 v13, -0x1

    :goto_4
    return v13

    .line 291
    .end local v3    # "aMedia":Z
    .end local v7    # "bMedia":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_0

    .line 290
    .end local v3    # "aMedia":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "aMedia":Z
    goto :goto_0

    .line 293
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_1

    .line 292
    .end local v7    # "bMedia":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "bMedia":Z
    goto :goto_1

    .line 295
    :cond_5
    const/4 v5, 0x0

    .local v5, "aSystemMax":Z
    goto :goto_2

    .line 297
    .end local v5    # "aSystemMax":Z
    :cond_6
    const/4 v9, 0x0

    .local v9, "bSystemMax":Z
    goto :goto_3

    .line 310
    .end local v9    # "bSystemMax":Z
    :cond_7
    const/4 v13, 0x1

    goto :goto_4

    .line 311
    :cond_8
    if-eq v5, v9, :cond_a

    .line 313
    if-eqz v5, :cond_9

    const/4 v13, -0x1

    :goto_5
    return v13

    :cond_9
    const/4 v13, 0x1

    goto :goto_5

    .line 314
    :cond_a
    if-eq v4, v8, :cond_b

    .line 315
    sub-int v13, v4, v8

    return v13

    .line 317
    :cond_b
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v14, v13, Landroid/app/Notification;->when:J

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v0, v13, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v13, v14

    return v13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 268
    check-cast p1, Lcom/oneplus/aod/NotificationData$Entry;

    check-cast p2, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationData$1;->compare(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
