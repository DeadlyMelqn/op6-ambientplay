.class Lcom/android/server/BluetoothManagerService$2;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    new-array v0, v3, [Ljava/lang/String;

    .line 274
    const-string/jumbo v1, "no_bluetooth_sharing"

    aput-object v1, v0, v2

    .line 273
    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 276
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 275
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/BluetoothManagerService;->-wrap26(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 280
    :cond_0
    if-nez p1, :cond_1

    .line 281
    new-array v0, v3, [Ljava/lang/String;

    .line 282
    const-string/jumbo v1, "no_bluetooth"

    aput-object v1, v0, v2

    .line 281
    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v0

    .line 280
    if-eqz v0, :cond_1

    .line 283
    if-nez p1, :cond_2

    .line 284
    const-string/jumbo v0, "no_bluetooth"

    .line 283
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, p1, v3}, Lcom/android/server/BluetoothManagerService;->-wrap26(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 286
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string/jumbo v1, "disallowed by system"

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-wrap20(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 289
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 288
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/BluetoothManagerService;->-wrap26(Lcom/android/server/BluetoothManagerService;IZ)V

    goto :goto_0
.end method
