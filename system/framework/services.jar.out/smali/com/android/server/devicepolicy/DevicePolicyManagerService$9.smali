.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$packageActiveAdmins:Ljava/util/List;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$packageActiveAdmins:Ljava/util/List;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$userId:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$packageName:Ljava/lang/String;

    .line 10454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 10457
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$packageActiveAdmins:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activeAdmin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 10458
    .local v0, "activeAdmin":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$userId:I

    invoke-static {v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap15(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 10460
    .end local v0    # "activeAdmin":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$9;->val$userId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap22(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 10461
    return-void
.end method