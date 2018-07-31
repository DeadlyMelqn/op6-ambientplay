.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

.field static final FLAG_REINFLATE_ALL:I = -0x1

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static synthetic -com_android_systemui_statusbar_notification_NotificationInflater-mthref-0(Landroid/os/CancellationSignal;)V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic -com_android_systemui_statusbar_notification_NotificationInflater-mthref-1(Landroid/os/CancellationSignal;)V
    .locals 0

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 1
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "runningInflations"    # Ljava/util/HashMap;
    .param p3, "endListener"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z

    .prologue
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1
    .param p0, "reInflateFlags"    # I
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "isLowPriority"    # Z
    .param p3, "isChildInGroup"    # Z
    .param p4, "usesIncreasedHeight"    # Z
    .param p5, "usesIncreasedHeadsUpHeight"    # Z
    .param p6, "redactAmbient"    # Z
    .param p7, "packageContext"    # Landroid/content/Context;

    .prologue
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0
    .param p0, "runningInflations"    # Ljava/util/HashMap;
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 73
    return-void
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 40
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "redactAmbient"    # Z
    .param p4, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p5, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 190
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    .line 191
    .local v10, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    .line 192
    .local v24, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v13, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    const/4 v3, 0x1

    .line 195
    .local v3, "flag":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 196
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 197
    .local v6, "isNewView":Z
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 210
    .local v14, "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v11

    .line 211
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 208
    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .line 215
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_0
    const/4 v3, 0x2

    .line 216
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 219
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 218
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 220
    .restart local v6    # "isNewView":Z
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 233
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    .line 235
    const/4 v1, 0x1

    .line 234
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 231
    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .line 240
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_1
    const/4 v3, 0x4

    .line 241
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 242
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 243
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 244
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 243
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 245
    .restart local v6    # "isNewView":Z
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 258
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v11

    .line 260
    const/4 v1, 0x2

    .line 259
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 256
    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .line 265
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_2
    const/16 v3, 0x8

    .line 266
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 267
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 268
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 267
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 269
    .restart local v6    # "isNewView":Z
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 282
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v25

    .line 283
    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v26

    move-object/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v6

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, v9

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    .line 280
    invoke-static/range {v15 .. v28}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .line 287
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_3
    const/16 v3, 0x10

    .line 288
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 289
    if-eqz p3, :cond_5

    move-object/from16 v34, v24

    .line 290
    .local v34, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_0
    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 292
    :goto_1
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 305
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v35

    .line 306
    const/4 v1, 0x4

    .line 305
    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v36

    move-object/from16 v25, p0

    move/from16 v26, p1

    move/from16 v27, v3

    move-object/from16 v28, p2

    move/from16 v29, p3

    move/from16 v30, v6

    move-object/from16 v31, p4

    move-object/from16 v32, p5

    move-object/from16 v33, v9

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    .line 303
    invoke-static/range {v25 .. v38}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .end local v34    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_4
    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, v13

    move-object/from16 v18, p5

    move-object/from16 v19, p2

    move/from16 v20, p3

    .line 311
    invoke-static/range {v15 .. v20}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 313
    new-instance v39, Landroid/os/CancellationSignal;

    invoke-direct/range {v39 .. v39}, Landroid/os/CancellationSignal;-><init>()V

    .line 315
    .local v39, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$1;

    invoke-direct {v1, v13}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$1;-><init>(Ljava/lang/Object;)V

    .line 314
    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 316
    return-object v39

    .line 289
    .end local v39    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_5
    move-object/from16 v34, v10

    .restart local v34    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_0

    .line 290
    :cond_6
    const/4 v6, 0x1

    .local v6, "isNewView":Z
    goto :goto_1
.end method

