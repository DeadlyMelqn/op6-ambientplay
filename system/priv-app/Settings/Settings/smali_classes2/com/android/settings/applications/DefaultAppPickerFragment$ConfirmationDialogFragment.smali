.class public Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DefaultAppPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# static fields
.field public static final EXTRA_KEY:Ljava/lang/String; = "extra_key"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "extra_message"

.field public static final TAG:Ljava/lang/String; = "DefaultAppConfirm"


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x317

    return v0
.end method

.method public init(Lcom/android/settings/applications/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/settings/applications/DefaultAppPickerFragment;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "argument":Landroid/os/Bundle;
    const-string/jumbo v1, "extra_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "extra_message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 134
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/settings/applications/DefaultAppPickerFragment;

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast v1, Lcom/android/settings/applications/DefaultAppPickerFragment;

    .line 137
    .end local v1    # "fragment":Landroid/app/Fragment;
    const-string/jumbo v2, "extra_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/android/settings/applications/DefaultAppPickerFragment;->-wrap0(Lcom/android/settings/applications/DefaultAppPickerFragment;Ljava/lang/String;)V

    .line 139
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 124
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    const-string/jumbo v3, "extra_message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 126
    const v3, 0x104000a

    .line 124
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v4, 0x1040000

    .line 124
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    return-void
.end method
