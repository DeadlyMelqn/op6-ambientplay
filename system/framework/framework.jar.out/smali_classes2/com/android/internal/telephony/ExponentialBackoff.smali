.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# instance fields
.field private mCurrentDelayMs:J

.field private mHandler:Landroid/os/Handler;

.field private mMaximumDelayMs:J

.field private mMultiplier:I

.field private mRetryCounter:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartDelayMs:J


# direct methods
.method public constructor <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 49
    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 50
    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    .line 51
    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    .line 52
    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCurrentDelay()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public notifyFailed()V
    .locals 10

    .prologue
    .line 72
    iget v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 74
    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    long-to-double v4, v4

    iget v6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 73
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 75
    .local v0, "temp":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
