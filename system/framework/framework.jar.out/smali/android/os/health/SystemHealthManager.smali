.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 0
    .param p1, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 59
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/SystemHealthManager;

    return-object v0
.end method


# virtual methods
.method public takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 88
    .local v1, "parceler":Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v1}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 89
    .end local v1    # "parceler":Landroid/os/health/HealthStatsParceler;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 122
    :try_start_0
    iget-object v5, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    .line 123
    .local v3, "parcelers":[Landroid/os/health/HealthStatsParceler;
    array-length v5, p1

    new-array v4, v5, [Landroid/os/health/HealthStats;

    .line 124
    .local v4, "results":[Landroid/os/health/HealthStats;
    array-length v0, p1

    .line 125
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 126
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object v4

    .line 129
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "parcelers":[Landroid/os/health/HealthStatsParceler;
    .end local v4    # "results":[Landroid/os/health/HealthStats;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
