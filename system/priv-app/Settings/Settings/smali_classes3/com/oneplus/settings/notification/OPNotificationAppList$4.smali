.class Lcom/oneplus/settings/notification/OPNotificationAppList$4;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-set0(Lcom/oneplus/settings/notification/OPNotificationAppList;Z)Z

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get0(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get0(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->setEmptyView(Landroid/view/View;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-set1(Lcom/oneplus/settings/notification/OPNotificationAppList;J)J

    .line 95
    return-void
.end method
