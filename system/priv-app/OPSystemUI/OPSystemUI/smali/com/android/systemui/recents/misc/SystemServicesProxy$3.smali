.class Lcom/android/systemui/recents/misc/SystemServicesProxy$3;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->writeLockedListToProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$result:Ljava/lang/String;

    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com_oneplus_systemui_recent_task_lockd_list"

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$result:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1580
    return-void
.end method
