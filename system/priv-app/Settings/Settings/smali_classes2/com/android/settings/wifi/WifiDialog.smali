.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# static fields
.field private static final BUTTON_FORGET:I = -0x3

.field private static final BUTTON_SUBMIT:I = -0x1

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    .param p3, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p4, "mode"    # I
    .param p5, "style"    # I
    .param p6, "hideSubmitButton"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 74
    sput-object p1, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 75
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    .line 76
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 77
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 78
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 79
    return-void
.end method

.method public static createFullscreen(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    .param p2, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p3, "mode"    # I

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    .line 57
    const v5, 0x7f10043f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v0
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    .param p2, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p3, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 66
    sput-object p0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    .line 68
    if-nez p3, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v0

    :cond_0
    move v6, v5

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 123
    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 162
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    return v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 128
    packed-switch p2, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 137
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040238

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 91
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 92
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v0, Lcom/android/settings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 96
    const/16 v1, 0x2000

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSubmitButton()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    .line 110
    :cond_1
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    .line 115
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    return-void
.end method
