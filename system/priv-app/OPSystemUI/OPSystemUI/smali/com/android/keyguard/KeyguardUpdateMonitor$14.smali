.class Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final synthetic val$lastType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$type:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$lastType:I

    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2820
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2821
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2822
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$type:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 2819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2826
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$lastType:I

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$type:I

    if-ne v2, v3, :cond_2

    return-void

    .line 2828
    :cond_2
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->val$type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2829
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap30(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 2834
    :goto_1
    return-void

    .line 2831
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap30(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto :goto_1
.end method
