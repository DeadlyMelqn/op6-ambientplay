.class Lcom/android/server/accessibility/AccessibilityManagerService$3;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field final synthetic val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    .line 1675
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1677
    const-string/jumbo v4, "touch_exploration_granted_accessibility_services"

    .line 1678
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1676
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 1680
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 1681
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iput-boolean v7, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1684
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1685
    const-string/jumbo v4, "touch_exploration_enabled"

    .line 1686
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 1685
    const/4 v6, 0x1

    .line 1684
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap20(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1691
    return-void

    .line 1687
    :catchall_0
    move-exception v3

    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1687
    throw v3
.end method
