.class Lcom/ice/box/fragments/License$2;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/License;->AlertDialogIabNotSupported()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/License;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/License;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/ice/box/fragments/License$2;->this$0:Lcom/ice/box/fragments/License;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 267
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
