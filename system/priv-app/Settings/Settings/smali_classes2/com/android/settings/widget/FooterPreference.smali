.class public Lcom/android/settings/widget/FooterPreference;
.super Landroid/support/v7/preference/Preference;
.source "FooterPreference.java"


# static fields
.field static final KEY_FOOTER:Ljava/lang/String; = "footer_preference"

.field static final ORDER_FOOTER:I = 0x7ffffffe


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const v0, 0x7f010012

    const v1, 0x101008e

    .line 39
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/widget/FooterPreference;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0201f5

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FooterPreference;->setIcon(I)V

    .line 59
    const-string/jumbo v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FooterPreference;->setKey(Ljava/lang/String;)V

    .line 60
    const v0, 0x7ffffffe

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FooterPreference;->setOrder(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FooterPreference;->setSelectable(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 51
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "title":Landroid/widget/TextView;
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 55
    return-void
.end method
