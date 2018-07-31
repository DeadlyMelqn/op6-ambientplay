.class final Lcom/google/android/gms/dynamic/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zza;


# instance fields
.field private final synthetic val$container:Landroid/view/ViewGroup;

.field private final synthetic zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

.field private final synthetic zzabi:Landroid/os/Bundle;

.field private final synthetic zzabj:Landroid/widget/FrameLayout;

.field private final synthetic zzabk:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzd;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zzd;->zzabj:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/zzd;->zzabk:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/zzd;->val$container:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/dynamic/zzd;->zzabi:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zzd;->zzabj:Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zzd;->zzabj:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzd;->zzabg:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zzb(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zzd;->zzabk:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/zzd;->val$container:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zzd;->zzabi:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
