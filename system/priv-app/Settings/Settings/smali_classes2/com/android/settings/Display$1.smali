.class Lcom/android/settings/Display$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Display;


# direct methods
.method constructor <init>(Lcom/android/settings/Display;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/Display;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "av"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 111
    if-nez p3, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Lcom/android/settings/Display;->-set0(Lcom/android/settings/Display;F)F

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    invoke-static {v0}, Lcom/android/settings/Display;->-wrap0(Lcom/android/settings/Display;)V

    .line 120
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v0, v1}, Lcom/android/settings/Display;->-set0(Lcom/android/settings/Display;F)F

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Display$1;->this$0:Lcom/android/settings/Display;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/settings/Display;->-set0(Lcom/android/settings/Display;F)F

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "av"    # Landroid/widget/AdapterView;

    .prologue
    .line 123
    return-void
.end method