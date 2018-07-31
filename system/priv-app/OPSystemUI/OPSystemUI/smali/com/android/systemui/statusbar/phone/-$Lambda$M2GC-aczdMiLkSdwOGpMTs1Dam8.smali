.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-5(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-6(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-8(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-10(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$m$0(Landroid/view/View;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$m$1(Landroid/view/View;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$m$2(Landroid/view/View;)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;->$m$3(Landroid/view/View;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
