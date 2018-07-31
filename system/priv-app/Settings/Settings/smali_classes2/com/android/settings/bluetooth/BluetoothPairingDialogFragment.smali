.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;,
        Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$BluetoothPairingDialogListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_DELAYED_DISMISS:I = 0x1

.field private static final PAIRING_POPUP_TIMEOUT:I = 0x88b8

.field private static final TAG:Ljava/lang/String; = "BTPairingDialogFragment"


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mPairingView:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 360
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method private createConfirmationDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 293
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 292
    const v3, 0x7f0f07b4

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 295
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f008c

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f008e

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 298
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private createConsentDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 314
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 313
    const v3, 0x7f0f07b4

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 316
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 320
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->notifyDialogDisplayed()V

    .line 322
    return-object v0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 12

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04003c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 240
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0a00e6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 241
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v9, 0x7f0a00e8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 242
    .local v5, "messageView2":Landroid/widget/TextView;
    const v9, 0x7f0a00e7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v9, 0x7f0a00e9

    .line 243
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 245
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 246
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 245
    const v10, 0x7f0f07bf

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v9, 0x7f0a00e5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 249
    .local v7, "pairingView":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    const/16 v9, 0x8

    .line 249
    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 251
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    .line 256
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 257
    invoke-virtual {v7, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    new-instance v9, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;

    invoke-direct {v9, p0}, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageId()I

    move-result v3

    .line 268
    .local v3, "messageId":I
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageHintId()I

    move-result v4

    .line 269
    .local v4, "messageIdHint":I
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceMaxPasskeyLength()I

    move-result v2

    .line 270
    .local v2, "maxLength":I
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/BluetoothPairingController;->pairingCodeIsAlphanumeric()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 271
    const/4 v9, 0x0

    .line 270
    :goto_1
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 272
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 273
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :goto_2
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    .line 278
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 282
    :goto_3
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    .line 283
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 282
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 285
    return-object v8

    .line 250
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    .end local v4    # "messageIdHint":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 271
    .restart local v2    # "maxLength":I
    .restart local v3    # "messageId":I
    .restart local v4    # "messageIdHint":I
    :cond_1
    const/16 v9, 0x8

    goto :goto_1

    .line 275
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 280
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private createUserEntryDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 215
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 214
    const v3, 0x7f0f07b4

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createPinEntryView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 232
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f04003b

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 331
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0a00df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 332
    .local v2, "pairingViewCaption":Landroid/widget/TextView;
    const v5, 0x7f0a00e0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 333
    .local v3, "pairingViewContent":Landroid/widget/TextView;
    const v5, 0x7f0a00e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 335
    .local v1, "messagePairing":Landroid/widget/TextView;
    const v5, 0x7f0a00e2

    .line 334
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 336
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 337
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 336
    const v8, 0x7f0f07bf

    invoke-virtual {p0, v8, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 339
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 341
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDisplayPairingKeyVariant()Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_1
    return-object v4

    :cond_2
    move v5, v7

    .line 340
    goto :goto_0
.end method

.method private popTimedout()V
    .locals 4

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    return-void
.end method

.method private setupDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "dialog":Landroid/app/AlertDialog;
    const-string/jumbo v1, "BTPairingDialogFragment"

    const-string/jumbo v2, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->popTimedout()V

    .line 194
    :cond_0
    return-object v0

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createUserEntryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 183
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConsentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 186
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 101
    .local v0, "positiveButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyValid(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateUserInput(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 91
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x265

    return v0
.end method

.method getPairingViewText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    return-object v1
.end method

.method protected getmDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method isPairingControllerSet()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPairingDialogActivitySet()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothPairingDialogFragment_8080(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getPairingViewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothPairingDialogFragment_9945(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 260
    if-eqz p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 116
    return-void

    .line 112
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    const-string/jumbo v1, "Must call setPairingController() before showing dialog"

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    const-string/jumbo v1, "Must call setPairingDialogActivity() before showing dialog"

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setupDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 95
    return-void
.end method

.method setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 2
    .param p1, "pairingController"    # Lcom/android/settings/bluetooth/BluetoothPairingController;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 144
    return-void
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 2
    .param p1, "pairingDialogActivity"    # Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The pairing dialog activity can only be set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .line 163
    return-void
.end method
