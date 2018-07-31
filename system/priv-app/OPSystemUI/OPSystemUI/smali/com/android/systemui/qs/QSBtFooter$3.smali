.class Lcom/android/systemui/qs/QSBtFooter$3;
.super Ljava/lang/Object;
.source "QSBtFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBtFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$3;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$3;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-wrap3(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 649
    return-void
.end method
