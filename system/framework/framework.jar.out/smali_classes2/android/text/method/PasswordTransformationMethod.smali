.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;,
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static synthetic -get0()C
    .locals 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 67
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 5
    .param p0, "sp"    # Landroid/text/Spannable;

    .prologue
    .line 132
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 133
    .local v1, "old":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 73
    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 38
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 39
    check-cast v1, Landroid/text/Spannable;

    .line 47
    .local v1, "sp":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 48
    const-class v4, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 47
    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 49
    .local v2, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 50
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 55
    new-instance v3, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v3, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    .line 56
    const/16 v4, 0x22

    .line 55
    invoke-interface {v1, v3, v5, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .end local v0    # "i":I
    .end local v1    # "sp":Landroid/text/Spannable;
    .end local v2    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    new-instance v3, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v3, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 123
    instance-of v1, p2, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 124
    check-cast v0, Landroid/text/Spannable;

    .line 126
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 129
    .end local v0    # "sp":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 77
    instance-of v5, p1, Landroid/text/Spannable;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 78
    check-cast v2, Landroid/text/Spannable;

    .line 79
    .local v2, "sp":Landroid/text/Spannable;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 80
    const-class v6, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 79
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 81
    .local v4, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v5, v4

    if-nez v5, :cond_0

    .line 82
    return-void

    .line 92
    :cond_0
    const/4 v3, 0x0

    .line 93
    .local v3, "v":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "v":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    if-nez v3, :cond_1

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 94
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 93
    .local v3, "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    if-nez v3, :cond_2

    .line 98
    return-void

    .line 101
    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v1

    .line 102
    .local v1, "pref":I
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 103
    if-lez p4, :cond_3

    .line 104
    invoke-static {v2}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 106
    const/4 v5, 0x1

    if-ne p4, v5, :cond_3

    .line 107
    new-instance v5, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v5, v2, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v6, p2, p4

    .line 108
    const/16 v7, 0x21

    .line 107
    invoke-interface {v2, v5, p2, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    .end local v0    # "i":I
    .end local v1    # "pref":I
    .end local v2    # "sp":Landroid/text/Spannable;
    .end local v4    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_3
    return-void
.end method
