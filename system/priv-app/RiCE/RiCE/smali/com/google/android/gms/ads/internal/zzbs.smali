.class final Lcom/google/android/gms/ads/internal/zzbs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzci;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzaba:Lcom/google/android/gms/ads/internal/zzbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbs;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbs;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzc(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbs;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzbp;->zzd(Lcom/google/android/gms/ads/internal/zzbp;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzch;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzci;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzci;-><init>(Lcom/google/android/gms/internal/ads/zzce;)V

    return-object v0
.end method
