.class public Lcom/android/systemui/qs/GameModeDemo;
.super Ljava/lang/Object;
.source "GameModeDemo.java"


# static fields
.field private static sThis:Lcom/android/systemui/qs/GameModeDemo;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDemo:Landroid/view/ViewGroup;

.field private mIsShow:Z

.field private mModeSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/GameModeDemo;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/GameModeDemo;
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/GameModeDemo;->showDemo(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/qs/GameModeDemo;->sThis:Lcom/android/systemui/qs/GameModeDemo;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/GameModeDemo;->mIsShow:Z

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    .line 32
    const-string/jumbo v0, "GameModeDemo"

    const-string/jumbo v1, "GameModeDemo starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/GameModeDemo;->isFirstTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "GameModeDemo"

    const-string/jumbo v1, "Never entering game mode before"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/android/systemui/qs/GameModeDemo$1;

    iget-object v2, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "game_mode_status"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/GameModeDemo$1;-><init>(Lcom/android/systemui/qs/GameModeDemo;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/GameModeDemo;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/GameModeDemo;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/GameModeDemo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/android/systemui/qs/GameModeDemo;->sThis:Lcom/android/systemui/qs/GameModeDemo;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/systemui/qs/GameModeDemo;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/GameModeDemo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qs/GameModeDemo;->sThis:Lcom/android/systemui/qs/GameModeDemo;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/GameModeDemo;->sThis:Lcom/android/systemui/qs/GameModeDemo;

    return-object v0
.end method

.method public static isFirstTime(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string/jumbo v0, "QsGameModeFirstTime"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showDemo(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 68
    iget-boolean v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mIsShow:Z

    if-ne v6, p1, :cond_0

    .line 69
    const-string/jumbo v6, "GameModeDemo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showDemo: the same visibility:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", don\'t do anything"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/GameModeDemo;->mIsShow:Z

    .line 73
    if-eqz p1, :cond_4

    .line 74
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0038

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    .line 75
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    const v7, 0x7f0a0216

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/qs/GameModeDemo$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/GameModeDemo$2;-><init>(Lcom/android/systemui/qs/GameModeDemo;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 83
    const/16 v6, 0x7de

    .line 84
    const/16 v7, 0x400

    .line 82
    invoke-direct {v3, v6, v7, v10}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 86
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v6, "Game Mode Demo"

    invoke-virtual {v3, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    const v7, 0x7f0a0098

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 88
    .local v4, "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    const-string/jumbo v6, "1"

    iget-object v7, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "game_mode_lock_buttons"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    .local v2, "lockButton":Z
    const-string/jumbo v6, "1"

    iget-object v7, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "game_mode_block_notification"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    .local v0, "blockNotification":Z
    const v1, 0x7f110449

    .line 93
    .local v1, "contentId":I
    if-eqz v2, :cond_3

    .line 94
    if-eqz v0, :cond_2

    .line 95
    const v1, 0x7f110447

    .line 103
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f110446

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 105
    .local v5, "wm":Landroid/view/WindowManager;
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    invoke-interface {v5, v6, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "QsGameModeFirstTime"

    invoke-static {v6, v7, v9}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 116
    .end local v0    # "blockNotification":Z
    .end local v1    # "contentId":I
    .end local v2    # "lockButton":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_1
    return-void

    .line 97
    .restart local v0    # "blockNotification":Z
    .restart local v1    # "contentId":I
    .restart local v2    # "lockButton":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    const v1, 0x7f110448

    goto :goto_0

    .line 100
    :cond_3
    const v1, 0x7f110449

    goto :goto_0

    .line 109
    .end local v0    # "blockNotification":Z
    .end local v1    # "contentId":I
    .end local v2    # "lockButton":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v6, v9}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 110
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 111
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 112
    .restart local v5    # "wm":Landroid/view/WindowManager;
    iget-object v6, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 113
    iput-object v8, p0, Lcom/android/systemui/qs/GameModeDemo;->mDemo:Landroid/view/ViewGroup;

    goto :goto_1
.end method
