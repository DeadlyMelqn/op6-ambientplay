.class Lcom/android/systemui/statusbar/phone/StatusBar$42;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field final synthetic val$disallowEnterPictureInPictureWhileLaunching:Z

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$disallowEnterPictureInPictureWhileLaunching:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 3977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 3980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 3981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$intent:Landroid/content/Intent;

    .line 3982
    const/high16 v1, 0x14000000

    .line 3981
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3983
    const/16 v14, -0x60

    .line 3984
    .local v14, "result":I
    new-instance v13, Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 3986
    .local v13, "options":Landroid/app/ActivityOptions;
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$disallowEnterPictureInPictureWhileLaunching:Z

    .line 3985
    invoke-virtual {v13, v0}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 3987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$intent:Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v1, :cond_0

    .line 3997
    const/4 v0, 0x3

    .line 3996
    invoke-virtual {v13, v0}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 4000
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4001
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4002
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$intent:Landroid/content/Intent;

    .line 4003
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 4005
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 4001
    const/4 v1, 0x0

    .line 4004
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    .line 4000
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 4009
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz v0, :cond_1

    .line 4010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-interface {v0, v14}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 4012
    :cond_1
    return-void

    .line 4006
    :catch_0
    move-exception v12

    .line 4007
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
