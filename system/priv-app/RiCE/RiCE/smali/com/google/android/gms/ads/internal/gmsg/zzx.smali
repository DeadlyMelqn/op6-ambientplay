.class final Lcom/google/android/gms/ads/internal/gmsg/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbmk:Lorg/json/JSONObject;

.field private final synthetic zzbml:Lcom/google/android/gms/ads/internal/gmsg/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/zzw;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zzbml:Lcom/google/android/gms/ads/internal/gmsg/zzw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zzbmk:Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zzbml:Lcom/google/android/gms/ads/internal/gmsg/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/gmsg/zzw;->zzbmi:Lcom/google/android/gms/internal/ads/zzue;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zzbmk:Lorg/json/JSONObject;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzue;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p0, "Dispatched http response."

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    return-void
.end method