.method static applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
    .locals 21
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p12, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v14

    .line 332
    .local v14, "newContentView":Landroid/widget/RemoteViews;
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    move/from16 v3, p5

    move-object/from16 v4, p13

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p2

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p10

    move-object/from16 v15, p9

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 374
    .local v2, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    if-eqz p5, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 378
    sget-object v17, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v16, p9

    move-object/from16 v18, v2

    move-object/from16 v19, p6

    .line 375
    invoke-virtual/range {v14 .. v19}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v20

    .line 389
    .local v20, "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p12

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void

    .line 383
    .end local v20    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 385
    sget-object v17, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v16, p10

    move-object/from16 v18, v2

    move-object/from16 v19, p6

    .line 382
    invoke-virtual/range {v14 .. v19}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v20

    .restart local v20    # "cancellationSignal":Landroid/os/CancellationSignal;
    goto :goto_0
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 528
    .local v0, "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 527
    .end local v0    # "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .restart local v0    # "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_0

    .line 528
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 2
    .param p0, "newView"    # Landroid/widget/RemoteViews;
    .param p1, "oldView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 497
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 498
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 498
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 503
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->isReapplyDisallowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z
    .param p2, "useLarge"    # Z

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z

    .prologue
    const/4 v2, 0x0

    .line 469
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 470
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 471
    return-object v0

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 475
    .local v1, "contentView":Landroid/widget/RemoteViews;
    invoke-static {v1}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 476
    return-object v1

    .line 478
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    :cond_1
    return-object v2
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 2
    .param p0, "reInflateFlags"    # I
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "isLowPriority"    # Z
    .param p3, "isChildInGroup"    # Z
    .param p4, "usesIncreasedHeight"    # Z
    .param p5, "usesIncreasedHeadsUpHeight"    # Z
    .param p6, "redactAmbient"    # Z
    .param p7, "packageContext"    # Landroid/content/Context;

    .prologue
    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    .line 160
    .local v0, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    if-eqz p2, :cond_5

    xor-int/lit8 p2, p3, 0x1

    .line 161
    .end local p2    # "isLowPriority":Z
    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 165
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 166
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 169
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 173
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 177
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 178
    if-eqz p6, :cond_6

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 181
    :cond_4
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 182
    return-object v0

    .line 160
    .restart local p2    # "isLowPriority":Z
    :cond_5
    const/4 p2, 0x0

    .local p2, "isLowPriority":Z
    goto :goto_0

    .line 179
    .end local p2    # "isLowPriority":Z
    :cond_6
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 9
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p3, "endListener"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 410
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 411
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 412
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v3

    .line 413
    .local v3, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    .line 414
    .local v4, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 415
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    .line 416
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 417
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 419
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 422
    :cond_1
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4

    .line 423
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 424
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 428
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 429
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 432
    :cond_4
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_6

    .line 433
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 434
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 438
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 441
    :cond_6
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_8

    .line 442
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 443
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 445
    :cond_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 448
    :cond_8
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_a

    .line 449
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 450
    if-eqz p5, :cond_e

    .line 451
    move-object v1, v4

    .line 452
    .local v1, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_2
    if-nez p5, :cond_f

    .line 453
    move-object v2, v4

    .line 454
    .local v2, "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 455
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 457
    .end local v1    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v2    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 459
    :cond_a
    if-eqz p3, :cond_b

    .line 460
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 462
    :cond_b
    return v6

    .line 425
    :cond_c
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_2

    .line 426
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto :goto_0

    .line 435
    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    if-nez v5, :cond_5

    .line 436
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto :goto_1

    .line 451
    :cond_e
    move-object v1, v3

    .restart local v1    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_2

    .line 453
    :cond_f
    move-object v2, v3

    .restart local v2    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_3

    .line 464
    .end local v1    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v2    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_10
    return v5
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 395
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$INST$0:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 396
    if-eqz p3, :cond_0

    .line 397
    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 399
    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_notification_NotificationInflater_13600(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 315
    .local p0, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$INST$1:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 8
    .param p1, "reInflateFlags"    # I
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "packageContext"    # Landroid/content/Context;

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 149
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    .line 150
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    move v0, p1

    move-object v1, p2

    move-object v7, p3

    .line 148
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    .line 151
    .local v0, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;

    .line 152
    return-object v0
.end method

.method public inflateNotificationViews()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 122
    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 12
    .param p1, "reInflateFlags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 140
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 141
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    .line 142
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 140
    const/4 v11, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 517
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 518
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 519
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 520
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 521
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 523
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 508
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "childInGroup"    # Z

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v1, :cond_0

    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    .line 87
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x3

    .line 89
    .local v0, "flags":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 92
    .end local v0    # "flags":I
    :cond_0
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 77
    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 114
    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 104
    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    .line 100
    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    .line 96
    return-void
.end method
