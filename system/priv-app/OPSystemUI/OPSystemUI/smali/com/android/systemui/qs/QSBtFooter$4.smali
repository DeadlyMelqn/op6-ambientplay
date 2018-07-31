.class Lcom/android/systemui/qs/QSBtFooter$4;
.super Ljava/lang/Object;
.source "QSBtFooter.java"

# interfaces
.implements Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBtFooter;->onFinishInflate()V
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
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSpinnerClosed()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "QSBtFooter"

    const-string/jumbo v1, "onSpinnerClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSBtFooter;->-set1(Lcom/android/systemui/qs/QSBtFooter;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method public onSpinnerOpened()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string/jumbo v0, "QSBtFooter"

    const-string/jumbo v3, "onSpinnerOpened"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/systemui/qs/QSBtFooter;->-set1(Lcom/android/systemui/qs/QSBtFooter;Z)Z

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get3(Lcom/android/systemui/qs/QSBtFooter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0702cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 133
    .local v6, "itemHeight":I
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get3(Lcom/android/systemui/qs/QSBtFooter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070258

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 134
    .local v2, "popupMargin":I
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBtFooter;->-get2(Lcom/android/systemui/qs/QSBtFooter;)Lcom/android/systemui/qs/QSSpinner;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter$4;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSBtFooter;->-get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    mul-int v5, v6, v3

    move v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSpinner;->setPopupMargins(IIIII)V

    .line 135
    return-void
.end method
