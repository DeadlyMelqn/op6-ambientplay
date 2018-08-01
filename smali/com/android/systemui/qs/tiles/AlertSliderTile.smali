.class public Lcom/android/systemui/qs/tiles/AlertSliderTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AlertSliderTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AlertSliderTile$1;,
        Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALARMS_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final DISABLED:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final PRIORITY_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCollapseDetailOnZenChanged:Z

.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

.field private mHasAlertSlider:Z

.field private mListening:Z

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mCollapseDetailOnZenChanged:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/AlertSliderTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mCollapseDetailOnZenChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/AlertSliderTile;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "-value"    # Landroid/app/NotificationManager$Policy;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/AlertSliderTile;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "categoryType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->isPriorityCategoryEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/AlertSliderTile;ZI)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/AlertSliderTile;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->getZenMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/AlertSliderTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/AlertSliderTile;IIII)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->savePolicy(IIII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/AlertSliderTile;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->setZenMode(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 68
    const v0, 0x7f0801a0

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    .line 67
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 71
    const v0, 0x7f08019e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    .line 70
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ALARMS_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 74
    const v0, 0x7f08019f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->PRIORITY_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 77
    const v0, 0x7f08019d

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    .line 76
    sput-object v0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->DISABLED:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mHasAlertSlider:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mCollapseDetailOnZenChanged:Z

    .line 199
    new-instance v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 91
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 92
    new-instance v0, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120072

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 93
    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 93
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mHasAlertSlider:Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 97
    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method private getNewPriorityCategories(ZI)I
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 410
    .local v0, "priorityCategories":I
    if-eqz p1, :cond_0

    .line 411
    or-int/2addr v0, p2

    .line 415
    :goto_0
    return v0

    .line 413
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private getZenMode()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    return v0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .locals 2
    .param p1, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(IIII)V
    .locals 2
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    .line 420
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 423
    return-void
.end method

.method private setZenMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/AlertSliderTile$AlertSliderDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x76

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mCollapseDetailOnZenChanged:Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->getZenMode()I

    move-result v0

    .line 123
    .local v0, "zen":I
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->showDetail(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->handleClick()V

    .line 132
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 191
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mListening:Z

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mListening:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 141
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "zen":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 162
    sget-object v1, Lcom/android/systemui/qs/tiles/AlertSliderTile;->DISABLED:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1103af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    .line 165
    const v2, 0x7f1100ab

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 168
    :goto_1
    return-void

    .line 141
    .end local v0    # "zen":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->getZenMode()I

    move-result v0

    .restart local v0    # "zen":I
    goto :goto_0

    .line 144
    .end local p2    # "arg":Ljava/lang/Object;
    :pswitch_0
    sget-object v1, Lcom/android/systemui/qs/tiles/AlertSliderTile;->PRIORITY_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1103db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    .line 147
    const v2, 0x7f1100ac

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 150
    :pswitch_1
    sget-object v1, Lcom/android/systemui/qs/tiles/AlertSliderTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1103da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    .line 153
    const v2, 0x7f1100aa

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 156
    :pswitch_2
    sget-object v1, Lcom/android/systemui/qs/tiles/AlertSliderTile;->ALARMS_ONLY:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1103d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mContext:Landroid/content/Context;

    .line 159
    const v2, 0x7f1100a7

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile;->mHasAlertSlider:Z

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
