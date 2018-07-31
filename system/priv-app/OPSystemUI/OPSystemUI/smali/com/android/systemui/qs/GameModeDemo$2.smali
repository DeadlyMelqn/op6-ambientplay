.class Lcom/android/systemui/qs/GameModeDemo$2;
.super Ljava/lang/Object;
.source "GameModeDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/GameModeDemo;->showDemo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/GameModeDemo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/GameModeDemo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/GameModeDemo;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/GameModeDemo$2;->this$0:Lcom/android/systemui/qs/GameModeDemo;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/GameModeDemo$2;->this$0:Lcom/android/systemui/qs/GameModeDemo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/GameModeDemo;->-wrap0(Lcom/android/systemui/qs/GameModeDemo;Z)V

    .line 79
    return-void
.end method
