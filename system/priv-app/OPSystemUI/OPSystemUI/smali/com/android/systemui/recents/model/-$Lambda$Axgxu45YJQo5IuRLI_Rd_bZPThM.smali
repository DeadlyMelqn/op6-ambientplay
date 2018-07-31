.class final synthetic Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_8458(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    iget-object v1, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->lambda$-com_android_systemui_recents_model_HighResThumbnailLoader$1_7094(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->$id:B

    iput-object p2, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/recents/model/-$Lambda$Axgxu45YJQo5IuRLI_Rd_bZPThM;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
