.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final ONEPLUS_TYPE_PICK_UP:I = 0x1fa2652

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POCKET:I = 0x1fa2651

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 796
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    .line 32
    return-void

    .line 796
    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .prologue
    .line 888
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 889
    const/16 v1, 0x11

    if-gt p1, v1, :cond_0

    .line 890
    const/4 v1, 0x3

    return v1

    .line 892
    :cond_0
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 893
    .local v0, "offset":I
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 898
    const/16 v1, 0x10

    return v1

    .line 900
    :cond_1
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v1, v1, v0

    return v1
.end method

.method private setType(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1157
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 1158
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1247
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1160
    :pswitch_1
    const-string/jumbo v0, "android.sensor.accelerometer"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1161
    return v1

    .line 1163
    :pswitch_2
    const-string/jumbo v0, "android.sensor.ambient_temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1164
    return v1

    .line 1166
    :pswitch_3
    const-string/jumbo v0, "android.sensor.game_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1167
    return v1

    .line 1169
    :pswitch_4
    const-string/jumbo v0, "android.sensor.geomagnetic_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1170
    return v1

    .line 1172
    :pswitch_5
    const-string/jumbo v0, "android.sensor.glance_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1173
    return v1

    .line 1175
    :pswitch_6
    const-string/jumbo v0, "android.sensor.gravity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1176
    return v1

    .line 1178
    :pswitch_7
    const-string/jumbo v0, "android.sensor.gyroscope"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1179
    return v1

    .line 1181
    :pswitch_8
    const-string/jumbo v0, "android.sensor.gyroscope_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1182
    return v1

    .line 1184
    :pswitch_9
    const-string/jumbo v0, "android.sensor.heart_rate"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1185
    return v1

    .line 1187
    :pswitch_a
    const-string/jumbo v0, "android.sensor.light"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1188
    return v1

    .line 1190
    :pswitch_b
    const-string/jumbo v0, "android.sensor.linear_acceleration"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1191
    return v1

    .line 1193
    :pswitch_c
    const-string/jumbo v0, "android.sensor.magnetic_field"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1194
    return v1

    .line 1196
    :pswitch_d
    const-string/jumbo v0, "android.sensor.magnetic_field_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1197
    return v1

    .line 1199
    :pswitch_e
    const-string/jumbo v0, "android.sensor.pick_up_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1200
    return v1

    .line 1202
    :pswitch_f
    const-string/jumbo v0, "android.sensor.pressure"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1203
    return v1

    .line 1205
    :pswitch_10
    const-string/jumbo v0, "android.sensor.proximity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1206
    return v1

    .line 1208
    :pswitch_11
    const-string/jumbo v0, "android.sensor.relative_humidity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1209
    return v1

    .line 1211
    :pswitch_12
    const-string/jumbo v0, "android.sensor.rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1212
    return v1

    .line 1214
    :pswitch_13
    const-string/jumbo v0, "android.sensor.significant_motion"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1215
    return v1

    .line 1217
    :pswitch_14
    const-string/jumbo v0, "android.sensor.step_counter"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1218
    return v1

    .line 1220
    :pswitch_15
    const-string/jumbo v0, "android.sensor.step_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1221
    return v1

    .line 1223
    :pswitch_16
    const-string/jumbo v0, "android.sensor.tilt_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1224
    return v1

    .line 1226
    :pswitch_17
    const-string/jumbo v0, "android.sensor.wake_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1227
    return v1

    .line 1229
    :pswitch_18
    const-string/jumbo v0, "android.sensor.orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1230
    return v1

    .line 1232
    :pswitch_19
    const-string/jumbo v0, "android.sensor.temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1233
    return v1

    .line 1235
    :pswitch_1a
    const-string/jumbo v0, "android.sensor.device_orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1236
    return v1

    .line 1238
    :pswitch_1b
    const-string/jumbo v0, "android.sensor.dynamic_sensor_meta"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1239
    return v1

    .line 1241
    :pswitch_1c
    const-string/jumbo v0, "android.sensor.low_latency_offbody_detect"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1242
    return v1

    .line 1244
    :pswitch_1d
    const-string/jumbo v0, "android.sensor.accelerometer_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1245
    return v1

    .line 1158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_18
        :pswitch_7
        :pswitch_a
        :pswitch_f
        :pswitch_19
        :pswitch_10
        :pswitch_6
        :pswitch_b
        :pswitch_12
        :pswitch_11
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_8
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_4
        :pswitch_9
        :pswitch_16
        :pswitch_17
        :pswitch_5
        :pswitch_e
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .locals 1
    .param p1, "msb"    # J
    .param p3, "lsb"    # J

    .prologue
    .line 1263
    long-to-int v0, p1

    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    .line 1264
    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 861
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x380

    shr-int/lit8 v0, v2, 0x7

    .line 862
    .local v0, "rateLevel":I
    if-gt v0, v1, :cond_0

    .end local v0    # "rateLevel":I
    :goto_0
    return v0

    .restart local v0    # "rateLevel":I
    :cond_0
    move v0, v1

    .line 863
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1118
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDataInjectionSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1132
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .locals 3
    .param p1, "sharedMemType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 881
    return v1

    .line 877
    :pswitch_0
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 879
    :pswitch_1
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDynamicSensor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1108
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWakeUpSensor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1098
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    .prologue
    .line 1136
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1137
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    const-string/jumbo v1, ", type="

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    const-string/jumbo v1, ", maxRange="

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    const-string/jumbo v1, ", resolution="

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    const-string/jumbo v1, ", power="

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    const-string/jumbo v1, ", minDelay="

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    const-string/jumbo v1, "}"

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
