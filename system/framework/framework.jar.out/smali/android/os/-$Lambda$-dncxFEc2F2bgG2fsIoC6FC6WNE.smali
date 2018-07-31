.class final synthetic Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/BatteryStats$IntToString;


# static fields
.field public static final synthetic $INST$0:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

.field public static final synthetic $INST$1:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/os/BatteryStats;->-android_os_BatteryStats-mthref-0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/os/BatteryStats;->-android_os_BatteryStats-mthref-1(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$0:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    new-instance v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;-><init>(B)V

    sput-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$1:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsString(I)Ljava/lang/String;
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$m$0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$m$1(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
