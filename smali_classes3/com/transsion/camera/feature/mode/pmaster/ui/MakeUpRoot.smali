.class public Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;
.super Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;
.source "SourceFile"


# static fields
.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I


# instance fields
.field private final CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

.field private final mEffectDataManager:Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;

.field private mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

.field private final mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

.field private final mMakeUpItemSelectListener:Lcom/transsion/camera/feature/mode/pmaster/listener/MakeUpItemSelectListener;

.field private mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;


# direct methods
.method public static synthetic $r8$lambda$kcuq5jqi4OMFTXawhYn9gx8e7kQ(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->lambda$closeMakeUp$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEffectButtonItem(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoOnItemClicked(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->doOnItemClicked(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->showDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataStoreResetValue(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateDataStoreResetValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const-string p2, "p_makeup"

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

    .line 67
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 69
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpItemSelectListener:Lcom/transsion/camera/feature/mode/pmaster/listener/MakeUpItemSelectListener;

    .line 644
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    .line 203
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;

    .line 204
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)I
    .registers 1

    .line 53
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method private closeMakeUp()V
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 486
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 487
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    if-eqz v1, :cond_38

    .line 489
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_38

    .line 492
    :cond_28
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_38

    .line 493
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 502
    const-string v0, "key_makeup_remember"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private closeMakeupForConflictOn(Ljava/lang/String;)V
    .registers 6

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 474
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateFacingValue(Ljava/lang/String;)V

    .line 476
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_mu_makeup_closed_reason"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->closeMakeUp()V

    return-void
.end method

.method private doOnItemClicked(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 4

    .line 301
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v0

    if-nez v0, :cond_11

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->showAutoHint(Ljava/lang/String;)V

    .line 304
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpItemSelectListener:Lcom/transsion/camera/feature/mode/pmaster/listener/MakeUpItemSelectListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/listener/MakeUpItemSelectListener;->onMakeUpItemSelect(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 306
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2b

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_da

    .line 81
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v2, :cond_c

    goto/16 :goto_da

    :cond_c
    const/4 v2, 0x2

    .line 84
    new-array v11, v2, [F

    .line 85
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v3

    const/4 v12, 0x0

    aget v3, v3, v12

    aput v3, v11, v12

    .line 86
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v3

    const/4 v13, 0x1

    aget v3, v3, v13

    aput v3, v11, v13

    .line 88
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getStyle()Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getKeyArray()[Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;->getIndexByFeature(Ljava/lang/String;)I

    move-result v5

    .line 94
    aget v3, v11, v13

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 96
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 97
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v6, v14, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_6f
    move v15, v3

    int-to-float v3, v15

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 100
    aput v3, v11, v13

    .line 101
    new-instance v3, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 102
    invoke-static {v3}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v4, :cond_d3

    sget-boolean v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    if-nez v4, :cond_d3

    .line 104
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_99

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ca

    .line 106
    invoke-direct {v0, v13, v12}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    goto :goto_ca

    .line 109
    :cond_99
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v4

    if-nez v4, :cond_aa

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ca

    const/4 v2, 0x3

    .line 111
    invoke-direct {v0, v2, v12}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    goto :goto_ca

    .line 114
    :cond_aa
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v4

    if-eq v4, v2, :cond_ca

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b9

    .line 116
    invoke-direct {v0, v2, v12}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    :cond_b9
    move-object/from16 v20, v14

    .line 118
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v15

    const-string v15, ""

    const/16 v16, 0x64

    invoke-interface/range {v14 .. v20}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 121
    :cond_ca
    :goto_ca
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v2

    if-eqz v2, :cond_d3

    .line 122
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideAutoHint()V

    .line 125
    :cond_d3
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 126
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_da
    :goto_da
    return-void
.end method

.method private synthetic lambda$closeMakeUp$0()V
    .registers 1

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    if-eqz p0, :cond_7

    .line 495
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private notifyState(IZ)V
    .registers 4

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZ)V

    return-void
.end method

.method private restoreMakeupForConflictOff()V
    .registers 4

    .line 462
    const-string v0, "key_makeup_remember"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 464
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 465
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 619
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 5

    .line 134
    sget-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    return-void

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "duplicate dialog, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x87

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 142
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 162
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz v1, :cond_39

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    :cond_39
    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    :cond_3c
    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "p_makeup"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 7

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 189
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 190
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, v2

    .line 191
    :goto_27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 192
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 195
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getSelectChild()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 197
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    return-void
.end method

.method private updateItemDecoration(I)V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_26

    .line 635
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1c

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private updateSelectedItem(Ljava/lang/String;)V
    .registers 6

    .line 222
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_5e

    :cond_23
    const/4 v0, 0x0

    .line 227
    :goto_24
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_5b

    .line 232
    :cond_39
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 233
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    return-void

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_5e
    :goto_5e
    return-void
.end method


# virtual methods
.method public activityPause()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityPause mDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p0, :cond_1f

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onActivityPause()V

    :cond_1f
    return-void
.end method

.method public closeContrast(Z)V
    .registers 11

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2d

    .line 363
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 366
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

    .line 368
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_2d

    .line 370
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public hideAutoHint()V
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 627
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->clearDialogList()V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onConflictSettingChanged(Ljava/lang/String;Z)V
    .registers 8

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConflictSettingChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_de

    :goto_38
    move v0, v2

    goto :goto_5a

    :sswitch_3a
    const-string v0, "key_portrait_flare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_38

    :cond_43
    const/4 v0, 0x2

    goto :goto_5a

    :sswitch_45
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_38

    :cond_4e
    const/4 v0, 0x1

    goto :goto_5a

    :sswitch_50
    const-string v0, "key_mu_stereo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_38

    :cond_59
    move v0, v1

    :goto_5a
    packed-switch v0, :pswitch_data_ec

    goto :goto_d0

    .line 432
    :pswitch_5e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p2, :cond_81

    .line 434
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p2

    if-eq p2, v2, :cond_7d

    .line 435
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_flare_closed_feature"

    invoke-virtual {p2, v3, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    :cond_7d
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->closeMakeupForConflictOn(Ljava/lang/String;)V

    goto :goto_bd

    .line 439
    :cond_81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getBlurValue()Ljava/lang/String;

    move-result-object p2

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_mu_makeup_closed_reason"

    const-string v4, "closed_reason_default_value"

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b2

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onConflictSettingChanged,makeupClosedReason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_b2
    const-string p1, "f0.0"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 446
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->restoreMakeupForConflictOff()V

    .line 449
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p1, :cond_d0

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    if-eqz p1, :cond_ce

    .line 451
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;->hideBottomPanelByConflict()V

    .line 453
    :cond_ce
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    :cond_d0
    :goto_d0
    return-void

    .line 424
    :pswitch_d1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p2, :cond_d9

    .line 426
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->closeMakeupForConflictOn(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_d9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->restoreMakeupForConflictOff()V

    return-void

    nop

    :sswitch_data_de
    .sparse-switch
        -0x37803771 -> :sswitch_50
        0x2093e60 -> :sswitch_45
        0x452e140a -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_d1
        :pswitch_5e
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 397
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 398
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->makeup_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;

    .line 400
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 401
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 402
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mSimpleItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/SimpleItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 405
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$5;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public openContrast()V
    .registers 11

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2d

    .line 347
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 350
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

    .line 352
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_2d

    .line 354
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public progressChanged(I)V
    .registers 6

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_40

    .line 330
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 332
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 334
    iget-object v2, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 335
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 337
    const-string v0, "key_makeup_remember"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_40
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 9

    .line 245
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/manager/EffectDataManager;->getItem(Ljava/lang/String;II)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 247
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->setItems(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->updateScreenFormType(II)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->setListener(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 273
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    const-string v2, "f0.0"

    if-eqz v1, :cond_6d

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v1, :cond_6d

    .line 277
    const-string v1, "key_makeup_remember"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v3, "key_mu_monomer"

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    move-object v3, v2

    .line 280
    :goto_6f
    const-string v4, "key_portrait_flare"

    if-eqz v1, :cond_8b

    .line 281
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 282
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    move-object v0, v1

    .line 286
    :cond_8b
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v0, :cond_a5

    .line 288
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 289
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->closeMakeupForConflictOn(Ljava/lang/String;)V

    .line 291
    :cond_a5
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$4;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setItemEnable(Z)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 212
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 214
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 216
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;)V
    .registers 3

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 323
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 313
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideDialog()V

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_10

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateUI(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 381
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 383
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideAutoHint()V

    const/16 p1, 0x8

    .line 384
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 6

    .line 587
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_15

    .line 591
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsVipMode:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_15

    .line 592
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 595
    :cond_15
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz p1, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    goto :goto_23

    .line 601
    :cond_20
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    goto :goto_26

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 599
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    .line 604
    :goto_26
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateItemDecoration(I)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_41

    .line 607
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_38

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_41

    .line 608
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 612
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    if-eqz p0, :cond_48

    .line 613
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->updateScreenFormType(II)V

    :cond_48
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    if-eqz p0, :cond_7

    .line 582
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method public updateSwitchBar(Ljava/lang/String;)V
    .registers 2

    .line 572
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    return-void
.end method

.method public updateUI(Ljava/lang/String;)V
    .registers 14

    .line 507
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    const-string v2, "off"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2c

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v1, v4

    .line 511
    :goto_2d
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 512
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    .line 511
    const-string v7, "key_mu_makeup_closed_reason"

    const-string v8, "closed_reason_default_value"

    invoke-virtual {v5, v7, v8, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_6f

    .line 514
    const-string v1, "closed_reason_user"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 515
    const-string p1, "key_makeup_remember"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_52

    .line 516
    const-string/jumbo p1, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/zhigan\",\"styleNumber\":11,\"feature\":zhigan}"

    .line 517
    :cond_52
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUI, new value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v4

    goto :goto_70

    :cond_6f
    move v1, v3

    .line 522
    :goto_70
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_80
    if-eqz v0, :cond_123

    move p1, v3

    .line 527
    :goto_83
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_123

    .line 528
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v5

    if-nez v5, :cond_99

    goto/16 :goto_11f

    .line 532
    :cond_99
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->feature:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    .line 536
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object p1

    aget p1, p1, v4

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result p1

    .line 537
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 538
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getFeature()Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v11, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz p1, :cond_11c

    sget-boolean p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    if-nez p1, :cond_11c

    .line 541
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f3

    .line 542
    invoke-direct {p0, v4, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    goto :goto_113

    .line 544
    :cond_f3
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    if-nez p1, :cond_fe

    const/4 p1, 0x3

    .line 545
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    goto :goto_113

    .line 547
    :cond_fe
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_113

    .line 548
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->notifyState(IZ)V

    .line 549
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    const/16 v7, 0x64

    invoke-interface/range {v5 .. v11}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 552
    :cond_113
    :goto_113
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    if-eqz p1, :cond_11c

    .line 553
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideAutoHint()V

    .line 556
    :cond_11c
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    goto :goto_123

    :cond_11f
    :goto_11f
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_83

    :cond_123
    :goto_123
    if-eqz v1, :cond_12b

    .line 563
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->doOnItemClicked(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    return-void

    .line 565
    :cond_12b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mEffectButtonItem:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p1

    if-nez p1, :cond_13e

    .line 566
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->showAutoHint(Ljava/lang/String;)V

    :cond_13e
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 3

    .line 390
    const-string/jumbo v0, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[],\"path\":\"\",\"styleNumber\":0,\"feature\":noeffect}"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 391
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
