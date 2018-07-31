.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field deviceHasKeyguard:Z

.field dreaming:Z

.field public enabled:Z

.field inputRestricted:Z

.field public interactiveState:I

.field isFingerprintAuthenticating:Z

.field occluded:Z

.field public offReason:I

.field public screenState:I

.field secure:Z

.field showing:Z

.field showingAndNotOccluded:Z

.field systemIsReady:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    .line 58
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 88
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 89
    return-void
.end method
