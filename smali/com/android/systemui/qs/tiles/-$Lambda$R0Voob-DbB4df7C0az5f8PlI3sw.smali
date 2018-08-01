.class final synthetic Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$-com_android_systemui_qs_tiles_CastTile_4474()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$-com_android_systemui_qs_tiles_CastTile_5312()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$-com_android_systemui_qs_tiles_CastTile_4676()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-com_android_systemui_qs_tiles_CellularTile-mthref-0()V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-com_android_systemui_qs_tiles_CellularTile-mthref-1()V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->lambda$-com_android_systemui_qs_tiles_LocationTile_2694()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$id:B

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$R0Voob-DbB4df7C0az5f8PlI3sw;->$m$5()V

    return-void

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
