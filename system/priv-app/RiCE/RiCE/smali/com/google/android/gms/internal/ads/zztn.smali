.class final Lcom/google/android/gms/internal/ads/zztn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzts;


# instance fields
.field private final synthetic zzboa:Lcom/google/android/gms/internal/ads/zzagu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzagu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztn;->zzboa:Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zztt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztt;->zzboh:Lcom/google/android/gms/internal/ads/zzahe;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztt;->zzboh:Lcom/google/android/gms/internal/ads/zzahe;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzboa:Lcom/google/android/gms/internal/ads/zzagu;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzahe;->zza(Lcom/google/android/gms/internal/ads/zzagu;)V

    :cond_0
    return-void
.end method