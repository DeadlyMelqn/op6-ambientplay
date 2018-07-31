.class public Lcom/google/android/gms/common/internal/service/CommonClient;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/common/internal/service/ICommonService;",
        ">;"
    }
.end annotation


# static fields
.field public static final START_SERVICE_ACTION:Ljava/lang/String; = "com.google.android.gms.common.service.START"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/internal/service/CommonClient;->createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/service/ICommonService;

    move-result-object p0

    return-object p0
.end method

.method protected createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/service/ICommonService;
    .locals 0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/service/ICommonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/service/ICommonService;

    move-result-object p0

    return-object p0
.end method

.method public getMinApkVersion()I
    .locals 0

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/common/internal/GmsClient;->getMinApkVersion()I

    move-result p0

    return p0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object p0
.end method

.method public getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.common.service.START"

    return-object p0
.end method
