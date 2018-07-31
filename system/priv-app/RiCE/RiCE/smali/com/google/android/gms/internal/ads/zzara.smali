.class final Lcom/google/android/gms/internal/ads/zzara;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzdcg:Lcom/google/android/gms/internal/ads/zzait;

.field private final synthetic zzdci:Lcom/google/android/gms/internal/ads/zzaqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Lcom/google/android/gms/internal/ads/zzait;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdci:Lcom/google/android/gms/internal/ads/zzaqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdcg:Lcom/google/android/gms/internal/ads/zzait;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdci:Lcom/google/android/gms/internal/ads/zzaqx;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdcg:Lcom/google/android/gms/internal/ads/zzait;

    const/16 v1, 0xa

    invoke-static {v0, p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/internal/ads/zzaqx;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
