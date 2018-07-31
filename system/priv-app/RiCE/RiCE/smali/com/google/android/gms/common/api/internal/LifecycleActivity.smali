.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zzkz:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzkz:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzbv()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzkz:Ljava/lang/Object;

    instance-of p0, p0, Landroid/support/v4/app/FragmentActivity;

    return p0
.end method

.method public final zzbw()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzkz:Ljava/lang/Object;

    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method

.method public final zzbx()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzkz:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public final zzby()Landroid/support/v4/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzkz:Ljava/lang/Object;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method
