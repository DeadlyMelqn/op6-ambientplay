.class Lcom/ice/box/fragments/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/Home;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/Home;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/Home;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/ice/box/fragments/Home$2;->this$0:Lcom/ice/box/fragments/Home;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
