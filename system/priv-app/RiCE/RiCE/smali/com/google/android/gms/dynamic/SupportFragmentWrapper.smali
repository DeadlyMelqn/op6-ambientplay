.class public final Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
.super Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;


# instance fields
.field private zzabq:Landroid/support/v4/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public static wrap(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getActivity()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getId()I

    move-result p0

    return p0
.end method

.method public final getParentFragment()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getResources()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getRetainInstance()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getRetainInstance()Z

    move-result p0

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetFragment()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getTargetRequestCode()I

    move-result p0

    return p0
.end method

.method public final getUserVisibleHint()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p0

    return p0
.end method

.method public final getView()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final isAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public final isDetached()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result p0

    return p0
.end method

.method public final isHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p0

    return p0
.end method

.method public final isInLayout()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isInLayout()Z

    move-result p0

    return p0
.end method

.method public final isRemoving()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result p0

    return p0
.end method

.method public final isResumed()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final registerForContextMenu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final setHasOptionsMenu(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public final setRetainInstance(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final unregisterForContextMenu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/SupportFragmentWrapper;->zzabq:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method
