.class public abstract Landroid/view/InputFilter;
.super Landroid/view/IInputFilter$Stub;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputFilter$H;
    }
.end annotation


# static fields
.field private static final MSG_INPUT_EVENT:I = 0x3

.field private static final MSG_INSTALL:I = 0x1

.field private static final MSG_UNINSTALL:I = 0x2


# instance fields
.field private final mH:Landroid/view/InputFilter$H;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method static synthetic -get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .param p0, "-this"    # Landroid/view/InputFilter;

    .prologue
    iget-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .param p0, "-this"    # Landroid/view/InputFilter;

    .prologue
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;
    .locals 0
    .param p0, "-this"    # Landroid/view/InputFilter;
    .param p1, "-value"    # Landroid/view/IInputFilterHost;

    .prologue
    iput-object p1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    return-object p1
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 120
    invoke-direct {p0}, Landroid/view/IInputFilter$Stub;-><init>()V

    .line 101
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    .line 104
    const-string/jumbo v2, "InputFilter#InboundInputEventConsistencyVerifier"

    .line 102
    invoke-direct {v0, p0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 100
    :goto_0
    iput-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 106
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    .line 109
    const-string/jumbo v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    .line 107
    invoke-direct {v1, p0, v3, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 105
    :cond_0
    iput-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 121
    new-instance v0, Landroid/view/InputFilter$H;

    invoke-direct {v0, p0, p1}, Landroid/view/InputFilter$H;-><init>(Landroid/view/InputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    .line 122
    return-void

    :cond_1
    move-object v0, v1

    .line 104
    goto :goto_0
.end method


# virtual methods
.method public final filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 150
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    return-void
.end method

.method public final install(Landroid/view/IInputFilterHost;)V
    .locals 2
    .param p1, "host"    # Landroid/view/IInputFilterHost;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 191
    return-void
.end method

.method public onInstalled()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onUninstalled()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    iget-object v1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    if-nez v1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot send input event because the input filter is not installed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 171
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final uninstall()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method
