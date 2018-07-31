.class Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;
.super Landroid/view/OrientationEventListener;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 84
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 89
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 90
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 91
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 96
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-get1(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 97
    invoke-static {}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Orientype to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-set0(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)I

    .line 99
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-wrap3(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    .line 101
    :cond_1
    return-void
.end method
