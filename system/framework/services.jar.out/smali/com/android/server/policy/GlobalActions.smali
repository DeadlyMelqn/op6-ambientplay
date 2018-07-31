.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field private final mShowTimeout:Ljava/lang/Runnable;

.field private mShowing:Z

.field private mStatusBarConnected:Z

.field private final mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 45
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setGlobalActionsListener(Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method private ensureLegacyCreated()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 56
    new-instance v3, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;-><init>(BLjava/lang/Object;)V

    .line 55
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    .line 57
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_policy_GlobalActions-mthref-0()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->onGlobalActionsDismissed()V

    return-void
.end method

.method public onGlobalActionsDismissed()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 85
    return-void
.end method

.method public onGlobalActionsShown()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public onStatusBarConnectedChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    .line 91
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    .line 96
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 4
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 62
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 64
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showGlobalActions()V

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    goto :goto_0
.end method
