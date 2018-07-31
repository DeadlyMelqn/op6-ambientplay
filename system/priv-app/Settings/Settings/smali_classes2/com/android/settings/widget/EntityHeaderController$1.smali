.class Lcom/android/settings/widget/EntityHeaderController$1;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/EntityHeaderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    .line 277
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->-get4(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->-get5(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v3

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->-get2(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;

    move-result-object v4

    .line 278
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->-get3(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v6

    .line 276
    const v1, 0x7f0f0afa

    .line 277
    const/4 v5, 0x0

    .line 275
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    .line 280
    return-void
.end method
