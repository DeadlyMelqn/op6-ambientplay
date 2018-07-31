.class final Lcom/android/server/OverHeatingDiagnosis$CameraStat;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraStat"
.end annotation


# instance fields
.field mAvailable:Z

.field mCameraId:I

.field mCanUpdate:Z

.field mIdleTime:J

.field mLastUpdateTime:J

.field mUseTime:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "cameraId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 1223
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1227
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1228
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1229
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1230
    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    return v0
.end method

.method getIdleTime()J
    .locals 2

    .prologue
    .line 1300
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    return-wide v0
.end method

.method getState()Z
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    return v0
.end method

.method getUseTime()J
    .locals 2

    .prologue
    .line 1293
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    return-wide v0
.end method

.method init()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1237
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1238
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1240
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1247
    return-void
.end method

.method update(Z)V
    .locals 6
    .param p1, "available"    # Z

    .prologue
    .line 1253
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    if-eqz v4, :cond_0

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1255
    .local v0, "current":J
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    sub-long v2, v0, v4

    .line 1257
    .local v2, "delta":J
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    if-eq v4, p1, :cond_2

    .line 1258
    if-eqz p1, :cond_1

    .line 1259
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1270
    :goto_0
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1272
    .end local v0    # "current":J
    .end local v2    # "delta":J
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1273
    return-void

    .line 1261
    .restart local v0    # "current":J
    .restart local v2    # "delta":J
    :cond_1
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    .line 1264
    :cond_2
    if-eqz p1, :cond_3

    .line 1265
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    .line 1267
    :cond_3
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    goto :goto_0
.end method
