.class public final Lcom/google/android/gms/internal/ads/zzaau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaav;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzanz<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object p0

    return-object p0
.end method
