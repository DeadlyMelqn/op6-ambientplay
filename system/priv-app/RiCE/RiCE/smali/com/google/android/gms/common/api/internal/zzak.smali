.class final Lcom/google/android/gms/common/api/internal/zzak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhv:Lcom/google/android/gms/common/api/internal/zzaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzak;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzak;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzb(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzak;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    return-void
.end method
