.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BarController$BarHandler;,
        Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_NAVIBAR:Z

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mIsNavBar:Z

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/BarController;

    .prologue
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/BarController;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/BarController;->DEBUG_NAVIBAR:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "transparentFlag"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 82
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 83
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 84
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 85
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 86
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    .line 87
    new-instance v0, Lcom/android/server/policy/BarController$BarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$BarHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 88
    const-string/jumbo v0, "NavigationBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mIsNavBar:Z

    .line 89
    return-void
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 7
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 203
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 204
    .local v0, "anim":Z
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v2, v5, :cond_0

    xor-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 205
    return v6

    .line 211
    :cond_0
    new-array v2, v5, [I

    const/16 v4, 0x20

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/BarController;->mIsNavBar:Z

    :goto_0
    if-nez v2, :cond_2

    .line 212
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v2, v6, :cond_2

    .line 211
    if-eqz v1, :cond_2

    .line 213
    return v3

    :cond_1
    move v2, v3

    .line 211
    goto :goto_0

    .line 214
    :cond_2
    if-eqz p4, :cond_4

    .line 215
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 216
    return v5

    .line 218
    :cond_3
    return v3

    .line 222
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_4
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    return v2
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 311
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 312
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 313
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 315
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 318
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 330
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 331
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 332
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 333
    :cond_2
    if-nez p0, :cond_3

    const-string/jumbo v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 334
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 227
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 123
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 125
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 135
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_3

    .line 137
    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 138
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 139
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    .line 143
    :goto_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 144
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    .line 153
    .end local v0    # "fl":I
    :cond_0
    :goto_1
    return p2

    .line 141
    .restart local v0    # "fl":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    goto :goto_0

    .line 146
    :cond_2
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    goto :goto_1

    .line 149
    .end local v0    # "fl":I
    :cond_3
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    .line 150
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    goto :goto_1
.end method

.method public checkHiddenLw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 251
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 253
    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 255
    :cond_1
    return v3

    .line 258
    :cond_2
    return v2
.end method

.method public checkShowTransientBarLw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 264
    return v2

    .line 265
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v0, v3, :cond_1

    .line 267
    return v2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_2

    .line 270
    return v2

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    return v2

    .line 275
    :cond_3
    return v3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 341
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 343
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    .line 323
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_0

    return v7

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    .line 159
    iput-boolean v8, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 160
    return v7

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 163
    .local v4, "wasVis":Z
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 164
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_6

    iget-object v9, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v6, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    :goto_0
    invoke-interface {v9, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 168
    .local v0, "change":Z
    :goto_1
    sget-boolean v6, Lcom/android/server/policy/BarController;->DEBUG_NAVIBAR:Z

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    xor-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "winStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v6, "NavigationBar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBarShowingLw hide win "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v5    # "winStr":Ljava/lang/String;
    :cond_2
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 176
    iget-object v6, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v6, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 177
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .line 179
    .local v2, "stateChanged":Z
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz v6, :cond_3

    .line 180
    iget-object v9, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_8

    move v6, v8

    :goto_2
    invoke-virtual {v9, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :cond_3
    if-nez v0, :cond_4

    move v8, v2

    :cond_4
    return v8

    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_5
    move v6, v7

    .line 164
    goto :goto_0

    .line 165
    :cond_6
    iget-object v9, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v6, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    :goto_3
    invoke-interface {v9, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    .restart local v0    # "change":Z
    goto :goto_1

    .end local v0    # "change":Z
    :cond_7
    move v6, v7

    goto :goto_3

    .restart local v0    # "change":Z
    .restart local v1    # "state":I
    .restart local v2    # "stateChanged":Z
    :cond_8
    move v6, v7

    .line 180
    goto :goto_2
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .param p2, "invokeWithState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 189
    if-eqz p2, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 192
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-nez v0, :cond_1

    move v0, v1

    .line 191
    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 192
    goto :goto_0
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 97
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 98
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 101
    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 93
    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 107
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .locals 2
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    return p3

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    :cond_1
    if-eqz p1, :cond_8

    .line 283
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 284
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 285
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 287
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 292
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_4

    .line 293
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 294
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_4

    .line 295
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 296
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 299
    :cond_4
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v0, :cond_5

    .line 300
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 301
    and-int/lit8 p3, p3, -0x2

    .line 303
    :cond_5
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p3

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 305
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 307
    :cond_7
    return p3

    .line 289
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_0

    .line 304
    :cond_9
    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
