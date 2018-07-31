.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mScreenBrightnessDoze:F

.field private mStatusBarView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x10e007b

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 73
    const/high16 v1, 0x437f0000    # 255.0f

    .line 72
    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    .line 74
    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    if-eqz v0, :cond_2

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applySleepToken(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    if-eq v1, v2, :cond_1

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    .line 249
    :cond_1
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBarWindowManager"

    const-string/jumbo v2, "Failed to call setHasTopUi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 270
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 196
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 197
    .local v0, "fitsSystemWindows":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 201
    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v3, -0x20001

    .line 160
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v1, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    .line 161
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_1

    .line 162
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    .line 161
    if-eqz v1, :cond_3

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 172
    :goto_1
    const-string/jumbo v1, "StatusBarWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyFocusableFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 174
    return-void

    .line 160
    :cond_2
    const/4 v0, 0x0

    .local v0, "panelFocusable":Z
    goto :goto_0

    .line 165
    .end local v0    # "panelFocusable":Z
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 252
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    .line 279
    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    .line 178
    .local v0, "expanded":Z
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    .line 180
    const/4 v0, 0x1

    .line 182
    .end local v0    # "expanded":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    .line 214
    if-eqz v0, :cond_0

    .line 216
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceUserActivity:Z

    xor-int/lit8 v0, v0, 0x1

    .line 214
    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 132
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 139
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->hasWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 145
    :goto_1
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 262
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applySleepToken(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 282
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    .line 204
    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 190
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    .line 190
    if-nez v0, :cond_0

    .line 191
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 190
    if-nez v0, :cond_0

    .line 191
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 190
    if-nez v0, :cond_0

    .line 192
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    .line 190
    if-nez v0, :cond_0

    .line 192
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->scrimsVisible:Z

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 6
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 93
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 94
    const/4 v1, -0x1

    .line 96
    const/16 v3, 0x7d0

    .line 97
    const v4, -0x7f7bffb8

    .line 102
    const/4 v5, -0x3

    move v2, p2

    .line 93
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    .line 109
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 113
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 413
    const-string/jumbo v0, "StatusBarWindowManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    return v0
.end method

.method public isShowingLiveWallpaper()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->hasWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isShowingWallpaper()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRemoteInputActive(Z)V
    .locals 1
    .param p1, "remoteInputActive"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 382
    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 323
    return-void
.end method

.method public setBarHeight(I)V
    .locals 1
    .param p1, "barHeight"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 401
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 318
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 116
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    .line 117
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 396
    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1
    .param p1, "forceDozeBrightness"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 391
    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1
    .param p1, "forcePluginOpen"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 406
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1
    .param p1, "forceStatusBarVisible"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 361
    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 371
    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 348
    return-void
.end method

.method public setKeyguardDark(Z)V
    .locals 2
    .param p1, "dark"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 121
    .local v0, "vis":I
    if-eqz p1, :cond_0

    .line 122
    or-int/lit8 v0, v0, 0x10

    .line 123
    or-int/lit16 v0, v0, 0x2000

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 129
    return-void

    .line 125
    :cond_0
    and-int/lit8 v0, v0, -0x11

    .line 126
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 328
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 302
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 297
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 292
    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 3
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 493
    const-string/jumbo v0, "StatusBarWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LockscreenWP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->hasWallpaper:Z

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 496
    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 376
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 308
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 333
    return-void
.end method

.method public setScrimsVisible(Z)V
    .locals 1
    .param p1, "scrimsVisible"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->scrimsVisible:Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 343
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    .line 410
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 313
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 356
    return-void
.end method
