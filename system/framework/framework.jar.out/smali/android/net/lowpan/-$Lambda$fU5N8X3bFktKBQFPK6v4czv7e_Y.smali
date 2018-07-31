.class final synthetic Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanManager$2;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/net/lowpan/LowpanManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/net/lowpan/LowpanManager$2;->lambda$-android_net_lowpan_LowpanManager$2_8833(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanManager$2;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/net/lowpan/LowpanManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/net/lowpan/LowpanManager$2;->lambda$-android_net_lowpan_LowpanManager$2_9391(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->$id:B

    iput-object p2, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
