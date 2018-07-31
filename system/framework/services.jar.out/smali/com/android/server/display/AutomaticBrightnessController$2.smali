.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1385
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1204
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get16(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1206
    .local v8, "time":J
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v5, v7, v10

    .line 1209
    .local v5, "lux":F
    const/4 v4, 0x0

    .line 1210
    .local v4, "hbm_statu":I
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1211
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lux = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mAppState= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput v10, v7, v11

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1213
    const v7, 0x458ca000    # 4500.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_c

    .line 1215
    :try_start_0
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v7, v7, Lcom/android/server/display/AutomaticBrightnessController;->flinger:Landroid/os/IBinder;

    if-eqz v7, :cond_1

    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1217
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1218
    .local v6, "reply":Landroid/os/Parcel;
    const-string/jumbo v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1219
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v7, v7, Lcom/android/server/display/AutomaticBrightnessController;->flinger:Landroid/os/IBinder;

    const/16 v10, 0x2713

    const/4 v11, 0x0

    invoke-interface {v7, v10, v0, v6, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1220
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1221
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v6    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get10(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1229
    :cond_2
    const v7, 0x46c35000    # 25000.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_6

    .line 1230
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "5"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_3
    :goto_1
    sget v7, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_4

    .line 1255
    const/4 v7, 0x2

    sput v7, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 1256
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "sBrightnessBoost == 2"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get21(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1260
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1261
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "P-Sensor is Changed true lux = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_5
    return-void

    .line 1224
    :catch_0
    move-exception v3

    .line 1225
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "read flinger 10003 is fail"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6
    const v7, 0x469c4000    # 20000.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_7

    .line 1232
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "4"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1233
    :cond_7
    const v7, 0x466a6000    # 15000.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    .line 1234
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "3"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1235
    :cond_8
    const/high16 v7, 0x45fa0000    # 8000.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_9

    .line 1236
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "2"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1238
    :cond_9
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "1"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1240
    :cond_a
    const/4 v7, 0x1

    if-eq v4, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get10(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1241
    :cond_b
    const-string/jumbo v7, "sys.hbm"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1242
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1245
    :cond_c
    const-string/jumbo v7, "sys.hbm"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1246
    const-string/jumbo v7, "sys.hbm"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1264
    :cond_d
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v7, v7, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    if-eqz v7, :cond_e

    .line 1265
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 1266
    :cond_e
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get20(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get12(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get12(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_f

    .line 1267
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set8(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1268
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set5(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1269
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set4(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1270
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 1271
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1272
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pickup sensor is enable lux = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_f
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v7, :cond_10

    .line 1276
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Light-Sensor Changed lux: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "mAmbientState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1277
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v11

    .line 1276
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1277
    const-string/jumbo v11, " mAmbientLuxMin: "

    .line 1276
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1277
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v11

    .line 1276
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1277
    const-string/jumbo v11, " mAmbientLuxMax: "

    .line 1276
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1277
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v11

    .line 1276
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_10
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_15

    .line 1279
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set6(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1280
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_11

    .line 1281
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-gez v7, :cond_13

    .line 1282
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v7, :cond_11

    .line 1283
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "onSensorChanged: first lux  is illegal"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_11
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get27(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1313
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_17

    .line 1314
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1315
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v7, :cond_12

    .line 1316
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "received 0lux at"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get26(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "now received lux="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_12
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_18

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_18

    .line 1326
    return-void

    .line 1286
    :cond_13
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_11

    sget v7, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    const/4 v10, 0x2

    if-eq v7, v10, :cond_11

    .line 1287
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get27(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1286
    if-eqz v7, :cond_11

    .line 1288
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController;->-set11(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1289
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set12(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1290
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1291
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v7, :cond_14

    .line 1292
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "onSensorChanged: first received lux = 0"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_14
    return-void

    .line 1299
    :cond_15
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_11

    sget v7, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    const/4 v10, 0x2

    if-eq v7, v10, :cond_11

    .line 1300
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get27(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1299
    if-eqz v7, :cond_11

    .line 1301
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController;->-set11(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1302
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set12(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1303
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1304
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v7, :cond_16

    .line 1305
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "onSensorChanged: first received lux = 0"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_16
    return-void

    .line 1320
    :cond_17
    const-string/jumbo v7, "AutomaticBrightnessController"

    const-string/jumbo v10, "it will not go here"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1329
    :cond_18
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_1a

    .line 1330
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_19

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get12(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_19

    .line 1331
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x2

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1332
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1334
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v10, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get11(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v11

    aget v10, v10, v11

    .line 1332
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1336
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1337
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1338
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessController;->-get12(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1339
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessController;->-get11(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1340
    return-void

    .line 1343
    :cond_19
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1a

    .line 1344
    return-void

    .line 1347
    :cond_1a
    sget v7, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v10, 0xff

    if-ne v7, v10, :cond_1b

    .line 1348
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get14(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v11

    invoke-virtual {v10, v5, v11}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->calculateRate(FF)I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set10(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1349
    :cond_1b
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v7, :cond_1c

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1350
    :cond_1c
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lux="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,mLastObservedLux="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get14(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1351
    const-string/jumbo v11, " ,mScreenAutoRate="

    .line 1350
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1351
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get24(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v11

    .line 1350
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_1d
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-set7(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1354
    const/4 v1, 0x0

    .line 1355
    .local v1, "elemNdx":I
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 1356
    .local v2, "elementLen":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1e

    .line 1357
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v7, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v7, v7, v1

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_22

    .line 1358
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v7, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v5, v7, v1

    .line 1359
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v10, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v10, v10, v1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1360
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v10, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    aget v10, v10, v1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1361
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7, v1}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1373
    :cond_1e
    :goto_3
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1374
    sget-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v7, :cond_1f

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1375
    :cond_1f
    const-string/jumbo v7, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Light-Sensor Changed new lux: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "mAmbientState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1376
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v11

    .line 1375
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_20
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7, v8, v9, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1380
    .end local v1    # "elemNdx":I
    .end local v2    # "elementLen":I
    .end local v4    # "hbm_statu":I
    .end local v5    # "lux":F
    .end local v8    # "time":J
    :cond_21
    return-void

    .line 1364
    .restart local v1    # "elemNdx":I
    .restart local v2    # "elementLen":I
    .restart local v4    # "hbm_statu":I
    .restart local v5    # "lux":F
    .restart local v8    # "time":J
    :cond_22
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v7, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v10, v2, -0x1

    aget v7, v7, v10

    cmpl-float v7, v5, v7

    if-lez v7, :cond_23

    .line 1365
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v7, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v10, v2, -0x1

    aget v5, v7, v10

    .line 1366
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v10, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    add-int/lit8 v11, v2, -0x1

    aget v10, v10, v11

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1367
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v10, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    add-int/lit8 v11, v2, -0x1

    aget v10, v10, v11

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1368
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    add-int/lit8 v10, v2, -0x1

    invoke-static {v7, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_3

    .line 1356
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method
