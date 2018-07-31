.class public Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
.super Ljava/lang/Object;
.source "InstantAppButtonsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;
    }
.end annotation


# static fields
.field public static final DLG_BASE:I = 0x5032

.field public static final DLG_CLEAR_APP:I = 0x5033


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private final mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

.field private mPackageName:Ljava/lang/String;

.field private final mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "showDialogDelegate"    # Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    .line 63
    iput-object p3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    .line 64
    iput-object p4, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    .line 65
    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 66
    return-void
.end method


# virtual methods
.method public bindButtons()V
    .locals 5

    .prologue
    .line 74
    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const v4, 0x7f0a01a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 75
    .local v2, "installButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const v4, 0x7f0a01a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    .local v1, "clearDataButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "appStoreIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 78
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    new-instance v3, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    new-instance v3, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public createDialog(I)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0f1272

    .line 86
    const/16 v1, 0x5033

    if-ne p1, v1, :cond_0

    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    const v2, 0x7f0f06bf

    .line 87
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    const v3, 0x7f0f1273

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 93
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0

    .line 95
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-object v4
.end method

.method synthetic lambda$-com_android_settings_applications_instantapps_InstantAppButtonsController_2956(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1
    .param p1, "appStoreIntent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_instantapps_InstantAppButtonsController_3057(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    const/16 v1, 0x5033

    invoke-interface {v0, v1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;->showDialog(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    .line 104
    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    .line 100
    new-array v3, v5, [Landroid/util/Pair;

    .line 103
    const/16 v4, 0x39b

    .line 100
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 106
    iget-object v1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 105
    invoke-interface {v0, v1, v3, v5, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 108
    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public show()Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->bindButtons()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-object p0
.end method
