.class Lcom/android/server/usage/StorageStatsService$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/StorageStatsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 117
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 120
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->-wrap0(Lcom/android/server/usage/StorageStatsService;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
