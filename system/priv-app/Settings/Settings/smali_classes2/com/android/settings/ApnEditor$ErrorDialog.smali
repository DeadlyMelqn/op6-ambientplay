.class public Lcom/android/settings/ApnEditor$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/ApnEditor;)V
    .locals 3
    .param p0, "editor"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 1025
    new-instance v0, Lcom/android/settings/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/ApnEditor$ErrorDialog;-><init>()V

    .line 1026
    .local v0, "dialog":Lcom/android/settings/ApnEditor$ErrorDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1028
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->-wrap0(Lcom/android/settings/ApnEditor;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1035
    const v2, 0x7f0f0a32

    .line 1034
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1036
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 1034
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
