.class public Lcom/android/settings/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;
    }
.end annotation


# static fields
.field private static final MODE_DATA_MASK:I = 0x6

.field public static final MODE_DATA_MIDI:I = 0x6

.field public static final MODE_DATA_MTP:I = 0x2

.field public static final MODE_DATA_NONE:I = 0x0

.field public static final MODE_DATA_PTP:I = 0x4

.field private static final MODE_POWER_MASK:I = 0x1

.field public static final MODE_POWER_SINK:I = 0x0

.field public static final MODE_POWER_SOURCE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMidi:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private final mRestrictedBySystem:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userRestrictionUtil"    # Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    .line 58
    const-class v4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 60
    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->isUsbFileTransferRestricted()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    .line 61
    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->isUsbFileTransferRestrictedBySystem()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    .line 64
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    .line 65
    .local v2, "ports":[Landroid/hardware/usb/UsbPort;
    if-nez v2, :cond_0

    .line 66
    return-void

    .line 70
    :cond_0
    array-length v0, v2

    .line 71
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 73
    .local v3, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    aget-object v4, v2, v1

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 75
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 79
    .end local v3    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_1
    return-void

    .line 71
    .restart local v3    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isUsbDataUnlocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mContext:Landroid/content/Context;

    .line 105
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    :goto_0
    return v1

    .line 107
    :cond_0
    const-string/jumbo v2, "unlocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private modeToPower(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 142
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUsbFunction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 125
    :goto_0
    return-void

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "power":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/2addr v1, v0

    return v1

    .line 84
    .end local v0    # "power":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "power":I
    goto :goto_0

    .line 87
    .end local v0    # "power":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/lit8 v1, v1, 0x0

    return v1
.end method

.method public getUsbDataMode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbBackend;->isUsbDataUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return v2

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x2

    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x4

    return v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x6

    return v0

    .line 100
    :cond_3
    return v2
.end method

.method public isModeDisallowed(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_0

    .line 148
    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    return v2
.end method

.method public isModeDisallowedBySystem(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mRestrictedBySystem:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_0

    .line 157
    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    return v2
.end method

.method public isModeSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 165
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mMidi:Z

    if-nez v3, :cond_0

    and-int/lit8 v3, p1, 0x6

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 166
    return v2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_3

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    .line 171
    .local v0, "power":I
    and-int/lit8 v2, p1, 0x6

    if-eqz v2, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    return v1

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    .line 177
    :cond_2
    return v1

    .line 182
    .end local v0    # "power":I
    :cond_3
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v1, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    .line 133
    .local v1, "powerRole":I
    and-int/lit8 v2, p1, 0x6

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    .line 133
    if-eqz v2, :cond_1

    .line 135
    const/4 v0, 0x1

    .line 136
    .local v0, "dataRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 138
    .end local v0    # "dataRole":I
    .end local v1    # "powerRole":I
    :cond_0
    and-int/lit8 v2, p1, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbBackend;->setUsbFunction(I)V

    .line 139
    return-void

    .line 135
    .restart local v1    # "powerRole":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "dataRole":I
    goto :goto_0
.end method
