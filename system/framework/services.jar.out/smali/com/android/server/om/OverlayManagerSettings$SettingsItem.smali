.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private mBaseCodePath:Ljava/lang/String;

.field private mCache:Landroid/content/om/OverlayInfo;

.field private mIsEnabled:Z

.field private mIsStatic:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mState:I

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .prologue
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "isEnabled"    # Z
    .param p7, "isStatic"    # Z
    .param p8, "priority"    # I

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    .line 427
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 428
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 429
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 430
    iput p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 431
    iput-boolean p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 433
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    .line 434
    iput p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 435
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "isStatic"    # Z
    .param p6, "priority"    # I

    .prologue
    .line 440
    const/4 v5, -0x1

    .line 441
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move v8, p6

    .line 440
    invoke-direct/range {v0 .. v8}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZI)V

    .line 442
    return-void
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .locals 6

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 494
    iget v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 493
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getPriority()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method private invalidateCache()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 501
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method private isStatic()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 460
    const/4 v0, 0x1

    return v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 484
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 485
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 486
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 470
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_0

    .line 471
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 472
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 473
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
