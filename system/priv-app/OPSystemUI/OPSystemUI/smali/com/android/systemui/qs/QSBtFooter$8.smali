.class Lcom/android/systemui/qs/QSBtFooter$8;
.super Ljava/lang/Thread;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBtFooter;->dumpAudioData()V
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
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$8;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 514
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$8;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-wrap1(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 517
    return-void
.end method
