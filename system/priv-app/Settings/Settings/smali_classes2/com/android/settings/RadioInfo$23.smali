.class Lcom/android/settings/RadioInfo$23;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->setImsVoLteProvisionedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    iput-boolean p2, p0, Lcom/android/settings/RadioInfo$23;->val$state:Z

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1142
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo$23;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->-get6(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2

    .line 1144
    iget-boolean v1, p0, Lcom/android/settings/RadioInfo$23;->val$state:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1143
    :goto_0
    const/16 v3, 0xa

    .line 1142
    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :goto_1
    return-void

    .line 1144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v1, "RadioInfo"

    const-string/jumbo v2, "setImsConfigProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
