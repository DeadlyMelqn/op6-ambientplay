.class public Lcom/android/systemui/pip/tv/PipNotification;
.super Ljava/lang/Object;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipNotification$1;,
        Lcom/android/systemui/pip/tv/PipNotification$2;,
        Lcom/android/systemui/pip/tv/PipNotification$3;,
        Lcom/android/systemui/pip/tv/PipNotification$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NOTIFICATION_TAG:Ljava/lang/String;


# instance fields
.field private mArt:Landroid/graphics/Bitmap;

.field private mDefaultIconResId:I

.field private mDefaultTitle:Ljava/lang/String;

.field private final mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotified:Z

.field private mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;
    .param p1, "-value"    # Landroid/media/session/MediaController;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->updateMediaControllerMetadata()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->dismissPipNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipNotification;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 67
    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$1;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    .line 100
    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$2;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 110
    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$3;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 131
    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$4;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    const-string/jumbo v1, "notification"

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 152
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x1

    .line 152
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 154
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "sys"

    .line 152
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 157
    const-string/jumbo v3, "PipNotification.menu"

    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Landroid/app/Notification$TvExtender;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v2

    .line 158
    const-string/jumbo v3, "PipNotification.close"

    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Landroid/app/Notification$TvExtender;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "PipNotification.menu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "PipNotification.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .line 232
    const/high16 v2, 0x10000000

    .line 231
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private dismissPipNotification()V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v2, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method private notifyPipNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 186
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 189
    iget v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    .line 186
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 193
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 197
    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 199
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private updateMediaControllerMetadata()Z
    .locals 4

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 209
    .local v0, "art":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 211
    .local v1, "metadata":Landroid/media/MediaMetadata;
    if-eqz v1, :cond_1

    .line 212
    const-string/jumbo v3, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    :cond_0
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "art":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 218
    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .end local v0    # "art":Landroid/graphics/Bitmap;
    .end local v1    # "metadata":Landroid/media/MediaMetadata;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_3

    .line 223
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    .line 225
    const/4 v3, 0x1

    return v3

    .line 227
    :cond_3
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f11037f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    .line 177
    const v1, 0x7f0802a1

    iput v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 178
    iget-boolean v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    .line 182
    :cond_0
    return-void
.end method
