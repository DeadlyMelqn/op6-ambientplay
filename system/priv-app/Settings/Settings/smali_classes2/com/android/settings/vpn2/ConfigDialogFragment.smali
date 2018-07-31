.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# static fields
.field private static final ARG_EDITING:Ljava/lang/String; = "editing"

.field private static final ARG_EXISTS:Ljava/lang/String; = "exists"

.field private static final ARG_PROFILE:Ljava/lang/String; = "profile"

.field private static final TAG:Ljava/lang/String; = "ConfigDialogFragment"

.field private static final TAG_CONFIG_DIALOG:Ljava/lang/String; = "vpnconfigdialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 46
    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "lockdown"    # Z

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    .line 229
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ConfigDialogFragment"

    const-string/jumbo v3, "Failed to connect"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0e27

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ConfigDialogFragment"

    const-string/jumbo v2, "Failed to disconnect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v1, 0x0

    return v1
.end method

.method private isConnected(Lcom/android/internal/net/VpnProfile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 261
    .local v0, "connected":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private save(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "lockdown"    # Z

    .prologue
    .line 214
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    .line 215
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 214
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    .line 221
    invoke-direct {p0, p2, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 222
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/vpn2/VpnSettings;
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "edit"    # Z
    .param p3, "exists"    # Z

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "profile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string/jumbo v2, "editing"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string/jumbo v2, "exists"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance v1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 77
    .local v1, "frag":Lcom/android/settings/vpn2/ConfigDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vpnconfigdialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "isVpnAlwaysOn"    # Z
    .param p2, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 193
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0e26

    .line 197
    const/4 v3, 0x1

    .line 196
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 202
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 203
    const/4 v3, 0x0

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    .line 204
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    .end local v0    # "conn":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 188
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 189
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    check-cast v6, Lcom/android/settings/vpn2/ConfigDialog;

    .line 146
    .local v6, "dialog":Lcom/android/settings/vpn2/ConfigDialog;
    invoke-virtual {v6}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v9

    .line 148
    .local v9, "profile":Lcom/android/internal/net/VpnProfile;
    if-ne p2, v11, :cond_4

    .line 150
    invoke-virtual {v6}, Lcom/android/settings/vpn2/ConfigDialog;->isVpnAlwaysOn()Z

    move-result v2

    .line 151
    .local v2, "shouldLockdown":Z
    if-nez v2, :cond_1

    invoke-virtual {v6}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v3

    .line 154
    .local v3, "wasLockdown":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isVpnActive(Landroid/content/Context;)Z

    move-result v1

    .line 155
    .local v1, "replace":Z
    if-eqz v10, :cond_2

    invoke-direct {p0, v9}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 156
    invoke-static {v1, v3, v2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_2

    .line 157
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v5, "opts":Landroid/os/Bundle;
    const-string/jumbo v0, "profile"

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, p0

    move v4, v2

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "replace":Z
    .end local v2    # "shouldLockdown":Z
    .end local v3    # "wasLockdown":Z
    .end local v5    # "opts":Landroid/os/Bundle;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 183
    return-void

    .line 151
    .restart local v2    # "shouldLockdown":Z
    :cond_1
    const/4 v10, 0x1

    .local v10, "shouldConnect":Z
    goto :goto_0

    .line 161
    .end local v10    # "shouldConnect":Z
    .restart local v1    # "replace":Z
    .restart local v3    # "wasLockdown":Z
    :cond_2
    if-eqz v10, :cond_3

    .line 162
    :try_start_1
    invoke-direct {p0, v9, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 166
    .end local v1    # "replace":Z
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ConfigDialogFragment"

    const-string/jumbo v4, "Failed to check active VPN state. Skipping."

    invoke-static {v0, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v1    # "replace":Z
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v9, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 169
    .end local v1    # "replace":Z
    .end local v2    # "shouldLockdown":Z
    .end local v3    # "wasLockdown":Z
    :cond_4
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 171
    invoke-direct {p0, v9}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    const-string/jumbo v0, "ConfigDialogFragment"

    const-string/jumbo v4, "Failed to disconnect VPN. Leaving profile in keystore."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 177
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v8

    .line 178
    .local v8, "keyStore":Landroid/security/KeyStore;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VPN_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v9, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 180
    invoke-direct {p0, v12, v9}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "positiveButton"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 134
    return-void
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "isAlwaysOn"    # Z
    .param p3, "isLockdown"    # Z

    .prologue
    .line 138
    const-string/jumbo v1, "profile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 139
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 141
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 112
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "profile"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 113
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    const-string/jumbo v1, "editing"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 114
    .local v4, "editing":Z
    const-string/jumbo v1, "exists"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 116
    .local v5, "exists":Z
    new-instance v0, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 117
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 93
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 107
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
