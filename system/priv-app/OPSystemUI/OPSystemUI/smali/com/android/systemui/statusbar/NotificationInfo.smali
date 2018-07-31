.class public Lcom/android/systemui/statusbar/NotificationInfo;
.super Landroid/widget/LinearLayout;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelDisabledView:Landroid/view/View;

.field private mChannelEnabledSwitch:Landroid/widget/Switch;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsSingleDefaultChannel:Z

.field private mNotificationChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mNumChannelsView:Landroid/widget/TextView;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingsLinkView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingUserImportance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private bindButtons(Z)V
    .locals 4
    .param p1, "nonBlockable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 317
    const v1, 0x7f0a007f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    .line 319
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 318
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 320
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 321
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 331
    return-void

    .end local v0    # "visible":Z
    :cond_0
    move v1, v2

    .line 319
    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_1

    .line 321
    :cond_2
    const/4 v2, 0x4

    goto :goto_2
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 379
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v4, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 379
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    .line 382
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 386
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 387
    :cond_0
    return-object v5

    .line 386
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 389
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 390
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    if-eqz p3, :cond_2

    .line 392
    const-string/jumbo v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :cond_2
    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    return-object v1
.end method

.method private getSelectedImportance()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 287
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 285
    :cond_0
    return v0
.end method

