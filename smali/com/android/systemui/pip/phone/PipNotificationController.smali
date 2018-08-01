.class public Lcom/android/systemui/pip/phone/PipNotificationController;
.super Ljava/lang/Object;
.source "PipNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipNotificationController$1;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationPackageName:Ljava/lang/String;

.field private mDeferredNotificationUserId:I

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipNotificationController;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipNotificationController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipNotificationController;->unregisterAppOpsListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/PipNotificationController;->TAG:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "motionHelper"    # Lcom/android/systemui/pip/phone/PipMotionHelper;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/pip/phone/PipNotificationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipNotificationController$1;-><init>(Lcom/android/systemui/pip/phone/PipNotificationController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mActivityManager:Landroid/app/IActivityManager;

    .line 100
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 101
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 102
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 103
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 104
    return-void
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 224
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 223
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    return-object v0
.end method

.method private registerAppOpsListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 212
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 211
    const/16 v2, 0x43

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 213
    return-void
.end method

.method private showNotificationForApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 153
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 154
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    .line 155
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v4, v5, v6, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 157
    .local v3, "userContext":Landroid/content/Context;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    const/4 v5, 0x1

    .line 157
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 159
    const/4 v5, 0x1

    .line 157
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 160
    const v5, 0x7f0802a2

    .line 157
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 161
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    .line 162
    const v6, 0x106015b

    .line 161
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 157
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 163
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->updateNotificationForApp(Landroid/app/Notification$Builder;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 167
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "userContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/systemui/pip/phone/PipNotificationController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not show notification for application"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterAppOpsListener()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 217
    return-void
.end method

.method private updateNotificationForApp(Landroid/app/Notification$Builder;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 14
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 183
    .local v12, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 189
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    const v4, 0x7f11037d

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "message":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    .line 194
    const-string/jumbo v2, "package"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v2, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 193
    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v3, "settingsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    move-object/from16 v0, p3

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v1, v7}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 199
    .local v10, "iconDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    const v4, 0x7f11037e

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 201
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 202
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object/from16 v6, p3

    .line 201
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 199
    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 203
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v11}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 204
    invoke-direct {p0, v10}, Lcom/android/systemui/pip/phone/PipNotificationController;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 205
    const/4 v1, 0x1

    return v1

    .line 184
    .end local v3    # "settingsIntent":Landroid/content/Intent;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appName":Ljava/lang/String;
    .end local v10    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "message":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 185
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/systemui/pip/phone/PipNotificationController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not update notification for application"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/4 v1, 0x0

    return v1

    .line 207
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "deferUntilAnimationEnds"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 110
    if-eqz p3, :cond_0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    .line 112
    iput p2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationUserId:I

    .line 118
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipNotificationController;->registerAppOpsListener(Ljava/lang/String;)V

    .line 119
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipNotificationController;->showNotificationForApp(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onActivityUnpinned(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "topPipActivity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipNotificationController;->unregisterAppOpsListener()V

    .line 134
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    .line 135
    iput v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationUserId:I

    .line 137
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityPinned(Ljava/lang/String;IZ)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipNotificationController;->showNotificationForApp(Ljava/lang/String;I)V

    .line 124
    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationUserId:I

    .line 127
    :cond_0
    return-void
.end method
