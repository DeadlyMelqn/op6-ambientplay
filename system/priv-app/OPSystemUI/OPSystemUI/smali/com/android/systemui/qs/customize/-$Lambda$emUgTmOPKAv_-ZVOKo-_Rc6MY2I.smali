.class final synthetic Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->lambda$-com_android_systemui_qs_customize_QSEditTileAdapter$DragListener_13817(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$-com_android_systemui_qs_customize_TileQueryHelper_4219(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->$id:B

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/-$Lambda$emUgTmOPKAv_-ZVOKo-_Rc6MY2I;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
