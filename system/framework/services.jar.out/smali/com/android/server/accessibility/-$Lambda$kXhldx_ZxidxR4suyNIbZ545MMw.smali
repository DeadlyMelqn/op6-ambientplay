.class final synthetic Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->-$f0:I

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->lambda$-com_android_server_accessibility_AccessibilityManagerService$MainHandler_111597(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->-$f0:I

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->lambda$-com_android_server_accessibility_AccessibilityManagerService$MainHandler_113846(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->-$f0:I

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$-com_android_server_accessibility_AccessibilityManagerService_61897(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method

.method public synthetic constructor <init>(BI)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->$id:B

    iput p2, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->-$f0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
