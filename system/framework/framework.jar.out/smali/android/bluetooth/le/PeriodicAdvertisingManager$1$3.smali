.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncLost(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic val$syncHandle:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncLost(I)V

    .line 232
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method