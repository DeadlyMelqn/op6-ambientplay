.class public Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
.super Ljava/lang/Object;
.source "SystemIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SystemIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Icon"
.end annotation


# instance fields
.field public blocked:Z

.field public status:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SystemIconController;

.field public visibility:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/SystemIconController;
    .param p2, "vis"    # I
    .param p3, "status"    # I

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->this$0:Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->blocked:Z

    .line 479
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    .line 480
    iput p3, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 481
    return-void
.end method
