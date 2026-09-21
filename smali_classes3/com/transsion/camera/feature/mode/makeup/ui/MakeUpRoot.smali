.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private final mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

.field private mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field protected mIsVipMode:Z

.field private final mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

.field private mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

.field private mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

.field private mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;


# direct methods
.method public static synthetic $r8$lambda$Z3BwKuzPZ_NRUpiDdk8sCvmgG1w(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->lambda$registerSettingDevice$0(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateDataStoreResetValue(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateDataStoreResetValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    .line 55
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    .line 57
    const-string/jumbo p2, "v_makeup"

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

    .line 75
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 521
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    .line 183
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    return-void
.end method

.method private allowResponseItemClick()Z
    .registers 3

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 282
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_11

    return v1

    .line 286
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method private handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 22

    move-object/from16 v0, p0

    if-eqz p1, :cond_c6

    .line 78
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v1, :cond_c6

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v1, :cond_e

    goto/16 :goto_c6

    :cond_e
    const/4 v1, 0x2

    .line 81
    new-array v10, v1, [F

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v2

    const/4 v11, 0x0

    aget v2, v2, v11

    aput v2, v10, v11

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v2

    const/4 v12, 0x1

    aget v2, v2, v12

    aput v2, v10, v12

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getStyle()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getKeyArray()[Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getIndexByFeature(Ljava/lang/String;)I

    move-result v4

    .line 91
    aget v2, v10, v12

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v2

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 93
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v2, v5, v13}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    int-to-float v2, v14

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 94
    aput v2, v10, v12

    .line 95
    new-instance v2, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 97
    invoke-static {v2}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v3, :cond_c1

    sget-boolean v3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-nez v3, :cond_c1

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8b

    .line 100
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v12, v11, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 101
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v11}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_b8

    .line 102
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v3

    if-nez v3, :cond_9d

    .line 103
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v11, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 104
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_b8

    .line 106
    :cond_9d
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v11, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    move-object/from16 v19, v13

    .line 107
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v14

    const-string v14, ""

    const/16 v15, 0x64

    invoke-interface/range {v13 .. v19}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 108
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v12}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 110
    :goto_b8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    if-eqz v1, :cond_c1

    .line 111
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideAutoHint()V

    .line 114
    :cond_c1
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method private hideAutoHint()V
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 490
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$registerSettingDevice$0(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .registers 5

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->allowResponseItemClick()Z

    move-result v0

    if-nez v0, :cond_e

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore item click event!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_e
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->showDialog()V

    return-void

    .line 258
    :cond_19
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v0

    if-nez v0, :cond_2a

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->showAutoHint(Ljava/lang/String;)V

    .line 261
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v0, :cond_3b

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 264
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    :cond_3b
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 482
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 5

    .line 118
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    return-void

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "duplicate dialog, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x87

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 127
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 147
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    if-eqz v1, :cond_39

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    :cond_39
    const/4 v1, 0x0

    .line 150
    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    :cond_3c
    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "v_makeup"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v1, :cond_11

    .line 172
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->restoreIntensity()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getSelectChild()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 177
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    return-void
.end method

.method private updateItemDecoration(I)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_26

    .line 512
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1c

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private updateSelectedItem(Ljava/lang/String;)V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_12

    goto/16 :goto_bc

    .line 191
    :cond_12
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 195
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 198
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 197
    :cond_2f
    const-string v0, ""

    .line 200
    :goto_31
    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto/16 :goto_bc

    :cond_3b
    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_3d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_bc

    .line 205
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    if-nez v3, :cond_52

    goto :goto_b9

    .line 209
    :cond_52
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 210
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 212
    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_a8

    .line 213
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    aget v1, v1, v3

    const/16 v4, 0x64

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    iget-object v6, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 215
    iget-object v5, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    aget v5, v5, v3

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v4

    if-eq v1, v4, :cond_a8

    .line 216
    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    int-to-float v1, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    aput v1, v4, v3

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 220
    :cond_a8
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_bc

    .line 222
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b4

    move v0, v3

    :cond_b4
    const/4 p1, 0x2

    .line 221
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    :cond_b9
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_bc
    :goto_bc
    return-void
.end method

.method private updateState(Z)V
    .registers 13

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 306
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_7b

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_7b

    .line 308
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v1

    .line 309
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v3, v1, v9}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 312
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    const/4 v3, -0x1

    const/4 v10, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4b

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v2, p1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v10, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_72

    .line 315
    :cond_4b
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    if-nez v1, :cond_5d

    .line 316
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2, p1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v10, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_72

    .line 319
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v10, v2, p1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 320
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const/16 v5, 0x64

    invoke-interface/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v10, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 324
    :goto_72
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result p1

    if-eqz p1, :cond_7b

    .line 325
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideAutoHint()V

    :cond_7b
    return-void
.end method


# virtual methods
.method public activityPause()V
    .registers 4

    .line 158
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityPause mDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p0, :cond_1f

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onActivityPause()V

    :cond_1f
    return-void
.end method

.method public closeContrast(Z)V
    .registers 11

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2b

    .line 423
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 426
    new-instance v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    iget v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v3, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->style:Ljava/lang/String;

    iget-object v6, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    iget-object v7, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    iget-object v8, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 428
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 456
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 457
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 458
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    .line 459
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 461
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 462
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 465
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public openContrast()V
    .registers 11

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2b

    .line 408
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 411
    new-instance v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    iget v3, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v4, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->style:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 414
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public progressChanged(I)V
    .registers 6

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_68

    .line 342
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 344
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 346
    iget-object v2, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 347
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    iget-object v2, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->updateIntensity(Ljava/lang/String;I)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 355
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 356
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->defaultIntensity()I

    move-result v0

    goto :goto_54

    :cond_52
    const/16 v0, 0x3c

    :goto_54
    if-ne p1, v0, :cond_62

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->allDefaultIntensity()Z

    move-result p0

    .line 360
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    return-void

    .line 363
    :cond_62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    :cond_68
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIsVipMode:Z

    if-nez p1, :cond_b

    return-void

    .line 236
    :cond_b
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    .line 239
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItem(Ljava/lang/String;II)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 240
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    .line 241
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->setItems(Ljava/util/List;)V

    .line 244
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateLowLight(Z)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateScreenFormType(II)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->allDefaultIntensity()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->setListener(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;)V

    .line 267
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public resetUI()V
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz p0, :cond_7

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->resetScrollPosition()V

    :cond_7
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 334
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(ZZ)V

    return-void
.end method

.method public updateFeatureUI(ZZ)V
    .registers 3

    if-eqz p1, :cond_a

    .line 442
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateState(Z)V

    const/4 p1, 0x0

    .line 443
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 445
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 5

    .line 371
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_15

    .line 375
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIsVipMode:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_15

    .line 376
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 379
    :cond_15
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    if-eqz p1, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    goto :goto_23

    .line 385
    :cond_20
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    goto :goto_26

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    .line 388
    :goto_26
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateItemDecoration(I)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p1, :cond_41

    .line 391
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_38

    iget p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_41

    .line 392
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 396
    :cond_41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz p1, :cond_5c

    .line 397
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateScreenFormType(II)V

    return-void

    .line 400
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateScreenFormType(II)V

    :cond_5c
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz p0, :cond_7

    .line 565
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    .line 451
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    return-void
.end method
