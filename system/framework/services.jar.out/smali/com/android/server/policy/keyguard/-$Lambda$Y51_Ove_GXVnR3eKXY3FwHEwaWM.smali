.class final synthetic Lcom/android/server/policy/keyguard/-$Lambda$Y51_Ove_GXVnR3eKXY3FwHEwaWM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/keyguard/-$Lambda$Y51_Ove_GXVnR3eKXY3FwHEwaWM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->lambda$-com_android_server_policy_keyguard_KeyguardServiceDelegate$1_8527()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/keyguard/-$Lambda$Y51_Ove_GXVnR3eKXY3FwHEwaWM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/-$Lambda$Y51_Ove_GXVnR3eKXY3FwHEwaWM;->$m$0()V

    return-void
.end method
