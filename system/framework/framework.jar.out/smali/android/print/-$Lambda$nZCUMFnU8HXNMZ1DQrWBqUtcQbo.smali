.class final synthetic Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# static fields
.field public static final synthetic $INST$0:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

.field public static final synthetic $INST$1:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

.field public static final synthetic $INST$2:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

.field public static final synthetic $INST$3:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->lambda$-android_print_PrinterCapabilitiesInfo$Builder_18342(I)V

    return-void
.end method

.method private final synthetic $m$1(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->lambda$-android_print_PrinterCapabilitiesInfo$Builder_19452(I)V

    return-void
.end method

.method private final synthetic $m$2(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->lambda$-android_print_PrinterCapabilitiesInfo_6870(I)V

    return-void
.end method

.method private final synthetic $m$3(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->lambda$-android_print_PrinterCapabilitiesInfo_7037(I)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;-><init>(B)V

    sput-object v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$INST$0:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;-><init>(B)V

    sput-object v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$INST$1:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;-><init>(B)V

    sput-object v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$INST$2:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    new-instance v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;-><init>(B)V

    sput-object v0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$INST$3:Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$m$0(I)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$m$1(I)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$m$2(I)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/print/-$Lambda$nZCUMFnU8HXNMZ1DQrWBqUtcQbo;->$m$3(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
