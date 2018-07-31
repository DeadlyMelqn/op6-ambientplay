.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CreateShortcut$ShortcutsUpdateTask;
    }
.end annotation


# static fields
.field static final SHORTCUT_ID_PREFIX:Ljava/lang/String; = "component-shortcut-"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private createIcon(III)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "resource"    # I
    .param p2, "layoutRes"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 127
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v5, 0x1030224

    invoke-direct {v2, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 128
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "view":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 132
    .local v3, "spec":I
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 134
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 137
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 138
    return-object v0
.end method

.method static getBaseIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private logCreateShortcut(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    return-void

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method protected createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 10
    .param p1, "shortcutIntent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    const/high16 v6, 0x200000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-class v6, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v6}, Lcom/android/settings/CreateShortcut;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager;

    .line 86
    .local v5, "sm":Landroid/content/pm/ShortcutManager;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v6, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v6, :cond_2

    .line 89
    iget v6, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0264

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 90
    const v8, 0x7f0401c1

    .line 89
    invoke-direct {p0, v6, v8, v7}, Lcom/android/settings/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 88
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 93
    .local v3, "maskableIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "component-shortcut-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "shortcutId":Ljava/lang/String;
    new-instance v6, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v6, p0, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 100
    .local v1, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5, v1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 102
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 105
    const v7, 0x7f030002

    invoke-static {p0, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    .line 104
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 109
    iget v6, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v6, :cond_1

    .line 110
    const-string/jumbo v6, "android.intent.extra.shortcut.ICON"

    iget v7, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0265

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 111
    const v9, 0x7f0401c0

    .line 110
    invoke-direct {p0, v7, v9, v8}, Lcom/android/settings/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    :cond_1
    return-object v2

    .line 92
    .end local v1    # "info":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "maskableIcon":Landroid/graphics/drawable/Icon;
    .end local v4    # "shortcutId":Ljava/lang/String;
    :cond_2
    const v6, 0x7f0201f8

    invoke-static {p0, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .restart local v3    # "maskableIcon":Landroid/graphics/drawable/Icon;
    goto :goto_0
.end method

.method protected getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings/CreateShortcut;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 68
    const/16 v1, 0x2000

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 75
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v0

    .line 76
    .local v0, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v1, v0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/android/settings/CreateShortcut;->logCreateShortcut(Landroid/content/pm/ResolveInfo;)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 78
    iget-object v2, v0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/CreateShortcut;->createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    .line 80
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 157
    const/16 v5, 0x80

    .line 156
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/CreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 160
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    return-object v6

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 163
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 169
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v0
.end method

.method protected onSetContentView()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/settings/CreateShortcut;->setContentView(I)V

    .line 149
    return-void
.end method
