.class public Lcom/android/settingslib/drawer/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_SELECTED_TILE:Ljava/lang/String; = "selectedTile"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ProfileSelectDialog"


# instance fields
.field private mSelectedTile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->DEBUG:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 42
    new-instance v1, Lcom/android/settingslib/drawer/ProfileSelectDialog;

    invoke-direct {v1}, Lcom/android/settingslib/drawer/ProfileSelectDialog;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/android/settingslib/drawer/ProfileSelectDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "selectedTile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v2, "select_profile"

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 78
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 79
    .local v1, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 80
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 83
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 85
    sget-boolean v3, Lcom/android/settingslib/drawer/ProfileSelectDialog;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 86
    const-string/jumbo v4, "ProfileSelectDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delete the user: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 71
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "show_drawer_menu"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onProfileTileOpen()V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedTile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iput-object v0, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    .line 53
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 58
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 59
    invoke-static {v3, v2, v4}, Lcom/android/settingslib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v0

    .line 61
    .local v0, "adapter":Lcom/android/settingslib/drawer/UserAdapter;
    sget v3, Lcom/android/settingslib/R$string;->choose_profile:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
