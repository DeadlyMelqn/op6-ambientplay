.class final synthetic Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->lambda$-com_android_systemui_util_wakelock_WakeLock_1570(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/-$Lambda$YTIvR8NSRT2nriAeW75H2RGbebc;->$m$0()V

    return-void
.end method
