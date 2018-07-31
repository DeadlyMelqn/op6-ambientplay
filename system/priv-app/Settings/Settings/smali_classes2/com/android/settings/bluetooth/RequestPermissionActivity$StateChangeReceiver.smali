.class final Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# static fields
.field private static final TOGGLE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$Lambda$cFLJgcJPUFmkNkl1kFB1RWwwX-A;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$Lambda$cFLJgcJPUFmkNkl1kFB1RWwwX-A;-><init>(Ljava/lang/Object;)V

    .line 366
    const-wide/16 v2, 0x2710

    .line 362
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_bluetooth_RequestPermissionActivity$StateChangeReceiver_13755()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-wrap0(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    if-nez p2, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    .line 373
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "currentState":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-get0(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 378
    :pswitch_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-wrap1(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    .line 384
    :pswitch_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-wrap1(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
