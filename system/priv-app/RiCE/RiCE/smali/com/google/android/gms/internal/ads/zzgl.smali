.class final Lcom/google/android/gms/internal/ads/zzgl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaij:Landroid/view/View;

.field private final synthetic zzaik:Lcom/google/android/gms/internal/ads/zzgk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgk;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaik:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaij:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaik:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaij:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzk(Landroid/view/View;)V

    return-void
.end method
