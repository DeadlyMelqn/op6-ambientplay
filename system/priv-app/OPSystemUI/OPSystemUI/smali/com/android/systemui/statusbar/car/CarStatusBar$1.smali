.class Lcom/android/systemui/statusbar/car/CarStatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "CarStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/CarStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 283
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->-get0(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->-get0(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onPackageChange(Ljava/lang/String;)V

    .line 291
    return-void
.end method
