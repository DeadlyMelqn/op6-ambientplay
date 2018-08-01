.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.super Ljava/lang/Object;
.source "ExtendedGlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$1;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$QuickRestartAction;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$RecoveryAction;,
        Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

.field private mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
    .param p1, "-value"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->handleShow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mKeyguardShowing:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDeviceProvisioned:Z

    .line 484
    new-instance v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    new-instance v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f12025d

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private createDialog()Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
    .locals 9

    .prologue
    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    .line 159
    iget-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 160
    const v7, 0x1070026

    .line 159
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "defaultActions":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 163
    .local v1, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_4

    .line 164
    aget-object v0, v2, v4

    .line 165
    .local v0, "actionKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const-string/jumbo v6, "quick_restart"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    iget-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$QuickRestartAction;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$QuickRestartAction;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_1
    const-string/jumbo v6, "recovery"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$RecoveryAction;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$RecoveryAction;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :cond_2
    const-string/jumbo v6, "bootloader"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_3
    const-string/jumbo v6, "ExtendedGlobalActionsDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid extended global action key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 182
    .end local v0    # "actionKey":Ljava/lang/String;
    :cond_4
    new-instance v6, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;)V

    iput-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    .line 184
    new-instance v5, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    .line 196
    .local v5, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    new-instance v3, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    iget-object v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-direct {v3, v6, p0, v7, v5}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 197
    .local v3, "dialog":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    iget-boolean v6, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mKeyguardShowing:Z

    invoke-virtual {v3, v6}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->setKeyguardShowing(Z)V

    .line 200
    invoke-virtual {v3, p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    return-object v3
.end method

.method private handleShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->prepareDialog()V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;

    .line 138
    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$LongPressAction;

    xor-int/lit8 v1, v1, 0x1

    .line 138
    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->onPress()V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "ExtendedActionsDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->show()V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->notifyDataSetChanged()V

    .line 280
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mExtendedAdapter:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    invoke-virtual {v1, p2}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->getItem(I)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;

    move-result-object v0

    .line 290
    .local v0, "item":Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 291
    invoke-interface {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;->onPress()V

    .line 292
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    .line 285
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mKeyguardShowing:Z

    .line 122
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDeviceProvisioned:Z

    .line 123
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->dismiss()V

    .line 125
    iput-object v1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->handleShow()V

    goto :goto_0
.end method
