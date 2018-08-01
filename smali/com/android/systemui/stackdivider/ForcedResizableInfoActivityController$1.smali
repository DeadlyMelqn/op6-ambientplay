.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-wrap3(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    .line 57
    return-void
.end method
