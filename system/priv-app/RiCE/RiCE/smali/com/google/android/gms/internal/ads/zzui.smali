.class final synthetic Lcom/google/android/gms/internal/ads/zzui;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

.field private final zzzo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->zzzo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzui;->zzzo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzuf;->zzbh(Ljava/lang/String;)V

    return-void
.end method