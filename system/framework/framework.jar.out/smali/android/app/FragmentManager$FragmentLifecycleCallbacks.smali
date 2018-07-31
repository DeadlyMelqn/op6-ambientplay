.class public abstract Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 487
    return-void
.end method

.method public onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    return-void
.end method

.method public onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 475
    return-void
.end method

.method public onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 563
    return-void
.end method

.method public onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 572
    return-void
.end method

.method public onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 526
    return-void
.end method

.method public onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    return-void
.end method

.method public onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 464
    return-void
.end method

.method public onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 517
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    return-void
.end method

.method public onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 508
    return-void
.end method

.method public onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 535
    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 499
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .prologue
    .line 554
    return-void
.end method
