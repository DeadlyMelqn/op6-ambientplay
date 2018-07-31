.class public Lcom/oneplus/settings/OPAuthenticationInformationSettings;
.super Landroid/app/Activity;
.source "OPAuthenticationInformationSettings.java"


# static fields
.field private static final ONEPLUS_A3000:Ljava/lang/String; = "oneplus A3000"

.field private static final ONEPLUS_A3000_CMIITID:Ljava/lang/String; = "2016CP1331"

.field private static final ONEPLUS_A3010:Ljava/lang/String; = "oneplus A3010"

.field private static final ONEPLUS_A3010_CMIITID:Ljava/lang/String; = "2016CP5088"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5000_CMITTID:Ljava/lang/String; = "2017CP2198"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A5010_CMITTID:Ljava/lang/String; = "2017CP6039"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6000_CMITTID:Ljava/lang/String; = "2018CP1307"


# instance fields
.field private mAuthenticationImage:Landroid/widget/ImageView;

.field private mCmiitIdView:Landroid/widget/TextView;

.field private mModelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setCmiitID()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cmiitid":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "oneplus A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP1331"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "oneplus A3010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP5088"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "ONEPLUS A5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2017CP2198"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "ONEPLUS A5010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2017CP6039"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "ONEPLUS A6000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    const v2, 0x7f0202d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2018CP1307"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "2016CP5088"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setDeviceType()V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    const v2, 0x7f0f05c0

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "deviceModel":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f039f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 35
    const v0, 0x7f0400d5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setContentView(I)V

    .line 36
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mModelTextView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mCmiitIdView:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->mAuthenticationImage:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 41
    const/16 v1, 0x2000

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setDeviceType()V

    .line 44
    invoke-direct {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->setCmiitID()V

    .line 45
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAuthenticationInformationSettings;->finish()V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
