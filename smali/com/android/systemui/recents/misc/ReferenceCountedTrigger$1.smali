.class Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;
.super Ljava/lang/Object;
.source "ReferenceCountedTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;->this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;->this$0:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 40
    return-void
.end method
