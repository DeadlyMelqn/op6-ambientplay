.class public Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;
.super Ljava/lang/Object;
.source "WifiDetailActionBarObserver.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnCreate;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;->mFragment:Landroid/app/Fragment;

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;->mContext:Landroid/content/Context;

    const v2, 0x7f0f12aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method
