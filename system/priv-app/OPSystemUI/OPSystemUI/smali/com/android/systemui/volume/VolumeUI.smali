.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$1;,
        Lcom/android/systemui/volume/VolumeUI$SettingObserver;
    }
.end annotation


# static fields
.field private static LOGD:Z

.field private static sZenModeMap:[I


# instance fields
.field private mBootCompleted:Z

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastThreeKeyStatus:I

.field private final mSettingObserver:Lcom/android/systemui/volume/VolumeUI$SettingObserver;

.field private mVibrateWhenMute:I

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

.field private final mZenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeUI;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeUI;->mLastThreeKeyStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeUI;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVibrateWhenMute:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeDialogComponent;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeUI;->mLastThreeKeyStatus:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeUI;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeUI;->mVibrateWhenMute:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeUI;I)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "zenMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->zenModeToThreeKey(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 45
    const-string/jumbo v0, "VolumeUI"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    .line 61
    const/4 v0, 0x2

    .line 60
    filled-new-array {v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeUI;->sZenModeMap:[I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    .line 54
    iput v1, p0, Lcom/android/systemui/volume/VolumeUI;->mLastThreeKeyStatus:I

    .line 65
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeUI$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mSettingObserver:Lcom/android/systemui/volume/VolumeUI$SettingObserver;

    .line 66
    iput v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVibrateWhenMute:I

    .line 133
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$1;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mZenModeObserver:Landroid/database/ContentObserver;

    .line 43
    return-void
.end method

.method private getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-object v0
.end method

.method private setDefaultVolumeController()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 121
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "Registering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->register()V

    .line 123
    return-void
.end method

.method private zenModeToThreeKey(I)I
    .locals 2
    .param p1, "zenMode"    # I

    .prologue
    .line 171
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->sZenModeMap:[I

    aget v0, v0, p1

    return v0

    .line 174
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->sZenModeMap:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 114
    const-string/jumbo v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeComponent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mBootCompleted:Z

    .line 131
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/volume/VolumeComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 76
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->setDefaultVolumeController()V

    .line 80
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mZenModeObserver:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "three_Key_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mZenModeObserver:Landroid/database/ContentObserver;

    .line 88
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "oem_vibrate_under_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mSettingObserver:Lcom/android/systemui/volume/VolumeUI$SettingObserver;

    const/4 v3, -0x1

    .line 95
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_vibrate_under_silent"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVibrateWhenMute:I

    .line 99
    return-void
.end method
