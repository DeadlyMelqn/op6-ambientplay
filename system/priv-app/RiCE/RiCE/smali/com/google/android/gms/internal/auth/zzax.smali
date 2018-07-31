.class public final Lcom/google/android/gms/internal/auth/zzax;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/auth/zzbc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdv:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/zzax;->zzdv:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzbc;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzbc;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzbd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzbd;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzax;->zzdv:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    if-nez v0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzax;->zzdv:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xbdfcb8

    return p0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object p0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object p0
.end method

.method final zzk()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzax;->zzdv:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    return-object p0
.end method
