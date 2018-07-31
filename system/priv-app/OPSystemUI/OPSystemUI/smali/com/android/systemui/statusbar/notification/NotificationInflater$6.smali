.class final Lcom/android/systemui/statusbar/notification/NotificationInflater$6;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$isNewView:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iput p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$inflationId:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iput p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$reInflateFlags:I

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$redactAmbient:Z

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingView:Landroid/view/View;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingView:Landroid/view/View;

    .line 353
    .local v1, "newView":Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$isNewView:Z

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 356
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 357
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 354
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    .line 364
    :goto_0
    const-string/jumbo v2, "NotificationInflater"

    const-string/jumbo v3, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->onViewApplied(Landroid/view/View;)V

    .line 371
    .end local v1    # "newView":Landroid/view/View;
    :goto_1
    return-void

    .line 359
    .restart local v1    # "newView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    .line 360
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 361
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingView:Landroid/view/View;

    .line 362
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 359
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v1    # "newView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "anotherException":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$inflationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-static {v2, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap2(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    goto :goto_1
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$isNewView:Z

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    .line 342
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$reInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 344
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$redactAmbient:Z

    .line 343
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 345
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    goto :goto_0
.end method
