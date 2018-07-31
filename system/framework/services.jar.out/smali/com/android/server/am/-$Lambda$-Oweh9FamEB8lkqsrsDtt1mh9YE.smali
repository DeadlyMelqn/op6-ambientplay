.class final synthetic Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:I

.field private final synthetic -$f5:I

.field private final synthetic -$f6:I

.field private final synthetic -$f7:I

.field private final synthetic -$f8:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f8:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f0:I

    iget v2, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f1:I

    iget v3, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f2:I

    iget v4, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f3:I

    iget v5, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f4:I

    iget v6, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f5:I

    iget v7, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f6:I

    iget v8, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f7:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$-com_android_server_am_BatteryStatsService_35434(IIIIIIII)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f8:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f0:I

    iget v2, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f1:I

    iget v3, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f2:I

    iget v4, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f3:I

    iget v5, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f4:I

    iget v6, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f5:I

    iget v7, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f6:I

    iget v8, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f7:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$-com_android_server_am_BatteryStatsService_34446(IIIIIIII)V

    return-void
.end method

.method public synthetic constructor <init>(BIIIIIIIILjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->$id:B

    iput p2, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f0:I

    iput p3, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f1:I

    iput p4, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f2:I

    iput p5, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f3:I

    iput p6, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f4:I

    iput p7, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f5:I

    iput p8, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f6:I

    iput p9, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f7:I

    iput-object p10, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->-$f8:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$-Oweh9FamEB8lkqsrsDtt1mh9YE;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
