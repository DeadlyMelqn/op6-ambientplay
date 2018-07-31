.class final synthetic Lcom/google/android/gms/internal/ads/zzvn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbqh:Lcom/google/android/gms/internal/ads/zzuu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzbqh:Lcom/google/android/gms/internal/ads/zzuu;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzuu;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Lcom/google/android/gms/internal/ads/zzuu;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvn;->zzbqh:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->destroy()V

    return-void
.end method
