.class public Lcom/oneplus/settings/OPNotchDisplayGuideActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPNotchDisplayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIDE_NOTCH:I = 0x1

.field private static final ONEPLUS_NOTCH_MODE:Ljava/lang/String; = "op_camera_notch_ignore"

.field private static final SHOW_NOTCH:I


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Landroid/app/IActivityManager;

.field private mHideNotch:Landroid/widget/ImageView;

.field private mHideNotchBtn:Landroid/widget/RadioButton;

.field private mHideNotchMode:Landroid/view/View;

.field private mShowNotch:Landroid/widget/ImageView;

.field private mShowNotchBtn:Landroid/widget/RadioButton;

.field private mShowNotchMode:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private killSomeProcess()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string/jumbo v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private removeRunningTask()V
    .locals 10

    .prologue
    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/16 v1, 0x3f

    .line 112
    .local v1, "flags":I
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const v8, 0x7fffffff

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v1, v9}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 116
    .end local v4    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    if-nez v4, :cond_0

    .line 117
    return-void

    .line 113
    .restart local v4    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    const/4 v5, 0x0

    .line 121
    .local v5, "skipSettings":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "recentTaskInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 122
    .local v2, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v5, :cond_2

    .line 123
    if-eqz v2, :cond_1

    .line 124
    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 125
    :goto_2
    if-eqz v6, :cond_2

    .line 126
    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    const/4 v5, 0x1

    .line 128
    goto :goto_1

    .line 124
    :cond_1
    const/4 v6, 0x0

    .local v6, "topActivity":Landroid/content/ComponentName;
    goto :goto_2

    .line 132
    .end local v6    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    iget-object v7, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    iget v8, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_1

    .line 134
    .end local v2    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    return-void
.end method

.method private setCurrentMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "op_camera_notch_ignore"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "notchMode":I
    iget-object v4, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    iget-object v1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    return-void

    :cond_0
    move v1, v3

    .line 87
    goto :goto_0

    :cond_1
    move v2, v3

    .line 88
    goto :goto_1
.end method

.method private setNotchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->removeRunningTask()V

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->killSomeProcess()V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_camera_notch_ignore"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setNotchMode(I)V

    .line 76
    const-string/jumbo v0, "notch_display"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setNotchMode(I)V

    .line 81
    const-string/jumbo v0, "notch_display"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f0400ee

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setContentView(I)V

    .line 48
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    .line 49
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAms:Landroid/app/IActivityManager;

    .line 50
    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0a0234

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    .line 55
    const v0, 0x7f0a0235

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    .line 57
    const v0, 0x7f0a0233

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    .line 59
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f0202e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setCurrentMode()V

    .line 67
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f0202e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
