.class Lcom/android/systemui/volume/ZenFooter$2;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenFooter;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->-wrap2(Lcom/android/systemui/volume/ZenFooter;)V

    .line 103
    return-void
.end method
