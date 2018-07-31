.class Lcom/android/server/wm/AlertWindowNotification;
.super Ljava/lang/Object;
.source "AlertWindowNotification.java"


# static fields
.field private static final CHANNEL_PREFIX:Ljava/lang/String; = "com.android.server.wm.AlertWindowNotification - "

.field private static final NOTIFICATION_ID:I

.field private static sChannelGroup:Landroid/app/NotificationChannelGroup;

.field private static sNextRequestCode:I


# instance fields
.field private mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPosted:Z

.field private final mRequestCode:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 61
    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.android.server.wm.AlertWindowNotification - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 64
    sget v0, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    iput v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    .line 65
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 66
    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    sget-object v2, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Landroid/app/NotificationChannelGroup;

    const-string/jumbo v3, "com.android.server.wm.AlertWindowNotification - "

    .line 142
    iget-object v4, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 143
    const v5, 0x104006f

    .line 142
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-direct {v2, v3, v4}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v2, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 144
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 148
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    const v3, 0x1040070

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "nameChannel":Ljava/lang/String;
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 152
    invoke-virtual {v0, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 153
    invoke-virtual {v0, v7}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 154
    sget-object v2, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 156
    return-void
.end method

.method private getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 133
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private onCancelNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method private onPostNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 93
    iget-boolean v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-eqz v8, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iput-boolean v11, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 99
    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v8, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 100
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 101
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/AlertWindowNotification;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "appName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/AlertWindowNotification;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    new-array v8, v11, [Ljava/lang/Object;

    .line 108
    aput-object v1, v8, v12

    .line 107
    const v9, 0x1040071

    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "message":Ljava/lang/String;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {v8, v4, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 112
    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v12

    const v10, 0x1040072

    invoke-virtual {v4, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 114
    const v9, 0x10800cc

    .line 109
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 115
    const v9, 0x106014c

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 109
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 116
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 109
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 118
    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v9}, Lcom/android/server/wm/AlertWindowNotification;->getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 109
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 120
    .local v3, "builder":Landroid/app/Notification$Builder;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 123
    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v8, v5}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 128
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v8, v9, v12, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 129
    return-void

    .line 103
    .end local v1    # "appName":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "message":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_wm_AlertWindowNotification-mthref-0()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wm/AlertWindowNotification;->onPostNotification()V

    return-void
.end method

.method synthetic -com_android_server_wm_AlertWindowNotification-mthref-1()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/wm/AlertWindowNotification;->onCancelNotification()V

    return-void
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method post()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
