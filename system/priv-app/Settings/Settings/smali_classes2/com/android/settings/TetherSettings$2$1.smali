.class Lcom/android/settings/TetherSettings$2$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TetherSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/TetherSettings$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2$1;->this$1:Lcom/android/settings/TetherSettings$2;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2$1;->this$1:Lcom/android/settings/TetherSettings$2;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2$1;->this$1:Lcom/android/settings/TetherSettings$2;

    iget-object v1, v1, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectedStations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->-wrap4(Lcom/android/settings/TetherSettings;I)V

    .line 231
    return-void
.end method
