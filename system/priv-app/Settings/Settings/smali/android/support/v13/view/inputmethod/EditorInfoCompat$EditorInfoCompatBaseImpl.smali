.class final Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EditorInfoCompatBaseImpl"
.end annotation


# static fields
.field private static CONTENT_MIME_TYPES_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    .line 82
    sput-object v0, Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;)V
    .locals 0
    .param p1, "-this0"    # Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;

    .prologue
    invoke-direct {p0}, Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->-get0()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v2, Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->-get0()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 2
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentMimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 91
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/support/v13/view/inputmethod/EditorInfoCompat$EditorInfoCompatBaseImpl;->CONTENT_MIME_TYPES_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    return-void
.end method
