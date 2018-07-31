.class final synthetic Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$-com_android_systemui_volume_ZenModePanel_8223(Landroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$-com_android_systemui_volume_ZenModePanel_8391(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->$id:B

    iput-object p2, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->$m$0(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;->$m$1(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
