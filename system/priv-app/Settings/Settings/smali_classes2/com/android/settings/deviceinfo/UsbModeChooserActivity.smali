.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    const/4 v1, 0x1

    .line 60
    const/4 v2, 0x2

    .line 61
    const/4 v3, 0x4

    .line 62
    const/4 v4, 0x6

    .line 57
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 221
    packed-switch p0, :pswitch_data_0

    .line 234
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 223
    :pswitch_1
    const v0, 0x7f0f1088

    return v0

    .line 225
    :pswitch_2
    const v0, 0x7f0f108c

    return v0

    .line 227
    :pswitch_3
    const v0, 0x7f0f108e

    return v0

    .line 229
    :pswitch_4
    const v0, 0x7f0f1090

    return v0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 238
    packed-switch p0, :pswitch_data_0

    .line 251
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 240
    :pswitch_1
    const v0, 0x7f0f1087

    return v0

    .line 242
    :pswitch_2
    const v0, 0x7f0f108b

    return v0

    .line 244
    :pswitch_3
    const v0, 0x7f0f108d

    return v0

    .line 246
    :pswitch_4
    const v0, 0x7f0f108f

    return v0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;
    .param p4, "disallowedByAdmin"    # Z

    .prologue
    const/4 v8, 0x0

    .line 156
    const-string/jumbo v6, "persist.sys.sim.activate"

    .line 155
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "isSimCardInserted":Z
    const-string/jumbo v6, "persist.sys.usb.security"

    .line 157
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 160
    .local v1, "isUsbSecurityEnable":Z
    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040191

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, "titleView":Landroid/widget/TextView;
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 166
    .local v2, "summaryView":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v3

    .line 167
    .local v3, "titleResId":I
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 176
    if-eqz p4, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v6, :cond_3

    .line 178
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 184
    :cond_0
    new-instance v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v6, p0, p4, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v6, v5

    .line 201
    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 202
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v5, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    :cond_1
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    return-void

    .line 171
    :cond_2
    const-string/jumbo v6, "UsbMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No resource found for mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 180
    :cond_3
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "titleView"    # Landroid/widget/TextView;
    .param p3, "summaryView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    const v1, 0x7f0a02fc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    const/high16 v2, 0x7f0c0000

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 215
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 218
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 98
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    const v4, 0x7f0f1091

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 100
    const v4, 0x7f040223

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 101
    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 107
    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f0f06bf

    .line 98
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 115
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 117
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0a039e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 120
    .local v0, "container":Landroid/widget/LinearLayout;
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 119
    invoke-static {p0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 121
    new-instance v3, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    .line 122
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    .line 123
    .local v1, "current":I
    const-string/jumbo v3, "UsbModeChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 127
    if-eqz v3, :cond_0

    .line 133
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v3, v2

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    .line 134
    :goto_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v5

    .line 133
    invoke-direct {p0, v4, v3, v0, v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 137
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 151
    return-void
.end method
