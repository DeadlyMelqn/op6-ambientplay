.class final synthetic Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->-com_android_server_utils_ManagedApplicationService-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;->$m$0()V

    return-void
.end method
