.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT:Ljava/lang/String; = "limit"

.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 288
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 289
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 12
    .param p1, "bytesPicker"    # Landroid/widget/EditText;
    .param p2, "type"    # Landroid/widget/Spinner;

    .prologue
    const/4 v11, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataUsageEditController;

    .line 264
    .local v5, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v5}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v3

    .line 266
    .local v3, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 267
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 268
    .local v4, "isLimit":Z
    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 270
    .local v0, "bytes":J
    :goto_0
    if-eqz v4, :cond_0

    :cond_0
    const-wide/16 v6, -0x1

    .line 272
    .local v6, "limitDisabled":J
    long-to-float v9, v0

    const/high16 v10, 0x4ec00000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 273
    long-to-float v9, v0

    const/high16 v10, 0x4e800000

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 277
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 285
    :goto_1
    return-void

    .line 269
    .end local v0    # "bytes":J
    .end local v2    # "bytesText":Ljava/lang/String;
    .end local v6    # "limitDisabled":J
    :cond_1
    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .restart local v0    # "bytes":J
    goto :goto_0

    .line 279
    .restart local v6    # "limitDisabled":J
    :cond_2
    long-to-float v9, v0

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2    # "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 283
    invoke-virtual {p2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageEditController;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings/datausage/DataUsageEditController;
    .param p1, "isLimit"    # Z

    .prologue
    .line 228
    instance-of v3, p0, Landroid/app/Fragment;

    if-nez v3, :cond_0

    .line 229
    return-void

    :cond_0
    move-object v2, p0

    .line 231
    check-cast v2, Landroid/app/Fragment;

    .line 232
    .local v2, "targetFragment":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    return-void

    .line 236
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "template"

    invoke-interface {p0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    const-string/jumbo v3, "limit"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 241
    .local v1, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 243
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "warningEditor"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 244
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    const/4 v9, -0x1

    if-eq p2, v9, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/settings/datausage/DataUsageEditController;

    .line 298
    .local v7, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v7}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v4

    .line 300
    .local v4, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 301
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 302
    .local v5, "isLimit":Z
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v10, 0x7f0a0134

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 303
    .local v2, "bytesField":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v10, 0x7f0a0135

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 305
    .local v6, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "bytesString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 307
    const-string/jumbo v3, "0"

    .line 309
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 310
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    if-nez v10, :cond_2

    const-wide/32 v10, 0x100000

    :goto_0
    long-to-float v10, v10

    .line 309
    mul-float/2addr v9, v10

    float-to-long v0, v9

    .line 311
    .local v0, "bytes":J
    if-eqz v5, :cond_3

    .line 312
    invoke-virtual {v4, v8, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 316
    :goto_1
    invoke-interface {v7}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 317
    return-void

    .line 310
    .end local v0    # "bytes":J
    :cond_2
    const-wide/32 v10, 0x40000000

    goto :goto_0

    .line 314
    .restart local v0    # "bytes":J
    :cond_3
    invoke-virtual {v4, v8, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 250
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 251
    .local v2, "isLimit":Z
    const v3, 0x7f040067

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 252
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v4, 0x7f0a0134

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 253
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a0135

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 252
    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 254
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    if-eqz v2, :cond_0

    const v3, 0x7f0f0dd8

    .line 254
    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 254
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 258
    const v4, 0x7f0f0dd6

    .line 254
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 256
    :cond_0
    const v3, 0x7f0f0dd7

    goto :goto_0
.end method