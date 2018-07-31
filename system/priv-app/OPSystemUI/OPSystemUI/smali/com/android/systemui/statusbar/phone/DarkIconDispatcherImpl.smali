.class public Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;
    }
.end annotation


# static fields
.field private static PFLAG_FORCE_LAYOUT:I


# instance fields
.field private final DELAY_INTERVAL:I

.field private final MAX_RETRY_TIMES:I

.field private final TAG:Ljava/lang/String;

.field private mDarkIntensity:F

.field private mDarkIntensityOnBoot:I

.field private mDarkModeIconColorSingleTone:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconTint:I

.field private mLightModeIconColorSingleTone:I

.field private mReApplyIconTint:Ljava/lang/Runnable;

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTintRetryTimes:I

.field private final mTintArea:Landroid/graphics/Rect;

.field private mTraceView:Landroid/view/View;

.field private final mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-string/jumbo v0, "android.view.View"

    const-string/jumbo v1, "PFLAG_FORCE_LAYOUT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/util/Utils;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->PFLAG_FORCE_LAYOUT:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 48
    iput v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->MAX_RETRY_TIMES:I

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->DELAY_INTERVAL:I

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->TAG:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    .line 56
    const v0, 0x7f0600ef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    .line 57
    const v0, 0x7f06020d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    const v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensityOnBoot:I

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;-><init>(BLjava/lang/Object;)V

    .line 59
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private applyIconTint()V
    .locals 6

    .prologue
    .line 159
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 160
    .local v1, "timeout":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->isLayoutReadyBeforeApplyIconTint()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    .end local v1    # "timeout":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "timeout":Z
    goto :goto_0

    .line 167
    .restart local v0    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apply tint time-out after retrying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    iget v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    const-string/jumbo v4, " times"

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    .line 176
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method private getTintInternal(FI)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private isLayoutReadyBeforeApplyIconTint()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 187
    return v4

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    const-string/jumbo v2, "android.view.View"

    const-string/jumbo v3, "mPrivateFlags"

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/util/Utils;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "privateFlags":I
    sget v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->PFLAG_FORCE_LAYOUT:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 192
    const/4 v1, 0x1

    return v1

    .line 194
    :cond_1
    return v4
.end method

.method private setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensityOnBoot:I

    float-to-int v1, p1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensityOnBoot:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->getTintInternal(FI)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_DarkIconDispatcherImpl-mthref-0(F)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconTintInternal(F)V

    return-void
.end method

.method public addDarkReceiver(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;)V

    .line 116
    .local v0, "receiver":Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 118
    return-void
.end method

.method public addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 72
    return-void
.end method

.method public applyDark(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "object"    # Landroid/widget/ImageView;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 130
    return-void
.end method

.method public getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public removeDarkReceiver(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "object"    # Landroid/widget/ImageView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setIconsDarkArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "darkArea"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    .line 148
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setTraceView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    .line 181
    return-void
.end method

.method public updateViews()V
    .locals 6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensityOnBoot:I

    int-to-float v0, v2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->updateViews(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensityOnBoot:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
