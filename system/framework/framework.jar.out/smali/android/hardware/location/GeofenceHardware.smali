.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    }
.end annotation


# static fields
.field public static final GEOFENCE_ENTERED:I = 0x1

.field public static final GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final GEOFENCE_EXITED:I = 0x2

.field public static final GEOFENCE_FAILURE:I = 0x5

.field public static final GEOFENCE_SUCCESS:I = 0x0

.field public static final GEOFENCE_UNCERTAIN:I = 0x4

.field public static final MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final MONITOR_UNSUPPORTED:I = 0x2

.field static final NUM_MONITORS:I = 0x2

.field public static final SOURCE_TECHNOLOGY_BLUETOOTH:I = 0x10

.field public static final SOURCE_TECHNOLOGY_CELL:I = 0x8

.field public static final SOURCE_TECHNOLOGY_GNSS:I = 0x1

.field public static final SOURCE_TECHNOLOGY_SENSORS:I = 0x4

.field public static final SOURCE_TECHNOLOGY_WIFI:I = 0x2


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method static synthetic -wrap0(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 0
    .param p0, "-this"    # Landroid/hardware/location/GeofenceHardware;
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/hardware/location/IGeofenceHardware;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 172
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 173
    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 447
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 449
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    if-nez v0, :cond_0

    .line 450
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 451
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 453
    return-object v0

    .line 447
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 465
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 467
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    .line 469
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 471
    return-object v0

    .line 465
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 441
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 444
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 458
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 461
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;
    .param p4, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    const/4 v4, 0x0

    .line 271
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 274
    new-instance v2, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v2, p1, p3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    .line 275
    invoke-direct {p0, p4}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    move-result-object v3

    .line 272
    invoke-interface {v1, p2, v2, v3}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v1

    return v1

    .line 277
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Geofence Request type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public getMonitoringTypes()[I
    .locals 2

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 2
    .param p1, "monitoringType"    # I

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public pauseGeofence(II)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 402
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v2

    .line 401
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public removeGeofence(II)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public resumeGeofence(III)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 4
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 431
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v3

    .line 430
    invoke-interface {v2, p1, v3}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v1

    .line 432
    .local v1, "result":Z
    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
