.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/LinksInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinksInfoImpl"
.end annotation


# instance fields
.field private final mOriginalText:Ljava/lang/CharSequence;

.field private final mSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .param p1, "originalText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "spans":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    .line 597
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    .line 598
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 602
    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 603
    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mOriginalText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 604
    check-cast v3, Landroid/text/Spannable;

    .line 605
    .local v3, "spannable":Landroid/text/Spannable;
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 606
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 607
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;->mSpans:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 608
    .local v2, "span":Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get1(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get2(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v7

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->-get0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result v8

    invoke-interface {v3, v4, v7, v8, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "span":Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;
    .end local v3    # "spannable":Landroid/text/Spannable;
    :cond_0
    move v4, v6

    .line 602
    goto :goto_0

    .line 610
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v3    # "spannable":Landroid/text/Spannable;
    :cond_1
    return v5

    .line 612
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v3    # "spannable":Landroid/text/Spannable;
    :cond_2
    return v6
.end method
