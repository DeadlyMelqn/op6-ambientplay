.class Lcom/android/systemui/qs/QSBtFooter$2;
.super Ljava/lang/Object;
.source "QSBtFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBtFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$2;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$2;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-wrap4(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 633
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 628
    return-void
.end method
