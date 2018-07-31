.class Lcom/ice/box/SplashActivity$1;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$000(Lcom/ice/box/SplashActivity;)V

    .line 145
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$100(Lcom/ice/box/SplashActivity;)V

    .line 146
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$200(Lcom/ice/box/SplashActivity;)V

    .line 147
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$300(Lcom/ice/box/SplashActivity;)V

    .line 148
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$400(Lcom/ice/box/SplashActivity;)V

    .line 150
    invoke-static {}, Lcom/ice/box/SplashActivity;->access$500()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;

    invoke-direct {v0, v2}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    new-instance v0, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;

    invoke-direct {v0, v2}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/SplashActivity;->access$800(Lcom/ice/box/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/ice/box/SplashActivity$getStableOnlineVersion;

    invoke-direct {v0, v2}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ice/box/SplashActivity$getStableOnlineVersion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    new-instance v0, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;

    invoke-direct {v0, v2}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    const-class v2, Lcom/ice/box/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    iget-object v1, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/ice/box/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/ice/box/SplashActivity;->overridePendingTransition(II)V

    .line 160
    iget-object p0, p0, Lcom/ice/box/SplashActivity$1;->this$0:Lcom/ice/box/SplashActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->finish()V

    return-void
.end method
