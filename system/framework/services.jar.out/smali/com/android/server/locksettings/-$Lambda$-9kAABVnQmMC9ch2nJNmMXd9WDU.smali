.class final synthetic Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .prologue
    iget-object v0, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$-com_android_server_locksettings_SyntheticPasswordManager_11953(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;->$m$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method
