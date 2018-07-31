.class public Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnificationConfirmationDialog"
.end annotation


# static fields
.field private static final EXTRA_COMPLIANT:Ljava/lang/String; = "compliant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1853
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newIntance(Z)Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    .locals 3
    .param p0, "compliant"    # Z

    .prologue
    .line 1857
    new-instance v1, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    invoke-direct {v1}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;-><init>()V

    .line 1858
    .local v1, "dialog":Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1859
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "compliant"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1860
    invoke-virtual {v1, v0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1861
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecuritySettings;

    .line 1875
    .local v1, "parentFragment":Lcom/android/settings/SecuritySettings;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "compliant"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1876
    .local v0, "compliant":Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1877
    const v3, 0x7f0f0ae8

    .line 1876
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1878
    if-eqz v0, :cond_0

    const v2, 0x7f0f0ae9

    .line 1876
    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1881
    if-eqz v0, :cond_1

    const v2, 0x7f0f0aeb

    .line 1883
    :goto_1
    new-instance v4, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;-><init>(Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;ZLcom/android/settings/SecuritySettings;)V

    .line 1876
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1894
    const v3, 0x7f0f06bf

    const/4 v4, 0x0

    .line 1876
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1879
    :cond_0
    const v2, 0x7f0f0aea

    goto :goto_0

    .line 1882
    :cond_1
    const v2, 0x7f0f0aec

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1900
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1901
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->-wrap4(Lcom/android/settings/SecuritySettings;)V

    .line 1902
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1866
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1868
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1870
    :cond_0
    return-void
.end method
