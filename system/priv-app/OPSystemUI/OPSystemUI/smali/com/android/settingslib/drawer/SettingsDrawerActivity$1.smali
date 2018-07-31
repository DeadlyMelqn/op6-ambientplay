.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;
.super Landroid/os/Handler;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-wrap0(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    goto :goto_0

    .line 105
    :pswitch_1
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
