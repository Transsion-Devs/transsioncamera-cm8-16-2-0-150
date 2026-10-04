.class public Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;
.super Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;
.source "SourceFile"


# static fields
.field private static DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_AI_INDEX:I = 0x1

.field private static final FEATURE_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_LAYOUT_ID:I

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I


# instance fields
.field private final CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mContext:Landroid/content/Context;

.field private mCurSelectFeatureId:I

.field private mCurrentRace:Ljava/lang/String;

.field private mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private final mFaceAttributeSupport:Z

.field private mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

.field private mFeatureRvListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

.field private mIsCloseOrAi:Z

.field private mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

.field private mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$Z9xKWH8EJ6Fzmf8Gs0xm2Gb354A(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->lambda$updateSelectUIinMainThread$0(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fZfGz1gmfL6xl6fArmjPly7EBiA(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->lambda$closeSlimBodyForConflictOn$2(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmcYDW6t7pEeWjw6jO7EWyM_fSg(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->lambda$onConflictSettingChanged$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurSelectFeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurSelectFeatureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnClickSelectedItem(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->doOnClickSelectedItem(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnItemSelected(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->doOnItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultSlimBodySetting(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgressBar(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateProgressBar(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetITEM_LAYOUT_ID()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->ITEM_LAYOUT_ID:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_12

    .line 120
    :cond_f
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_item:I

    goto :goto_14

    .line 119
    :cond_12
    :goto_12
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_item_ui4:I

    .line 120
    :goto_14
    sput v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->ITEM_LAYOUT_ID:I

    .line 121
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    .line 137
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v0, 0x67

    const/4 v1, 0x1

    invoke-direct {p2, v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 109
    const-string p2, "slimbody"

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIsCloseOrAi:Z

    const/4 p2, 0x0

    .line 114
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurSelectFeatureId:I

    .line 115
    const-string p2, "race_A"

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    .line 336
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureRvListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    .line 1089
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFaceAttributeSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)I
    .registers 1

    .line 95
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private closeSlimBodyForConflictOn(Ljava/lang/String;)V
    .registers 8

    .line 975
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->isSlimBodyClosed()Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 978
    const-string v1, "key_slimbody_remember"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string/jumbo v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v1

    .line 980
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "key_mu_slimbody_closed_reason"

    invoke-virtual {v2, v5, p1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 981
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 983
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void

    .line 985
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_48

    .line 986
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_48
    return-void
.end method

.method private doOnClickSelectedItem(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V
    .registers 4

    .line 357
    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget p1, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIsCloseOrAi:Z

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->showResetDialog(IZ)V

    return-void

    .line 360
    :cond_f
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurSelectFeatureId:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_18

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 361
    :cond_18
    :goto_18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIsCloseOrAi:Z

    .line 362
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateUIByFeatureId(I)V

    return-void
.end method

.method private doOnItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V
    .registers 5

    .line 367
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->showAutoHint(Ljava/lang/String;)V

    .line 370
    :cond_16
    iget v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateValueByFeatureId(ILjava/lang/String;)V

    .line 371
    iget v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    .line 372
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->handleAnalytics(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    .line 373
    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-eqz p1, :cond_35

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .registers 5

    .line 380
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFaceAttributeSupport:Z

    const-string v1, "0"

    if-eqz v0, :cond_12

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_gender_attribute_value"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultSlimBodyItemInfo(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-object v0
.end method

.method private getProcessOrDefaultByFeatureId(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)I
    .registers 3

    packed-switch p1, :pswitch_data_28

    const/16 p0, 0x64

    return p0

    .line 443
    :pswitch_6
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    return p0

    .line 440
    :pswitch_9
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    return p0

    .line 437
    :pswitch_c
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    return p0

    .line 434
    :pswitch_f
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    return p0

    .line 431
    :pswitch_12
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    return p0

    .line 428
    :pswitch_15
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    return p0

    .line 425
    :pswitch_18
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    return p0

    .line 422
    :pswitch_1b
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    return p0

    .line 419
    :pswitch_1e
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    return p0

    .line 416
    :pswitch_21
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    return p0

    .line 413
    :pswitch_24
    iget p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    return p0

    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getSettingValue(Lcom/transsion/camera/app/common/setting/ISetting;)Ljava/lang/String;
    .registers 9

    .line 584
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingValue value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_162

    .line 587
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_162

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_162

    .line 588
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 589
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mCustomDefaultDataInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_164

    goto/16 :goto_fa

    :sswitch_79
    const-string v4, "key_mu_slimbody_body_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto/16 :goto_fa

    :cond_83
    const/16 v5, 0xa

    goto/16 :goto_fa

    :sswitch_87
    const-string v4, "key_mu_slimbody_leg_lengthen_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto/16 :goto_fa

    :cond_91
    const/16 v5, 0x9

    goto/16 :goto_fa

    :sswitch_95
    const-string v4, "key_mu_slimbody_butt_plump_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    goto/16 :goto_fa

    :cond_9f
    const/16 v5, 0x8

    goto/16 :goto_fa

    :sswitch_a3
    const-string v4, "key_mu_slimbody_waist_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    goto :goto_fa

    :cond_ac
    const/4 v5, 0x7

    goto :goto_fa

    :sswitch_ae
    const-string v4, "key_mu_slimbody_waist_upper_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    goto :goto_fa

    :cond_b7
    const/4 v5, 0x6

    goto :goto_fa

    :sswitch_b9
    const-string v4, "key_mu_slimbody_leg_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto :goto_fa

    :cond_c2
    move v5, v2

    goto :goto_fa

    :sswitch_c4
    const-string v4, "key_mu_slimbody_chest_plump_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    goto :goto_fa

    :cond_cd
    const/4 v5, 0x4

    goto :goto_fa

    :sswitch_cf
    const-string v4, "key_mu_slimbody_head_shrink_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    goto :goto_fa

    :cond_d8
    move v5, v3

    goto :goto_fa

    :sswitch_da
    const-string v4, "key_mu_slimbody_belly_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    goto :goto_fa

    :cond_e3
    const/4 v5, 0x2

    goto :goto_fa

    :sswitch_e5
    const-string v4, "key_mu_slimbody_arm_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_fa

    :cond_ee
    const/4 v5, 0x1

    goto :goto_fa

    :sswitch_f0
    const-string v4, "key_mu_slimbody_shoulder_slim_flag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    goto :goto_fa

    :cond_f9
    const/4 v5, 0x0

    :goto_fa
    packed-switch v5, :pswitch_data_192

    goto/16 :goto_34

    .line 593
    :pswitch_ff
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    goto/16 :goto_34

    .line 611
    :pswitch_107
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    goto/16 :goto_34

    .line 605
    :pswitch_10f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    goto/16 :goto_34

    .line 602
    :pswitch_117
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    goto/16 :goto_34

    .line 623
    :pswitch_11f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    goto/16 :goto_34

    .line 608
    :pswitch_127
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    goto/16 :goto_34

    .line 614
    :pswitch_12f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    goto/16 :goto_34

    .line 596
    :pswitch_137
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    goto/16 :goto_34

    .line 617
    :pswitch_13f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    goto/16 :goto_34

    .line 620
    :pswitch_147
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    goto/16 :goto_34

    .line 599
    :pswitch_14f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDefaultDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    goto/16 :goto_34

    .line 628
    :cond_157
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 629
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_162
    return-object p1

    nop

    :sswitch_data_164
    .sparse-switch
        -0x5f370308 -> :sswitch_f0
        -0x4981223e -> :sswitch_e5
        -0x1fef304 -> :sswitch_da
        0x2cfdec -> :sswitch_cf
        0x1a01256 -> :sswitch_c4
        0x14be8ef4 -> :sswitch_b9
        0x1ecf8ef1 -> :sswitch_ae
        0x57649226 -> :sswitch_a3
        0x58ec6312 -> :sswitch_95
        0x74863262 -> :sswitch_87
        0x7d5856fa -> :sswitch_79
    .end sparse-switch

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_14f
        :pswitch_147
        :pswitch_13f
        :pswitch_137
        :pswitch_12f
        :pswitch_127
        :pswitch_11f
        :pswitch_117
        :pswitch_10f
        :pswitch_107
        :pswitch_ff
    .end packed-switch
.end method

.method private handleAnalytics(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V
    .registers 2

    if-eqz p1, :cond_52

    .line 318
    iget p0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    const/4 p1, 0x3

    if-ne p1, p0, :cond_f

    .line 319
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBodySlimDone()V

    return-void

    :cond_f
    const/4 p1, 0x4

    if-ne p1, p0, :cond_1a

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHeadShrinkDone()V

    return-void

    :cond_1a
    const/4 p1, 0x5

    if-ne p1, p0, :cond_25

    .line 323
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShoulderSlimDone()V

    return-void

    :cond_25
    const/4 p1, 0x6

    if-ne p1, p0, :cond_30

    .line 325
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setWaistSlimDone()V

    return-void

    :cond_30
    const/4 p1, 0x7

    if-ne p1, p0, :cond_3b

    .line 327
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setButtPlumpDone()V

    return-void

    :cond_3b
    const/16 p1, 0x8

    if-ne p1, p0, :cond_47

    .line 329
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegSlimDone()V

    return-void

    :cond_47
    const/16 p1, 0x9

    if-ne p1, p0, :cond_52

    .line 331
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegLengthenDone()V

    :cond_52
    return-void
.end method

.method private isSlimBodyClosed()Z
    .registers 3

    .line 993
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object p0

    .line 994
    instance-of v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 995
    check-cast p0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 996
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method private synthetic lambda$closeSlimBodyForConflictOn$2(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 2

    .line 986
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void
.end method

.method private synthetic lambda$onConflictSettingChanged$1()V
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    if-eqz p0, :cond_7

    .line 949
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;->hideBottomPanelByConflict()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$updateSelectUIinMainThread$0(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 2

    .line 220
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void
.end method

.method private notifyState(IZ)V
    .registers 4

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZ)V

    return-void
.end method

.method private resetDefaultFlag()V
    .registers 7

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetDefaultFlag"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 639
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 638
    const-string v5, "0"

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 641
    :cond_2c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateDefaultFlag()V

    return-void
.end method

.method private restoreSlimBodyForConflictOff()V
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateFacingValue(Ljava/lang/String;)V

    .line 964
    :cond_19
    const-string v0, "key_slimbody_remember"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    const/4 v2, 0x1

    .line 966
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 967
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v2

    .line 968
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 969
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUIinMainThread(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    :cond_34
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 491
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showResetDialog(IZ)V
    .registers 7

    .line 517
    sget-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    return-void

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "duplicate dialog, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x87

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 525
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_showDialog:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_cancel:I

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;IZ)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 559
    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz p2, :cond_39

    const/4 v0, 0x2

    if-eq p2, v0, :cond_39

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3c

    :cond_39
    const/4 p2, 0x0

    .line 562
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    :cond_3c
    const/4 p2, 0x1

    .line 564
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 565
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 566
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "slimbody"

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDefaultFlag()V
    .registers 6

    .line 645
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 646
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 647
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    const-string v4, "0"

    invoke-virtual {v2, v1, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 650
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDefaultFlag DEFAULT_CHANGE_FLAG_MAP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->DEFAULT_CHANGE_FLAG_MAP:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateItemDecoration(I)V
    .registers 4

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 1066
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1c

    .line 1069
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 1071
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V
    .registers 7

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_38

    :cond_b
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2b

    if-nez p1, :cond_12

    goto :goto_2b

    :cond_12
    const/4 p1, 0x3

    :goto_13
    const/16 v0, 0xd

    if-gt p1, v0, :cond_23

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getProcessOrDefaultByFeatureId(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)I

    move-result v0

    .line 261
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {v2, p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectItemProgress(IIZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_23
    if-eqz p3, :cond_38

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 252
    :cond_2b
    :goto_2b
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectItemProgress(IIZ)V

    if-eqz p3, :cond_38

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_38
    :goto_38
    return-void
.end method

.method private updateOneSelecProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1a

    .line 274
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getProcessOrDefaultByFeatureId(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)I

    move-result p2

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectItemProgress(IIZ)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private updateProcessToDataInfo(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;I)V
    .registers 5

    .line 721
    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    const-string v1, "key_mu_slimbody_body_slim_flag"

    packed-switch v0, :pswitch_data_4c

    goto :goto_3c

    .line 764
    :pswitch_8
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    const-string v1, "key_mu_slimbody_waist_upper_flag"

    goto :goto_3c

    .line 760
    :pswitch_d
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    .line 761
    const-string v1, "key_mu_slimbody_arm_slim_flag"

    goto :goto_3c

    .line 756
    :pswitch_12
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    .line 757
    const-string v1, "key_mu_slimbody_belly_slim_flag"

    goto :goto_3c

    .line 752
    :pswitch_17
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    .line 753
    const-string v1, "key_mu_slimbody_chest_plump_flag"

    goto :goto_3c

    .line 748
    :pswitch_1c
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    .line 749
    const-string v1, "key_mu_slimbody_leg_lengthen_flag"

    goto :goto_3c

    .line 744
    :pswitch_21
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    .line 745
    const-string v1, "key_mu_slimbody_leg_slim_flag"

    goto :goto_3c

    .line 740
    :pswitch_26
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    .line 741
    const-string v1, "key_mu_slimbody_butt_plump_flag"

    goto :goto_3c

    .line 736
    :pswitch_2b
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    .line 737
    const-string v1, "key_mu_slimbody_waist_slim_flag"

    goto :goto_3c

    .line 732
    :pswitch_30
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    .line 733
    const-string v1, "key_mu_slimbody_shoulder_slim_flag"

    goto :goto_3c

    .line 728
    :pswitch_35
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    .line 729
    const-string v1, "key_mu_slimbody_head_shrink_flag"

    goto :goto_3c

    .line 724
    :pswitch_3a
    iput p2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    .line 767
    :goto_3c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "1"

    invoke-virtual {p1, v1, v0, p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x3
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method private updateProgressBar(I)V
    .registers 10

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    if-eqz v0, :cond_4d

    .line 391
    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getProcessOrDefaultByFeatureId(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)I

    move-result v6

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_4d

    .line 394
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 396
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateProgressBar mCustomDataInfo ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-static {v3}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v1

    .line 398
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getProcessOrDefaultByFeatureId(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)I

    move-result p1

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    iget v3, v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarMax:I

    iget v4, v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarMin:I

    iget v5, v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarOptimal:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, ""

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private updateRaceData(Ljava/lang/String;)V
    .registers 7

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 817
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    const-string v2, "key_mu_slimbody_value_change"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "key_mu_slimbody_custom"

    if-eqz v1, :cond_69

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 819
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_8e

    goto :goto_5d

    :pswitch_32
    const-string v1, "race_D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_5d

    :cond_3b
    const/4 v4, 0x3

    goto :goto_5d

    :pswitch_3d
    const-string v1, "race_C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_5d

    :cond_46
    const/4 v4, 0x2

    goto :goto_5d

    :pswitch_48
    const-string v1, "race_B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_5d

    :cond_51
    const/4 v4, 0x1

    goto :goto_5d

    :pswitch_53
    const-string v1, "race_A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v4, v2

    :goto_5d
    packed-switch v4, :pswitch_data_9a

    goto :goto_69

    .line 831
    :pswitch_61
    const-string v3, "key_mu_slimbody_custom_b_southasia"

    goto :goto_69

    .line 828
    :pswitch_64
    const-string v3, "key_mu_slimbody_custom_c"

    goto :goto_69

    .line 825
    :pswitch_67
    const-string v3, "key_mu_slimbody_custom_b"

    .line 836
    :cond_69
    :goto_69
    :pswitch_69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateRaceData]  mCurrentRace = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_8e
    .packed-switch -0x37f219ad
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_69
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method private updateRotation(IIZ)V
    .registers 7

    .line 1049
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-nez v0, :cond_b

    goto :goto_22

    .line 1053
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 1055
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;

    if-eqz v2, :cond_1f

    .line 1057
    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;->updateRotation(IIZ)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    :goto_22
    return-void
.end method

.method private updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 6

    if-eqz p1, :cond_24

    .line 227
    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_c

    goto :goto_11

    .line 233
    :cond_c
    iput v2, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    goto :goto_11

    .line 229
    :cond_f
    iput v1, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 240
    :goto_11
    iget p1, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    if-eq p1, v2, :cond_17

    if-nez p1, :cond_18

    :cond_17
    move v1, v3

    :cond_18
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIsCloseOrAi:Z

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectedItemById(I)V

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_24
    return-void
.end method

.method private updateSelectUIinMainThread(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    return-void

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1a

    .line 220
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method private updateState()V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    .line 193
    instance-of v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz v1, :cond_41

    .line 194
    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 195
    iget v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_27

    const/4 v0, 0x3

    .line 196
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->showAutoHint(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-direct {p0, v2, v0, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    return-void

    :cond_27
    if-nez v1, :cond_36

    .line 200
    invoke-direct {p0, v3, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-direct {p0, v0, v1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    return-void

    .line 204
    :cond_36
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 205
    iget v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateProgressBar(I)V

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    :cond_41
    return-void
.end method

.method private updateUIByFeatureId(I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const/4 p1, 0x1

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 301
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    return-void

    :cond_b
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1e

    const/4 p1, 0x3

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->showAutoHint(Ljava/lang/String;)V

    return-void

    .line 308
    :cond_1e
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->notifyState(IZ)V

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateProgressBar(I)V

    return-void
.end method

.method private updateUIByRace()V
    .registers 6

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateUIByRace]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getRaceByConfigType(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUIByRace]  mCurrentRace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 845
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    const-string v2, "key_mu_slimbody_value_change"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "key_mu_slimbody_custom"

    if-eqz v1, :cond_93

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurrentRace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_ba

    goto :goto_87

    :pswitch_5c
    const-string v1, "race_D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_87

    :cond_65
    const/4 v3, 0x3

    goto :goto_87

    :pswitch_67
    const-string v1, "race_C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_87

    :cond_70
    const/4 v3, 0x2

    goto :goto_87

    :pswitch_72
    const-string v1, "race_B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_87

    :cond_7b
    const/4 v3, 0x1

    goto :goto_87

    :pswitch_7d
    const-string v1, "race_A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_87

    :cond_86
    const/4 v3, 0x0

    :goto_87
    packed-switch v3, :pswitch_data_c6

    goto :goto_93

    .line 860
    :pswitch_8b
    const-string v2, "key_mu_slimbody_custom_b_southasia"

    goto :goto_93

    .line 857
    :pswitch_8e
    const-string v2, "key_mu_slimbody_custom_c"

    goto :goto_93

    .line 854
    :pswitch_91
    const-string v2, "key_mu_slimbody_custom_b"

    .line 865
    :cond_93
    :goto_93
    :pswitch_93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 866
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 865
    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 868
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIsCloseOrAi:Z

    if-nez v1, :cond_b8

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch -0x37f219ad
        :pswitch_7d
        :pswitch_72
        :pswitch_67
        :pswitch_5c
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
    .end packed-switch
.end method

.method private updateValue()V
    .registers 6

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    .line 888
    instance-of v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-nez v1, :cond_b

    goto :goto_6d

    .line 891
    :cond_b
    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 892
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    .line 894
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    const-string v3, "key_mu_slimbody_closed_reason"

    const-string v4, "closed_reason_default_value"

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateValue, closedReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 896
    iget v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-nez v0, :cond_6d

    const-string v0, "closed_reason_user"

    .line 897
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 898
    const-string v0, "key_slimbody_remember"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 900
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    goto :goto_5c

    .line 901
    :cond_58
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    .line 903
    :goto_5c
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 905
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->doOnItemSelected(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    .line 906
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->doOnClickSelectedItem(Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private updateValueByFeatureId(ILjava/lang/String;)V
    .registers 4

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_26

    .line 284
    :cond_c
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    if-nez p2, :cond_18

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "resetProgressBarAndSetValue mCustomDataInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_18
    iput p1, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 289
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 290
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateRaceData(Ljava/lang/String;)V

    .line 294
    :goto_26
    const-string p1, "key_slimbody_remember"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public activityPause()V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityPause mDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p0, :cond_1f

    .line 572
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onActivityPause()V

    :cond_1f
    return-void
.end method

.method public closeContrast(Z)V
    .registers 3

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_21

    .line 803
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 805
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 807
    const-string v0, "0"

    iput-object v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public getDefaultSkin()Ljava/lang/String;
    .registers 2

    .line 406
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAutoHint()V
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 512
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->clearDialogList()V

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onConflictSettingChanged(Ljava/lang/String;Z)V
    .registers 8

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBlurSettingChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_da

    goto :goto_57

    :sswitch_37
    const-string v0, "key_portrait_flare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_57

    :cond_40
    const/4 v2, 0x2

    goto :goto_57

    :sswitch_42
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_57

    :cond_4b
    const/4 v2, 0x1

    goto :goto_57

    :sswitch_4d
    const-string v0, "key_mu_stereo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    packed-switch v2, :pswitch_data_e8

    goto :goto_cc

    .line 929
    :pswitch_5b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p2, :cond_7c

    .line 931
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->isSlimBodyClosed()Z

    move-result p2

    if-nez p2, :cond_78

    .line 932
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_flare_closed_feature"

    invoke-virtual {p2, v3, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 934
    :cond_78
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->closeSlimBodyForConflictOn(Ljava/lang/String;)V

    goto :goto_b8

    .line 936
    :cond_7c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getBlurValue()Ljava/lang/String;

    move-result-object p2

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_mu_slimbody_closed_reason"

    const-string v4, "closed_reason_default_value"

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ad

    .line 939
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onConflictSettingChanged,slimBodyClosedReason:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_ad
    const-string p1, "f0.0"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 943
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->restoreSlimBodyForConflictOff()V

    .line 946
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_cc

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p1, :cond_cc

    .line 947
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 952
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    :cond_cc
    :goto_cc
    return-void

    .line 921
    :pswitch_cd
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p2, :cond_d5

    .line 923
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->closeSlimBodyForConflictOn(Ljava/lang/String;)V

    return-void

    .line 925
    :cond_d5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->restoreSlimBodyForConflictOff()V

    return-void

    nop

    :sswitch_data_da
    .sparse-switch
        -0x37803771 -> :sswitch_4d
        0x2093e60 -> :sswitch_42
        0x452e140a -> :sswitch_37
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_cd
        :pswitch_5b
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 463
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 464
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->slimbody_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 465
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    .line 467
    sget v1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->ITEM_LAYOUT_ID:I

    sget-object v2, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 468
    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_restore_layout:I

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 469
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 470
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 471
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/FeatureAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureRvListener:Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/pmaster/adapter/FeatureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public openContrast()V
    .registers 3

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_21

    .line 789
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 791
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 793
    const-string v1, "1"

    iput-object v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public previewRatioChange()V
    .registers 1

    .line 1007
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-eqz p0, :cond_7

    .line 1008
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->viewRatioChange()V

    :cond_7
    return-void
.end method

.method public progressChanged(I)V
    .registers 7

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_37

    .line 773
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateProcessToDataInfo(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;I)V

    .line 774
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 776
    const-string v0, "key_slimbody_remember"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateOneSelecProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_mu_slimbody_value_change"

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 781
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateRaceData(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 9

    .line 655
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 656
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateDefaultFlag()V

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 658
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    const-string v3, "key_mu_slimbody_custom"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 660
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getSettingValue(Lcom/transsion/camera/app/common/setting/ISetting;)Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    const-string v2, "f0.0"

    if-eqz v1, :cond_67

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    if-eqz v1, :cond_67

    .line 664
    const-string v1, "key_slimbody_remember"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mAlgoSupportForBackCamera:Z

    const-string v4, "key_mu_monomer"

    if-eqz v3, :cond_47

    .line 666
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_69

    .line 668
    :cond_47
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 669
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_mu_stereo"

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_69

    .line 671
    :cond_5c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_69

    :cond_67
    const/4 v1, 0x0

    move-object v3, v2

    .line 675
    :goto_69
    const-string v4, "key_portrait_flare"

    if-eqz v1, :cond_85

    .line 676
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 677
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    move-object v0, v1

    .line 681
    :cond_85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 682
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 684
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a4

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a4

    .line 685
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    if-lt v1, v2, :cond_a2

    move v2, v1

    .line 686
    :cond_a2
    iput v2, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 689
    :cond_a4
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v0, :cond_c0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    if-eqz v0, :cond_c0

    .line 692
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->closeSlimBodyForConflictOn(Ljava/lang/String;)V

    .line 695
    :cond_c0
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$6;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$6;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 700
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 701
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurSelectFeatureId:I

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemProgress(ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    .line 703
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSettingDevice mCurSelectFeatureId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCurSelectFeatureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomDataInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mCustomDataInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public setItemEnable(Z)V
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 501
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 503
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mSlimbodyRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 505
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

    .line 715
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 716
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 452
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 708
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 709
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideDialog()V

    .line 710
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_10

    .line 876
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateUIByRace()V

    .line 877
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateValue()V

    .line 878
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateState()V

    const/4 p1, 0x0

    .line 879
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 881
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    const/16 p1, 0x8

    .line 882
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 6

    .line 1018
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_15

    .line 1022
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsVipMode:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_15

    .line 1023
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 1027
    :cond_15
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz p1, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    goto :goto_23

    .line 1033
    :cond_20
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    goto :goto_26

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 1031
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    .line 1036
    :goto_26
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateItemDecoration(I)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 1041
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    if-eqz v0, :cond_4e

    .line 1042
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateScreenFormType(I)V

    .line 1043
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateOrientation(I)V

    .line 1044
    iget p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateRotation(IIZ)V

    :cond_4e
    return-void
.end method

.method protected updateSwitchBar(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateUI(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
