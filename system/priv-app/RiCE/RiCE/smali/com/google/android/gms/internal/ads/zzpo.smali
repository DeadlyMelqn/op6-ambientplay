.class final Lcom/google/android/gms/internal/ads/zzpo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzox;


# instance fields
.field private final synthetic zzbkc:Landroid/view/View;

.field private final synthetic zzbkd:Lcom/google/android/gms/internal/ads/zzpn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpn;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkd:Lcom/google/android/gms/internal/ads/zzpn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkc:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkd:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzki()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkc:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzpn;->onClick(Landroid/view/View;)V

    return-void
.end method
