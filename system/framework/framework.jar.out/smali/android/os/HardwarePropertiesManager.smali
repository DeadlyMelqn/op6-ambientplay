.class public Landroid/os/HardwarePropertiesManager;
.super Ljava/lang/Object;
.source "HardwarePropertiesManager.java"


# static fields
.field public static final DEVICE_TEMPERATURE_BATTERY:I = 0x2

.field public static final DEVICE_TEMPERATURE_CPU:I = 0x0

.field public static final DEVICE_TEMPERATURE_GPU:I = 0x1

.field public static final DEVICE_TEMPERATURE_SKIN:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TEMPERATURE_CURRENT:I = 0x0

.field public static final TEMPERATURE_SHUTDOWN:I = 0x2

.field public static final TEMPERATURE_THROTTLING:I = 0x1

.field public static final TEMPERATURE_THROTTLING_BELOW_VR_MIN:I = 0x3

.field public static final UNDEFINED_TEMPERATURE:F = -3.4028235E38f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IHardwarePropertiesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Landroid/os/HardwarePropertiesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IHardwarePropertiesManager;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 99
    return-void
.end method


# virtual methods
.method public getCpuUsages()[Landroid/os/CpuUsageInfo;
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v2, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IHardwarePropertiesManager;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDeviceTemperatures(II)[F
    .locals 4
    .param p1, "type"    # I
    .param p2, "source"    # I

    .prologue
    const/4 v3, 0x0

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 140
    sget-object v1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unknown device temperature type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-array v1, v3, [F

    return-object v1

    .line 124
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 136
    sget-object v1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unknown device temperature source."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-array v1, v3, [F

    return-object v1

    .line 130
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v2, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/os/IHardwarePropertiesManager;->getDeviceTemperatures(Ljava/lang/String;II)[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getFanSpeeds()[F
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v2, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IHardwarePropertiesManager;->getFanSpeeds(Ljava/lang/String;)[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
