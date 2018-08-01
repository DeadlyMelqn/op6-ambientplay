.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;,
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;,
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;,
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    }
.end annotation


# static fields
.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private lastUpdateTime:J

.field private mAttached:Z

.field private mAutoHideThreshold:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEnabled:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mTintColor:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtImgPadding:I

.field private txtSize:I


# direct methods
.method static synthetic -get0()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSize:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 132
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0701f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSize:I

    .line 185
    const v3, 0x7f0701f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtImgPadding:I

    .line 186
    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 188
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    .line 189
    .local v2, "settingsObserver":Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->observe()V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setMode()V

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    .line 192
    return-void
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 230
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 231
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 230
    :cond_0
    const/4 v1, 0x0

    .local v1, "network":Landroid/net/NetworkInfo;
    goto :goto_0

    .line 231
    .end local v1    # "network":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x2

    const/4 v2, 0x1

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "network_traffic_state"

    .line 253
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    .line 257
    const-string/jumbo v1, "network_traffic_autohide_threshold"

    .line 256
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    .line 259
    return-void
.end method

.method private updateSettings()V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    .line 243
    return-void

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    .line 248
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    .line 249
    return-void
.end method

.method private updateTrafficDrawable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 269
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz v2, :cond_0

    .line 270
    const v1, 0x7f0802fd

    .line 274
    .local v1, "intTrafficDrawable":I
    :goto_0
    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtImgPadding:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablePadding(I)V

    .line 278
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 282
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 272
    .end local v1    # "intTrafficDrawable":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "intTrafficDrawable":I
    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 197
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    .line 205
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 294
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTextColor(I)V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    .line 297
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 214
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 215
    return-void
.end method
