.class Lcom/android/systemui/statusbar/phone/StatusBar$49$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$49;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$49;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$49;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$49;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$49;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->val$appUid:I

    .line 7347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$49;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 7351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->val$intent:Landroid/content/Intent;

    .line 7350
    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 7352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$49;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$49;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v1

    .line 7353
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$49$1;->val$appUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 7350
    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 7354
    return-void
.end method