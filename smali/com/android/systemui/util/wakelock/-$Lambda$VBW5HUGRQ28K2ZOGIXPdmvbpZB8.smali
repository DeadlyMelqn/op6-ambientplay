.class final synthetic Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-static {v0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;->-com_android_systemui_util_wakelock_DelayedWakeLock-mthref-0(Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/-$Lambda$VBW5HUGRQ28K2ZOGIXPdmvbpZB8;->$m$0()V

    return-void
.end method
