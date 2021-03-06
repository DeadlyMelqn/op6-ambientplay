.class public final Lcom/oneplus/aod/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field private static final LAUNCH_COOLDOWN:J = 0x7d0L

.field private static final NOT_LAUNCHED_YET:J = -0x7d0L


# instance fields
.field public autoRedacted:Z

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public icon:Lcom/oneplus/aod/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/oneplus/aod/StatusBarIconView;)V
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/oneplus/aod/StatusBarIconView;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 68
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 70
    iput-object p2, p0, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    .line 71
    return-void
.end method

.method private compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4
    .param p1, "a"    # Landroid/widget/RemoteViews;
    .param p2, "b"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 158
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 157
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updatedNotification"    # Landroid/app/Notification;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "applyInPlace":Z
    if-eqz p2, :cond_1

    .line 117
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 118
    .local v7, "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 120
    .local v3, "newContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 122
    .local v2, "newBigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 124
    .local v4, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 127
    .local v5, "newPublicNotification":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 128
    const-string/jumbo v9, "android.contains.customView"

    .line 127
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 129
    iget-object v9, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 130
    const-string/jumbo v10, "android.contains.customView"

    .line 129
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 126
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 131
    .local v6, "sameCustomView":Z
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v3}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v2}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 131
    if-eqz v8, :cond_0

    .line 133
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v4}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 131
    if-eqz v8, :cond_0

    .line 134
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v5}, Lcom/oneplus/aod/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 131
    if-eqz v8, :cond_0

    .line 135
    move v0, v6

    .line 136
    .end local v0    # "applyInPlace":Z
    :goto_0
    iput-object v5, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 137
    iput-object v4, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 138
    iput-object v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 139
    iput-object v3, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 151
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :goto_1
    return v0

    .line 131
    .restart local v0    # "applyInPlace":Z
    .restart local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .restart local v3    # "newContentView":Landroid/widget/RemoteViews;
    .restart local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .restart local v6    # "sameCustomView":Z
    .restart local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_1
    iget-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 144
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 145
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 146
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 147
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/aod/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 149
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/aod/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 166
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->autoRedacted:Z

    .line 88
    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->legacy:Z

    .line 89
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 95
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationData$Entry;->interruption:Z

    .line 75
    return-void
.end method
