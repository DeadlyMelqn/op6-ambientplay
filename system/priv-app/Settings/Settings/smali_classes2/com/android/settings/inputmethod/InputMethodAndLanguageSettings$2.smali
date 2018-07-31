.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v11, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v25, 0x7f0f0b8d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 806
    .local v20, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 807
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 808
    .local v19, "localeNames":Ljava/lang/String;
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 809
    .local v10, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "phone_language"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 810
    const v25, 0x7f0f0b8f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 811
    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 812
    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 813
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 814
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v19    # "localeNames":Ljava/lang/String;
    :cond_0
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 819
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "spellcheckers_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 820
    const v25, 0x7f0f0e39

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 821
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 822
    const v25, 0x7f0f0f30

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 823
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    const-string/jumbo v25, "default_autofill"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 827
    const v25, 0x7f0f1275

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 828
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 829
    const v25, 0x7f0f1276

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 830
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 835
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 836
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "user_dict_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 837
    const v25, 0x7f0f0bb2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 838
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 839
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_1
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 844
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "keyboard_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 845
    const v25, 0x7f0f0b8e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 846
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 847
    const v25, 0x7f0f0f3e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 848
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v9

    .line 852
    .local v9, "immValues":Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v9}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 855
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "currImeName":Ljava/lang/String;
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 857
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "current_input_method"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 858
    const v25, 0x7f0f0bca

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 859
    iput-object v3, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 860
    iput-object v3, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 861
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 862
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string/jumbo v25, "input_method"

    .line 864
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 868
    .local v15, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    .line 869
    .local v16, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v16, :cond_2

    const/4 v14, 0x0

    .line 870
    .local v14, "inputMethodCount":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v14, :cond_3

    .line 871
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 873
    .local v13, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    const/16 v25, 0x1

    .line 872
    move/from16 v0, v25

    invoke-virtual {v15, v13, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v22

    .line 874
    .local v22, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v23

    .line 877
    .local v23, "summary":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v21

    .line 878
    .local v21, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 879
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 878
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 882
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 883
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 884
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 885
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 886
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 887
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 869
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "i":I
    .end local v13    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "inputMethodCount":I
    .end local v21    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v22    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v23    # "summary":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "inputMethodCount":I
    goto :goto_0

    .line 892
    .restart local v7    # "i":I
    :cond_3
    const-string/jumbo v25, "input"

    .line 891
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    .line 893
    .local v12, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v6, 0x0

    .line 895
    .local v6, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v5

    .line 896
    .local v5, "devices":[I
    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_8

    .line 897
    aget v25, v5, v7

    invoke-static/range {v25 .. v25}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 898
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v25

    if-nez v25, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_5

    .line 896
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 902
    :cond_5
    const/4 v6, 0x1

    .line 904
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    .line 906
    .local v8, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v12, v8}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v18

    .line 907
    .local v18, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 908
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v17

    .line 911
    :goto_4
    if-eqz v17, :cond_7

    .line 912
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v23

    .line 917
    .restart local v23    # "summary":Ljava/lang/String;
    :goto_5
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 918
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 919
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 920
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 921
    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 922
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 923
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 908
    .end local v23    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    .local v17, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    goto :goto_4

    .line 914
    .end local v17    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_7
    const v25, 0x7f0f0bb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "summary":Ljava/lang/String;
    goto :goto_5

    .line 926
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v8    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v18    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v23    # "summary":Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_9

    .line 928
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 929
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "builtin_keyboard_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 931
    const v25, 0x7f0f0bd5

    .line 930
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 932
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 933
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_9
    new-instance v24, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 938
    .local v24, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v24 .. v24}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_a

    .line 939
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 940
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "tts_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 941
    const v25, 0x7f0f00ab

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 942
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 943
    const v25, 0x7f0f0f32

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 944
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_a
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 949
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "pointer_settings_category"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 950
    const v25, 0x7f0f0ba8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 951
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 952
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 955
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "pointer_speed"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 956
    const v25, 0x7f0f0ba9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 957
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 958
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap0()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 962
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 963
    .restart local v10    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v25, "vibrate_input_devices"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 964
    const v25, 0x7f0f0bab

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 965
    const v25, 0x7f0f0bac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 966
    const v25, 0x7f0f0bac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 967
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 968
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_b
    return-object v11
.end method
