.class public Lcom/oneplus/settings/AodClockPreviewActivity;
.super Landroid/app/Activity;
.source "AodClockPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/AodClockPreviewActivity$1;
    }
.end annotation


# instance fields
.field private KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mBack:Landroid/widget/ImageButton;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFullScreenMode:Z

.field private mSave:Landroid/widget/TextView;

.field private mStyle:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/AodClockPreviewActivity;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .prologue
    iget v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/AodClockPreviewActivity;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/AodClockPreviewActivity;
    .param p1, "isFullscreen"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string/jumbo v0, "AodClockPreviewActivity"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "aod_clock_style"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    .line 33
    iput-boolean v1, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/oneplus/settings/AodClockPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$1;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method private setFullScreenMode(Z)V
    .locals 3
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 125
    .local v1, "systemuiVisibility":I
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 128
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 131
    or-int/lit16 v1, v1, 0x1006

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 145
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    .line 146
    return-void

    .line 136
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 138
    and-int/lit16 v1, v1, -0x1007

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->finish()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v5, 0x7f040002

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/AodClockPreviewActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 46
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "mCustomView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    .line 53
    .local v3, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v3, v7, v7}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 55
    const v5, 0x7f0e005b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    .line 56
    const v5, 0x7f0e005d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    .line 59
    const/high16 v0, 0x8000000

    .line 60
    .local v0, "flag":I
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    .line 64
    const v5, 0x7f0e003b

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/AodClockPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 65
    .local v4, "preview":Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-nez v5, :cond_1

    .line 67
    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 68
    :cond_1
    iget v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-ne v5, v8, :cond_2

    .line 69
    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 71
    const v5, 0x7f02000a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :cond_3
    iget v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 73
    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/AodClockPreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$2;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    .line 88
    const-wide/16 v2, 0x12c

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
