.class final synthetic Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

.field public static final synthetic $INST$1:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

.field public static final synthetic $INST$2:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

.field public static final synthetic $INST$3:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

.field public static final synthetic $INST$4:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

.field public static final synthetic $INST$5:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/ConnectStats;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->-com_android_server_connectivity_NetdEventListenerService-mthref-0(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/DnsEvent;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->-com_android_server_connectivity_NetdEventListenerService-mthref-1(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/ConnectStats;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->lambda$-com_android_server_connectivity_NetdEventListenerService_8935(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/DnsEvent;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->lambda$-com_android_server_connectivity_NetdEventListenerService_8987(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/ConnectStats;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->-com_android_server_connectivity_NetdEventListenerService-mthref-2(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/metrics/DnsEvent;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->-com_android_server_connectivity_NetdEventListenerService-mthref-3(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$0:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$1:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$2:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$3:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$4:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    new-instance v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;-><init>(B)V

    sput-object v0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$5:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$m$5(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
