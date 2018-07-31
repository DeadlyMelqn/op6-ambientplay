.class public Landroid/hardware/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source "SensorAdditionalInfo.java"


# static fields
.field public static final TYPE_CUSTOM_INFO:I = 0x10000000

.field public static final TYPE_DEBUG_INFO:I = 0x40000000

.field public static final TYPE_DOCK_STATE:I = 0x30002

.field public static final TYPE_FRAME_BEGIN:I = 0x0

.field public static final TYPE_FRAME_END:I = 0x1

.field public static final TYPE_HIGH_PERFORMANCE_MODE:I = 0x30003

.field public static final TYPE_INTERNAL_TEMPERATURE:I = 0x10001

.field public static final TYPE_LOCAL_GEOMAGNETIC_FIELD:I = 0x30000

.field public static final TYPE_LOCAL_GRAVITY:I = 0x30001

.field public static final TYPE_MAGNETIC_FIELD_CALIBRATION:I = 0x30004

.field public static final TYPE_SAMPLING:I = 0x10004

.field public static final TYPE_SENSOR_PLACEMENT:I = 0x10003

.field public static final TYPE_UNTRACKED_DELAY:I = 0x10000

.field public static final TYPE_VEC3_CALIBRATION:I = 0x10002


# instance fields
.field public final floatValues:[F

.field public final intValues:[I

.field public final sensor:Landroid/hardware/Sensor;

.field public final serial:I

.field public final type:I


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;II[I[F)V
    .locals 0
    .param p1, "aSensor"    # Landroid/hardware/Sensor;
    .param p2, "aType"    # I
    .param p3, "aSerial"    # I
    .param p4, "aIntValues"    # [I
    .param p5, "aFloatValues"    # [F

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    .line 205
    iput p2, p0, Landroid/hardware/SensorAdditionalInfo;->type:I

    .line 206
    iput p3, p0, Landroid/hardware/SensorAdditionalInfo;->serial:I

    .line 207
    iput-object p4, p0, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    .line 208
    iput-object p5, p0, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    .line 209
    return-void
.end method

.method public static createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;
    .locals 6
    .param p0, "aSensor"    # Landroid/hardware/Sensor;
    .param p1, "type"    # I
    .param p2, "data"    # [F

    .prologue
    const/4 v4, 0x0

    .line 226
    const/high16 v0, 0x10000000

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-lt p1, v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter(s): type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const-string/jumbo v2, "; sensor: "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    if-eqz p0, :cond_0

    .line 231
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v0
.end method

.method public static createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;
    .locals 8
    .param p0, "strength"    # F
    .param p1, "declination"    # F
    .param p2, "inclination"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 214
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geomagnetic field info out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_0

    .line 216
    float-to-double v4, p2

    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_0

    float-to-double v4, p2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_0

    .line 220
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    .line 222
    const/4 v2, 0x3

    new-array v5, v2, [F

    aput p0, v5, v3

    const/4 v2, 0x1

    aput p1, v5, v2

    const/4 v2, 0x2

    aput p2, v5, v2

    .line 221
    const/high16 v2, 0x30000

    move-object v4, v1

    .line 220
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v0
.end method
