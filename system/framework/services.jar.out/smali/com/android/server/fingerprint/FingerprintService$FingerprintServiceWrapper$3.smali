.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$callingUserId:I

.field final synthetic val$flags:I

.field final synthetic val$groupId:I

.field final synthetic val$opId:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;JLandroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iput-object p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iput-boolean p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    iput-object p10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 1258
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_token"

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1262
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get10(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v10

    .line 1263
    .local v10, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1264
    .local v11, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-nez v11, :cond_0

    .line 1265
    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .end local v11    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {v11, v0, v3}, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)V

    .line 1266
    .restart local v11    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, v11}, Lcom/android/server/fingerprint/FingerprintService;->-set2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1270
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1271
    iget v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iget-boolean v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    .line 1270
    invoke-static/range {v0 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->-wrap10(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    .line 1272
    return-void

    .line 1258
    .end local v10    # "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    .end local v11    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1262
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v10

    .restart local v10    # "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    goto :goto_1
.end method
