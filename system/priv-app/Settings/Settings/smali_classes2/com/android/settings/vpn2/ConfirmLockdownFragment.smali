.class public Lcom/android/settings/vpn2/ConfirmLockdownFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmLockdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;
    }
.end annotation


# static fields
.field private static final ARG_ALWAYS_ON:Ljava/lang/String; = "always_on"

.field private static final ARG_LOCKDOWN_DST:Ljava/lang/String; = "lockdown_new"

.field private static final ARG_LOCKDOWN_SRC:Ljava/lang/String; = "lockdown_old"

.field private static final ARG_OPTIONS:Ljava/lang/String; = "options"

.field private static final ARG_REPLACING:Ljava/lang/String; = "replacing"

.field private static final TAG:Ljava/lang/String; = "ConfirmLockdown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static shouldShow(ZZZ)Z
    .locals 1
    .param p0, "replacing"    # Z
    .param p1, "fromLockdown"    # Z
    .param p2, "toLockdown"    # Z

    .prologue
    .line 52
    if-nez p0, :cond_0

    if-eqz p2, :cond_1

    xor-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "replacing"    # Z
    .param p2, "alwaysOn"    # Z
    .param p3, "fromLockdown"    # Z
    .param p4, "toLockdown"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmLockdown"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "replacing"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v2, "always_on"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo v2, "lockdown_old"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string/jumbo v2, "lockdown_new"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string/jumbo v2, "options"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    new-instance v1, Lcom/android/settings/vpn2/ConfirmLockdownFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;-><init>()V

    .line 69
    .local v1, "frag":Lcom/android/settings/vpn2/ConfirmLockdownFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmLockdown"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "options"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "always_on"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "lockdown_new"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 108
    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;->onConfirmLockdown(Landroid/os/Bundle;ZZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "replacing"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 77
    .local v4, "replacing":Z
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "always_on"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, "alwaysOn":Z
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "lockdown_old"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 79
    .local v6, "wasLockdown":Z
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "lockdown_new"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 81
    .local v3, "nowLockdown":Z
    if-eqz v3, :cond_0

    const v5, 0x7f0f0e23

    .line 84
    .local v5, "titleId":I
    :goto_0
    if-eqz v4, :cond_2

    const v0, 0x7f0f0e08

    .line 87
    .local v0, "actionId":I
    :goto_1
    if-eqz v3, :cond_5

    .line 88
    if-eqz v4, :cond_4

    .line 89
    const v2, 0x7f0f0e13

    .line 97
    .local v2, "messageId":I
    :goto_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 100
    const v8, 0x7f0f06bf

    const/4 v9, 0x0

    .line 97
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 82
    .end local v0    # "actionId":I
    .end local v2    # "messageId":I
    .end local v5    # "titleId":I
    :cond_0
    if-eqz v4, :cond_1

    const v5, 0x7f0f0e10

    .restart local v5    # "titleId":I
    goto :goto_0

    .end local v5    # "titleId":I
    :cond_1
    const v5, 0x7f0f0e11

    .restart local v5    # "titleId":I
    goto :goto_0

    .line 85
    :cond_2
    if-eqz v3, :cond_3

    const v0, 0x7f0f0e16

    .restart local v0    # "actionId":I
    goto :goto_1

    .end local v0    # "actionId":I
    :cond_3
    const v0, 0x7f0f06c0

    .restart local v0    # "actionId":I
    goto :goto_1

    .line 90
    :cond_4
    const v2, 0x7f0f0e12

    .restart local v2    # "messageId":I
    goto :goto_2

    .line 92
    .end local v2    # "messageId":I
    :cond_5
    if-eqz v6, :cond_6

    .line 93
    const v2, 0x7f0f0e14

    .restart local v2    # "messageId":I
    goto :goto_2

    .line 94
    .end local v2    # "messageId":I
    :cond_6
    const v2, 0x7f0f0e15

    .restart local v2    # "messageId":I
    goto :goto_2
.end method
