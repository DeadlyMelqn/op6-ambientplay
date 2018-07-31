.class Lcom/android/settings/datausage/DataSaverBackend$1$1;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverBackend$1;->onUidPoliciesChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

.field final synthetic val$uid:I

.field final synthetic val$uidPolicies:I


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/datausage/DataSaverBackend$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput p2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->val$uid:I

    iput p3, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->val$uidPolicies:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->this$1:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget-object v0, v0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    iget v1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->val$uid:I

    iget v2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$1;->val$uidPolicies:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->-wrap1(Lcom/android/settings/datausage/DataSaverBackend;II)V

    .line 214
    return-void
.end method
