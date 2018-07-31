.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_APP_PREPARATION_FINISHED:I = 0x8

.field private static final MSG_APP_PREPARATION_TIMEOUT:I = 0x9

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1

.field private static final MSG_PREPARE_FOR_EXTRA_DATA_REQUEST:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1288
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1290
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1294
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1295
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 1315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1297
    :pswitch_0
    const-string/jumbo v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    return-object v1

    .line 1299
    :pswitch_1
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    return-object v1

    .line 1301
    :pswitch_2
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    return-object v1

    .line 1303
    :pswitch_3
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    return-object v1

    .line 1305
    :pswitch_4
    const-string/jumbo v1, "MSG_FIND_FOCUS"

    return-object v1

    .line 1307
    :pswitch_5
    const-string/jumbo v1, "MSG_FOCUS_SEARCH"

    return-object v1

    .line 1309
    :pswitch_6
    const-string/jumbo v1, "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST"

    return-object v1

    .line 1311
    :pswitch_7
    const-string/jumbo v1, "MSG_APP_PREPARATION_FINISHED"

    return-object v1

    .line 1313
    :pswitch_8
    const-string/jumbo v1, "MSG_APP_PREPARATION_TIMEOUT"

    return-object v1

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1321
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1322
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 1351
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1324
    :pswitch_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1353
    :goto_0
    return-void

    .line 1327
    :pswitch_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1330
    :pswitch_2
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1333
    :pswitch_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1336
    :pswitch_4
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1339
    :pswitch_5
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1342
    :pswitch_6
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap7(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1345
    :pswitch_7
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap8(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_0

    .line 1348
    :pswitch_8
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-wrap9(Landroid/view/AccessibilityInteractionController;)V

    goto :goto_0

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
