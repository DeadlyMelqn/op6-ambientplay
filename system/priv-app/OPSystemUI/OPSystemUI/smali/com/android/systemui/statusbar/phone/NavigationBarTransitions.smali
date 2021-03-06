.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
    }
.end annotation


# instance fields
.field private mAutoDim:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

.field private mWallpaperVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 7
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 50
    const v3, 0x7f08034d

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 168
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 53
    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 54
    new-instance v3, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 55
    new-instance v5, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;-><init>(BLjava/lang/Object;)V

    .line 54
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 57
    const-class v3, Landroid/view/IWindowManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    .line 58
    .local v2, "windowManagerService":Landroid/view/IWindowManager;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    .line 60
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    const/4 v4, 0x0

    .line 69
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private applyLightsOut(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    .line 122
    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 6
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 125
    if-nez p3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v3, :cond_0

    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    .line 129
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "navButtons":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 134
    if-eqz p1, :cond_1

    const v2, 0x3f19999a    # 0.6f

    .line 136
    .local v2, "navButtonsAlpha":F
    :goto_0
    if-nez p2, :cond_2

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    :goto_1
    return-void

    .line 134
    .end local v2    # "navButtonsAlpha":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "navButtonsAlpha":F
    goto :goto_0

    .line 139
    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x5dc

    .line 140
    .local v0, "duration":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 142
    int-to-long v4, v0

    .line 140
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 139
    .end local v0    # "duration":I
    :cond_3
    const/16 v0, 0xfa

    .restart local v0    # "duration":I
    goto :goto_2
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_NavigationBarTransitions-mthref-0(F)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public applyDarkIntensity(F)V
    .locals 5
    .param p1, "darkIntensity"    # F

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v3, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomNavBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLightBar(Z)V

    .line 158
    return-void

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    .line 163
    .local v0, "buttonDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 164
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    .line 163
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->destroy()V

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 191
    const-class v2, Landroid/view/IWindowManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    .line 194
    .local v1, "windowManagerService":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    const/4 v3, 0x0

    .line 193
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 89
    return-void
.end method

.method protected isLightsOut(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 117
    return-void
.end method

.method public reapplyDarkIntensity()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    .line 149
    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2
    .param p1, "autoDim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    .line 96
    return-void

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 100
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 102
    return-void
.end method
