.class final synthetic Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    iget v1, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f0:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->lambda$-com_android_systemui_globalactions_ExtendedGlobalActionsDialog$ExtendedActionsDialog_20658(ILandroid/view/View;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget v1, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f0:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_50450(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->$id:B

    iput p2, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f0:I

    iput-object p3, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->$m$0(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/-$Lambda$UL3-O06Jmvg4YoH5txwMa6uDSKE$3;->$m$1(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
