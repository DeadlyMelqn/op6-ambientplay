.class Lcom/android/systemui/plugin/LSState$MyUIHandler;
.super Landroid/os/Handler;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/LSState;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/LSState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/LSState;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/LSState;Lcom/android/systemui/plugin/LSState$MyUIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/LSState;
    .param p2, "-this1"    # Lcom/android/systemui/plugin/LSState$MyUIHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui/plugin/LSState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    .line 290
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui/plugin/LSState;

    monitor-enter v1

    monitor-exit v1

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