.method private saveImportance()V
    .locals 6

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v1

    .line 295
    .local v1, "selectedImportance":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    .line 296
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int v3, v1, v3

    .line 295
    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 301
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 300
    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAppSettingsLink()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 361
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 364
    .local v6, "settingsIntent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 364
    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 368
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v7

    .line 367
    const v3, 0x7f110393

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$1;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSecondaryText()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 351
    .local v0, "disabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    :goto_1
    return-void

    .line 350
    .end local v0    # "disabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 349
    .end local v0    # "disabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x4

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Ljava/util/List;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Ljava/util/Set;)V
    .locals 27
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "iNotificationManager"    # Landroid/app/INotificationManager;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p5, "startingUserImportance"    # I
    .param p6, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p7, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p8, "onAppSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .param p9, "onDoneClick"    # Landroid/view/View$OnClickListener;
    .param p10, "checkSaveListener"    # Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;I",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "notificationChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .local p11, "nonBlockablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    .line 113
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 114
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    .line 117
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 119
    const/16 v21, 0x0

    .line 120
    .local v21, "pkgicon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v5, ""

    .line 121
    .local v5, "channelNameText":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 123
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 124
    const v24, 0xc2200

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 128
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_0

    .line 129
    invoke-virtual/range {p6 .. p6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 137
    .end local v13    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const v23, 0x7f0a0246

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v23, v0

    const/16 v24, 0x0

    .line 139
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v19

    .line 141
    .local v19, "numTotalChannels":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 142
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v24, "bindNotification requires at least one channel"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 133
    .end local v19    # "numTotalChannels":I
    .restart local v21    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v8

    .line 135
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .local v21, "pkgicon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 144
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "numTotalChannels":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationChannel;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 148
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 163
    :goto_1
    const/4 v14, 0x0

    .line 165
    .local v14, "nonBlockable":Z
    const/16 v23, 0x40

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 166
    .local v20, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v17

    .line 168
    .local v17, "numChannels":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationChannel;

    .line 171
    .local v15, "notificationChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->isBlockableSystem()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    if-nez v23, :cond_a

    .line 172
    const/4 v14, 0x1

    .line 180
    .end local v12    # "i":I
    .end local v15    # "notificationChannel":Landroid/app/NotificationChannel;
    .end local v17    # "numChannels":I
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_3
    if-eqz p11, :cond_3

    .line 181
    move-object/from16 v0, p11

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    or-int v14, v14, v23

    .line 185
    .end local v14    # "nonBlockable":Z
    :cond_3
    const v23, 0x7f0a0213

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    .line 186
    if-eqz v14, :cond_b

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f1103ac

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "channelsDescText":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    if-nez v23, :cond_d

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 218
    const v25, 0x7f1103a9

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 227
    :goto_5
    const v23, 0x7f0a0247

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v23, 0x7f0a0080

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v10, 0x0

    .line 232
    .local v10, "groupName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v24, v0

    .line 234
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v16

    .line 236
    .local v16, "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v16, :cond_4

    .line 237
    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 240
    .end local v10    # "groupName":Ljava/lang/CharSequence;
    .end local v16    # "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    :cond_4
    const v23, 0x7f0a0107

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 241
    .local v11, "groupNameView":Landroid/widget/TextView;
    const v23, 0x7f0a0245

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 242
    .local v9, "groupDividerView":Landroid/widget/TextView;
    if-eqz v10, :cond_10

    .line 243
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/NotificationInfo;->bindButtons(Z)V

    .line 254
    const v23, 0x7f0a007e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    .line 258
    const v23, 0x7f0a01cd

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 259
    .local v22, "settingsButton":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v23, v0

    if-ltz v23, :cond_12

    if-eqz p7, :cond_12

    .line 260
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 263
    .local v4, "appUidF":I
    new-instance v23, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 262
    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    if-eqz v14, :cond_11

    .line 267
    :cond_5
    const v23, 0x7f1103a8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 276
    .end local v4    # "appUidF":I
    :goto_7
    const v23, 0x7f0a00ce

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 277
    .local v7, "doneButton":Landroid/widget/TextView;
    const v23, 0x7f1103a2

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 278
    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateAppSettingsLink()V

    .line 282
    return-void

    .line 152
    .end local v6    # "channelsDescText":Ljava/lang/String;
    .end local v7    # "doneButton":Landroid/widget/TextView;
    .end local v9    # "groupDividerView":Landroid/widget/TextView;
    .end local v11    # "groupNameView":Landroid/widget/TextView;
    .end local v22    # "settingsButton":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v23

    .line 153
    const-string/jumbo v24, "miscellaneous"

    .line 152
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 154
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    const/16 v23, 0x1

    .line 151
    :goto_8
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    goto/16 :goto_1

    .line 154
    :cond_7
    const/16 v23, 0x0

    goto :goto_8

    .line 152
    :cond_8
    const/16 v23, 0x0

    goto :goto_8

    .line 158
    :cond_9
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 159
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    goto/16 :goto_1

    .line 168
    .restart local v12    # "i":I
    .restart local v14    # "nonBlockable":Z
    .restart local v15    # "notificationChannel":Landroid/app/NotificationChannel;
    .restart local v17    # "numChannels":I
    .restart local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 188
    .end local v12    # "i":I
    .end local v14    # "nonBlockable":Z
    .end local v15    # "notificationChannel":Landroid/app/NotificationChannel;
    .end local v17    # "numChannels":I
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f1103a1

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_4

    .line 191
    .end local v6    # "channelsDescText":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v18, v23, -0x2

    .line 206
    .local v18, "numOthers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 207
    const v24, 0x7f0f0007

    .line 206
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v24

    .line 205
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationChannel;

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v26, 0x0

    aput-object v23, v25, v26

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationChannel;

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v26, 0x1

    aput-object v23, v25, v26

    .line 211
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v26, 0x2

    aput-object v23, v25, v26

    .line 205
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_4

    .line 193
    .end local v6    # "channelsDescText":Ljava/lang/String;
    .end local v18    # "numOthers":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 194
    const v24, 0x7f0f0009

    .line 193
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 195
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 193
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_4

    .line 198
    .end local v6    # "channelsDescText":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationChannel;

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v26, 0x0

    aput-object v23, v25, v26

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationChannel;

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v26, 0x1

    aput-object v23, v25, v26

    .line 199
    const v23, 0x7f11039e

    .line 198
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_4

    .line 220
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    if-eqz v14, :cond_f

    .line 223
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f1103a4

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 225
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_5

    .line 247
    .restart local v9    # "groupDividerView":Landroid/widget/TextView;
    .restart local v11    # "groupNameView":Landroid/widget/TextView;
    :cond_10
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 269
    .restart local v4    # "appUidF":I
    .restart local v22    # "settingsButton":Landroid/widget/TextView;
    :cond_11
    const v23, 0x7f110392

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 272
    .end local v4    # "appUidF":I
    :cond_12
    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 177
    .end local v6    # "channelsDescText":Ljava/lang/String;
    .end local v9    # "groupDividerView":Landroid/widget/TextView;
    .end local v11    # "groupNameView":Landroid/widget/TextView;
    .end local v22    # "settingsButton":Landroid/widget/TextView;
    .restart local v14    # "nonBlockable":Z
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .prologue
    .line 411
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 3
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 416
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$pxhtjefp-4VbVZxPncusN7cxW-w;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$pxhtjefp-4VbVZxPncusN7cxW-w;-><init>(BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;)V

    .line 423
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_11530(Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;ILandroid/view/View;)V
    .locals 1
    .param p1, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p2, "appUidF"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_13924(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateAppSettingsLink()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_16002(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_17786()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f110397

    .line 339
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f110396

    .line 342
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 402
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
