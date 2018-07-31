.class Lcom/android/systemui/statusbar/policy/CallbackHandler$3;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$connected:Z

.field final synthetic val$dataActivityId:I

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$isWide:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$qsType:I

.field final synthetic val$roaming:Z

.field final synthetic val$stackedDataIcon:I

.field final synthetic val$stackedVoiceIcon:I

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusType:I

.field final synthetic val$subId:I

.field final synthetic val$typeContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusType:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsType:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIn:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityOut:Z

    iput p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$dataActivityId:I

    iput p9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$stackedDataIcon:I

    iput p10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$stackedVoiceIcon:I

    iput-object p11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$typeContentDescription:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$description:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$isWide:Z

    iput p14, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$subId:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$roaming:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$connected:Z

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "signalCluster$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 190
    .local v1, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsType:I

    .line 191
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIn:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityOut:Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$dataActivityId:I

    .line 192
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$stackedDataIcon:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$stackedVoiceIcon:I

    .line 193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$typeContentDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$isWide:Z

    .line 194
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$subId:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$roaming:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$connected:Z

    move/from16 v16, v0

    .line 190
    invoke-interface/range {v1 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZZ)V

    goto :goto_0

    .line 196
    .end local v1    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    :cond_0
    return-void
.end method
