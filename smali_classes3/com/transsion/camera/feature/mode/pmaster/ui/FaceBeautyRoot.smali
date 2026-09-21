.class public Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.super Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$FooterVH;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;
    }
.end annotation


# static fields
.field private static final CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

.field private static final FEATURE_ID_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRONT_CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final ITEM_LAYOUT_ID:I

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SKIN_COLOR_CARD_SELECT_PROGRESS:I = 0x64

.field private static final SKIN_COLOR_CARD_UNSELECT_PROGRESS:I

.field private static final SKIN_COLOR_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

.field private final TYPE_CHILD:I

.field private final TYPE_FOOTER:I

.field private final TYPE_GROUP:I

.field private final TYPE_RESET:I

.field private final TYPE_SKIN:I

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFeatureKey:Ljava/lang/String;

.field private mCurrentSkinColorFeatureKey:Ljava/lang/String;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private final mFaceAttributeSupport:Z

.field private final mFaceBeautyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mItdV2Support:Z

.field private mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

.field private final mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mMainHandler:Landroid/os/Handler;

.field private mOriginValue:Ljava/lang/String;

.field private mPlatformConfigType:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

.field private mSelectedPostion:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

.field private mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

.field private final mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

.field private final mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

.field private mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;


# direct methods
.method public static synthetic $r8$lambda$R107vWPAxY53a6W_6YYLc8abUoc(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->lambda$collapseGroupItem$1(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dY0F7bEdseNOBBJl-SXrO20E47M(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->lambda$updateSelectedItemByKey$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zG36lRpfKCt_1KV313YvvuPvfqw(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->lambda$updateExpandState$0(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItdV2Support(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItdV2Support:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misExpandedState(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->isExpandedState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowAutoHint(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRecyclerViewAnim(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataStoreResetValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateDataStoreResetValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIconBackgroundView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/widget/FrameLayout;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateIconBackgroundView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSeekBarUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSetting(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSkinColorCardValue(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSkinColorItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSkinColorItemProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetITEM_LAYOUT_ID()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->ITEM_LAYOUT_ID:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smparseValue(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->parseValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 121
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 145
    const-string/jumbo v0, "warm"

    const-string v1, "brown"

    const-string v2, "neutral"

    const-string v3, "cold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2a

    .line 159
    :cond_27
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_item:I

    goto :goto_2c

    .line 158
    :cond_2a
    :goto_2a
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_item_ui4:I

    .line 159
    :goto_2c
    sput v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->ITEM_LAYOUT_ID:I

    .line 160
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    .line 182
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FRONT_CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    .line 204
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    .line 227
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    const-string p2, "facebeauty"

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CONFIRM_FRAGMENT_TAG:Ljava/lang/String;

    .line 131
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 138
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    .line 152
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 153
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mMainHandler:Landroid/os/Handler;

    const p2, 0xfa01

    .line 1072
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TYPE_GROUP:I

    const p2, 0xfa02

    .line 1073
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TYPE_CHILD:I

    const p2, 0xfa03

    .line 1074
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TYPE_RESET:I

    const p2, 0xfa04

    .line 1075
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TYPE_FOOTER:I

    const p2, 0xfa05

    .line 1076
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TYPE_SKIN:I

    .line 2281
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$10;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$10;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    .line 2298
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    .line 2451
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    .line 393
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItdV2Support:Z

    .line 394
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mFaceAttributeSupport:Z

    .line 395
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformConfigType:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mPlatformConfigType:I

    .line 396
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$6;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mFaceBeautyInfoList:Ljava/util/List;

    .line 445
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    .line 447
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->buildFaceBeautyInfoList(Ljava/util/List;)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/view/ViewGroup;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return p0
.end method

.method private buildFaceBeautyInfoList(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 475
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_6
    if-ge v9, v7, :cond_166

    .line 477
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 478
    const-string/jumbo v10, "whiten"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    .line 481
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 482
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v6, v0

    .line 485
    iput v9, v6, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->id:I

    .line 486
    invoke-direct {p0, v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->groupExpand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    .line 487
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v11, v8

    :goto_4f
    if-ge v11, v10, :cond_89

    .line 489
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    .line 490
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 491
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    .line 492
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;ILjava/lang/String;ILjava/lang/String;)V

    .line 494
    iput v11, v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->position:I

    .line 495
    iput-object v6, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->group:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 496
    invoke-virtual {v6, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    .line 498
    :cond_89
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v0, p0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;II)V

    .line 501
    invoke-virtual {v6, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    goto/16 :goto_162

    .line 504
    :cond_9c
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 505
    iput v9, v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->id:I

    .line 506
    iput-boolean v8, v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    .line 507
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_b9

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    iput-object v10, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    goto :goto_f7

    .line 510
    :cond_b9
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v8

    :goto_c0
    if-ge v2, v0, :cond_f7

    .line 512
    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    .line 513
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 514
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v6, v6, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    .line 515
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    new-instance v10, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    invoke-direct {v10, v4, v5, v6, v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {v3, v10}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 520
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    goto :goto_162

    .line 522
    :cond_ff
    const-string v0, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 523
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot-IA;)V

    .line 524
    iput v9, v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->id:I

    .line 525
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;->title:Ljava/lang/String;

    .line 526
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    iput v2, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;->drawableId:I

    .line 527
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    goto :goto_162

    .line 529
    :cond_12f
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v2, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    .line 530
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 531
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v5, v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 533
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;ILjava/lang/String;ILjava/lang/String;)V

    .line 534
    iput v9, v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->id:I

    .line 535
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    :goto_162
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_166
    return-void
.end method

.method private closeFaceBeauty()V
    .registers 16

    .line 1629
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeFaceBeauty] mCurrentFeatureKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    const/4 v0, 0x1

    .line 1631
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 1632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "soften"

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1634
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const-string/jumbo v4, "whiten"

    if-eqz v3, :cond_47

    .line 1635
    const-string v3, "face_beauty_whiten_skin_card"

    goto :goto_48

    :cond_47
    move-object v3, v4

    .line 1636
    :goto_48
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    .line 1633
    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1637
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "face"

    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1638
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "eye"

    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1639
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "face_beauty_default_feature"

    invoke-virtual {v5, v8, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1640
    new-instance v9, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct/range {v9 .. v14}, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;-><init>(IIIII)V

    .line 1641
    const-string v0, "key_facebeauty_remember"

    invoke-static {v9}, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1643
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectUI(I)V

    .line 1644
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v8, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c7
    return-void
.end method

.method private closeFaceBeautyForConflictOn(Ljava/lang/String;)V
    .registers 9

    .line 1599
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1600
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "off"

    const/4 v3, 0x0

    if-nez v1, :cond_53

    .line 1601
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_21

    .line 1604
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1606
    :cond_21
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mPlatformConfigType:I

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_2c

    .line 1607
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1609
    :cond_2c
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1612
    :goto_30
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "face_beauty_default_feature"

    invoke-virtual {v4, v6, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_46

    .line 1614
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    :cond_46
    if-eqz v0, :cond_53

    .line 1618
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateFacingValue(Ljava/lang/String;)V

    .line 1621
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_face_beauty_closed_reason"

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1623
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeFaceBeautyForConflictOn: conflictKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1625
    :cond_7e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->closeFaceBeauty()V

    return-void
.end method

.method private collapseGroupItem()V
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 699
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_gender_attribute_value"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1049
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 1050
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1008
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1009
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "0"

    if-eqz p1, :cond_d

    return-object v0

    .line 1013
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1014
    rem-int/lit8 p0, p0, 0x65

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 1016
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkinDefaultValue exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWhiteCustomDefaultValue()Ljava/lang/String;
    .registers 6

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1528
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_gender_attribute_value"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string v2, "portrait"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1530
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private groupExpand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)Z
    .registers 5

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3d

    .line 711
    :cond_e
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-nez v0, :cond_13

    return v1

    .line 714
    :cond_13
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_expand"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 715
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v1
.end method

.method private handleSkinColorMenu()Z
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->showing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    .line 741
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateRecyclerViewVisibility()V

    .line 742
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyRecyclerViewAdapter()V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private handleSkinSecondMenu()Z
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideSkinSecondMenu()V

    .line 731
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateRecyclerViewVisibility()V

    .line 732
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyRecyclerViewAdapter()V

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 2276
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private isExpandedState()Z
    .registers 2

    .line 2435
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$collapseGroupItem$1(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 3

    .line 700
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$updateExpandState$0(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 3

    .line 687
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->groupExpand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method

.method private synthetic lambda$updateSelectedItemByKey$2()V
    .registers 1

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private notifyRecyclerViewAdapter()V
    .registers 1

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    if-eqz p0, :cond_7

    .line 758
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private notifyState(IZ)V
    .registers 4

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZ)V

    return-void
.end method

.method private static parseValue(Ljava/lang/String;)I
    .registers 6

    .line 974
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "parseValue invalid valueStr: "

    if-eqz v0, :cond_1e

    .line 975
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 980
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_23

    return p0

    :catch_23
    move-exception v0

    .line 982
    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private restoreFaceBeautyForConflictOff()V
    .registers 5

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1582
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateFacingValue(Ljava/lang/String;)V

    .line 1584
    :cond_19
    const-string v0, "key_facebeauty_remember"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    const/4 v1, 0x1

    .line 1586
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 1587
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    move-result-object v0

    .line 1588
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1589
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3c

    const-string v2, "aiv2"

    goto :goto_3e

    :cond_3c
    const-string v2, "custom"

    :goto_3e
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_49

    .line 1591
    :cond_42
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "off"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1593
    :goto_49
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectUI(I)V

    .line 1594
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v0, v0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v1, v3, v0, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_62
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 251
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 5

    .line 264
    sget-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "duplicate dialog, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x87

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 272
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$5;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 294
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz v1, :cond_39

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    :cond_39
    const/4 v1, 0x0

    .line 297
    iput v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    :cond_3c
    const/4 v1, 0x1

    .line 299
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "facebeauty"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2421
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    .line 2423
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 2424
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 2427
    new-array v0, v0, [F

    fill-array-data v0, :array_40

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2430
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private skinColorCardSelected(I)Z
    .registers 2

    if-lez p1, :cond_8

    const/16 p0, 0x64

    if-gt p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private updateCustomItemProgress(Ljava/lang/String;)V
    .registers 5

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 952
    const-string v1, "five_senses"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 953
    rem-int/lit8 v0, v0, 0x65

    .line 956
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateDefaultValue(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateState()V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;)V
    .registers 8

    .line 592
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 593
    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDefaultValue key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    .line 596
    :cond_3b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "face_beauty_whiten_skin_card"

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateExpandState()V
    .registers 3

    .line 682
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 685
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 686
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIconBackgroundView(Landroid/widget/FrameLayout;)V
    .registers 5

    if-eqz p1, :cond_2f

    .line 2183
    new-instance p0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 2184
    const-string v0, "key_picture_ratio"

    const-string v1, "_global_scope"

    const-string v2, "4:3"

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2186
    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "1:1"

    .line 2187
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_2a

    .line 2191
    :cond_24
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_light_ui5:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 2188
    :cond_2a
    :goto_2a
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_dark_ui5:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2f
    return-void
.end method

.method private updateItemDecoration(I)V
    .registers 4

    .line 2439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 2442
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2443
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1c

    .line 2445
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 2447
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateItemProgress(Ljava/lang/String;IZ)V
    .registers 5

    .line 928
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_43

    :cond_7
    const/4 v0, 0x2

    if-eq p2, v0, :cond_44

    if-nez p2, :cond_d

    goto :goto_44

    .line 937
    :cond_d
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 938
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_38

    const-string/jumbo v0, "whiten"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 939
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSkinColorCardItem()V

    goto :goto_17

    .line 941
    :cond_38
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateCustomItemProgress(Ljava/lang/String;)V

    goto :goto_17

    :cond_3c
    if-eqz p3, :cond_43

    .line 946
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_43
    :goto_43
    return-void

    .line 933
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateRecyclerViewVisibility()V
    .registers 2

    .line 749
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 751
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method private updateRotation(IIZ)V
    .registers 7

    .line 2243
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2e

    :cond_7
    const/4 v0, 0x0

    .line 2247
    :goto_8
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 2248
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2249
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;

    if-nez v1, :cond_21

    goto :goto_2b

    .line 2253
    :cond_21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_28

    goto :goto_2b

    .line 2257
    :cond_28
    invoke-virtual {v1, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->updateRotation(IIZ)V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateSeekBarUI()V
    .registers 12

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "aiv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xa9

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 887
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_26

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_26

    .line 891
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 893
    :cond_26
    :goto_26
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_a5

    .line 894
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "whiten"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 895
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_bd

    .line 896
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    return-void

    .line 899
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 901
    const-string v1, "five_senses"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 902
    rem-int/lit8 v0, v0, 0x65

    :cond_71
    move v9, v0

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_bd

    const/4 v0, 0x2

    .line 905
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    .line 907
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-eqz v0, :cond_99

    const-string v0, "face"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 908
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/16 v7, -0x64

    const/4 v8, 0x0

    const/16 v6, 0x64

    invoke-interface/range {v4 .. v10}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 910
    :cond_99
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x64

    invoke-interface/range {v4 .. v10}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 914
    :cond_a5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_bd

    .line 916
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    return-void

    .line 920
    :cond_b5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_bd

    const/4 v0, 0x1

    .line 921
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    :cond_bd
    return-void
.end method

.method private updateSelectUI(I)V
    .registers 4

    .line 869
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    return-void

    .line 873
    :cond_b
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 879
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 880
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    .line 881
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectedItemByKey()V

    return-void
.end method

.method private updateSelectedItemByKey()V
    .registers 3

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)V
    .registers 7

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "face_beauty_default_feature"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1056
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 1057
    :cond_2a
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiv2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1058
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 1060
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateSetting(Ljava/lang/String;I)V
    .registers 7

    .line 1065
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateWhite(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1067
    sget-object p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1068
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private updateSkinColorCardItem()V
    .registers 6

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v1, "whiten"

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_beauty_whiten_skin_card"

    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->parseValue(Ljava/lang/String;)I

    move-result v0

    .line 962
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz v2, :cond_20

    .line 963
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setSkinColor(I)V

    .line 965
    :cond_20
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->skinColorCardSelected(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    const/16 v0, 0x64

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 966
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateSkinColorCardValue(I)V
    .registers 4

    .line 2344
    const-string v0, "key_facebeauty_remember"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    if-eqz v0, :cond_f

    .line 2346
    const-string v0, "key_makeup_remember"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    :cond_f
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSkinColorSetting(I)V

    .line 2349
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSeekBarUI()V

    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 2351
    const-string/jumbo v1, "whiten"

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    .line 2353
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    return-void
.end method

.method private updateSkinColorItemProgress()V
    .registers 9

    .line 988
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_61

    .line 992
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_61

    .line 994
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    if-nez v3, :cond_19

    goto :goto_5e

    .line 998
    :cond_19
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->key:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 999
    const-string v5, "five_senses"

    iget-object v6, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->key:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1000
    rem-int/lit8 v4, v4, 0x65

    .line 1002
    :cond_3b
    iput v4, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->progress:I

    .line 1003
    sget-object v5, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSkinColorItemProgress FeatureKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->key:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", progress:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_61
    :goto_61
    return-void
.end method

.method private updateSkinColorSetting(I)V
    .registers 6

    .line 2357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face_beauty_whiten_skin_card"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2358
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face_beauty_default_feature"

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2359
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateState()V
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 544
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 545
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 547
    :goto_27
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .registers 10

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIStateByKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_43

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xa9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 352
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_46

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_46

    .line 356
    :cond_43
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 358
    :cond_46
    :goto_46
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 359
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_66

    const-string/jumbo v0, "whiten"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    goto :goto_af

    .line 362
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz p2, :cond_af

    .line 363
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 364
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 365
    const-string v0, "five_senses"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 366
    rem-int/lit8 p2, p2, 0x65

    :cond_88
    move v5, p2

    .line 369
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-eqz p2, :cond_a5

    const-string p2, "face"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/16 v3, -0x64

    const/4 v4, 0x0

    const/16 v2, 0x64

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    goto :goto_af

    :cond_a5
    move-object v1, p1

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x64

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 376
    :cond_af
    :goto_af
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_b7
    move-object v1, p1

    .line 377
    const-string p1, "aiv2"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_c6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_4

    goto/16 :goto_d0

    .line 1715
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1717
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    .line 1715
    const-string v2, "key_mu_face_beauty_closed_reason"

    const-string v3, "closed_reason_default_value"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d0

    const-string p1, "closed_reason_user"

    .line 1719
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 1722
    const-string p1, "key_facebeauty_remember"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1723
    const-string v1, "aiv2"

    const/4 v2, 0x2

    if-eqz v0, :cond_3b

    .line 1724
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    move-result-object v0

    .line 1725
    iget v0, v0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    if-ne v0, v2, :cond_38

    goto :goto_3a

    :cond_38
    const-string v1, "custom"

    :goto_3a
    move v2, v0

    .line 1728
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1730
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 1729
    const-string v4, "face_beauty_default_feature"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    if-eqz p1, :cond_5f

    .line 1733
    const-string p1, "key_makeup_remember"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :cond_5f
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectUI(I)V

    .line 1736
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    .line 1738
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1739
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz p1, :cond_7f

    .line 1740
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    return-void

    .line 1742
    :cond_7f
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v5

    :goto_86
    if-ge v0, p1, :cond_a2

    .line 1744
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1745
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    goto :goto_a2

    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 1749
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    if-nez p1, :cond_bf

    .line 1750
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v0, "whiten"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1751
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    .line 1753
    :cond_bf
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz p1, :cond_cb

    .line 1754
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    if-eqz v0, :cond_cb

    .line 1755
    iput-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    .line 1757
    :cond_cb
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    :cond_d0
    :goto_d0
    return-void
.end method

.method private updateWhite(Ljava/lang/String;)V
    .registers 9

    .line 1022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1023
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateWhite invalid key!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1026
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "cold"

    const-string/jumbo v2, "warm"

    const-string v3, "brown"

    const-string v4, "neutral"

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_e6

    goto :goto_48

    :sswitch_25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_48

    :cond_2c
    const/4 v6, 0x3

    goto :goto_48

    :sswitch_2e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_48

    :cond_35
    const/4 v6, 0x2

    goto :goto_48

    :sswitch_37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_48

    :cond_3e
    const/4 v6, 0x1

    goto :goto_48

    :sswitch_40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v6, v5

    .line 1046
    :goto_48
    const-string/jumbo p1, "whiten"

    packed-switch v6, :pswitch_data_f8

    return-void

    .line 1028
    :pswitch_4f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getSkinDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1029
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1040
    :pswitch_73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getSkinDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1041
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1036
    :pswitch_99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getSkinDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1037
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1032
    :pswitch_bf
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getSkinDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1033
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_e6
    .sparse-switch
        0x2eaee4 -> :sswitch_40
        0x379285 -> :sswitch_37
        0x59a8136 -> :sswitch_2e
        0x6dee1dc7 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_99
        :pswitch_73
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public activityPause()V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityPause mDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p0, :cond_1f

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->onActivityPause()V

    :cond_1f
    return-void
.end method

.method public closeContrast(Z)V
    .registers 2

    .line 834
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideAutoHint()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 259
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->clearDialogList()V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 721
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->handleSkinSecondMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 724
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->handleSkinColorMenu()Z

    move-result p0

    return p0
.end method

.method public onConflictSettingChanged(Ljava/lang/String;Z)V
    .registers 9

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1535
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConflictSettingChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",blurOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",facing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_150

    goto :goto_63

    :sswitch_43
    const-string v0, "key_portrait_flare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_63

    :cond_4c
    const/4 v2, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_63

    :cond_57
    const/4 v2, 0x1

    goto :goto_63

    :sswitch_59
    const-string v0, "key_mu_stereo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_63

    :cond_62
    move v2, v1

    :goto_63
    const-string v0, "off"

    packed-switch v2, :pswitch_data_15e

    goto/16 :goto_14a

    .line 1551
    :pswitch_6a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    .line 1552
    const-string v2, "key_flare_closed_feature"

    if-eqz p2, :cond_8d

    .line 1553
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 1554
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v0, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1556
    :cond_89
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->closeFaceBeautyForConflictOn(Ljava/lang/String;)V

    goto :goto_e7

    .line 1558
    :cond_8d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getBlurValue()Ljava/lang/String;

    move-result-object p2

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_mu_face_beauty_closed_reason"

    const-string v5, "closed_reason_default_value"

    invoke-virtual {v0, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1561
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConflictSettingChanged,blurValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",faceBeautyClosedReason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1562
    const-string v3, "f0.0"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e7

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e7

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1563
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 1564
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->restoreFaceBeautyForConflictOff()V

    .line 1567
    :cond_e7
    :goto_e7
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onConflictSettingChanged] getVisibility() :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,mShouldHideBottomPanel :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_14a

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p1, :cond_14a

    .line 1569
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    if-eqz p1, :cond_11c

    .line 1570
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;->hideBottomPanelByConflict()V

    .line 1572
    :cond_11c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    return-void

    .line 1539
    :pswitch_11f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    if-eqz p2, :cond_14b

    .line 1541
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_mu_face_beauty"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1542
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConflictSettingChanged,queryValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1543
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14a

    .line 1544
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->closeFaceBeautyForConflictOn(Ljava/lang/String;)V

    :cond_14a
    :goto_14a
    return-void

    .line 1547
    :cond_14b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->restoreFaceBeautyForConflictOff()V

    return-void

    nop

    :sswitch_data_150
    .sparse-switch
        -0x37803771 -> :sswitch_59
        0x2093e60 -> :sswitch_4e
        0x452e140a -> :sswitch_43
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_11f
        :pswitch_11f
        :pswitch_6a
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 553
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 554
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 555
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const v1, 0xfa01

    const/4 v2, 0x1

    .line 557
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const v1, 0xfa03

    .line 558
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 561
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;-><init>()V

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/pmaster/ui/PMaterItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$8;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 579
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 580
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_82

    .line 581
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->inflate(Landroid/view/ViewGroup;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    .line 582
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setValueStore(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;)V

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setSkinColorMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;)V

    return-void

    .line 585
    :cond_82
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    :cond_93
    return-void
.end method

.method public openContrast()V
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    .line 827
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public previewRatioChange()V
    .registers 1

    .line 2198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    if-eqz p0, :cond_7

    .line 2199
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->previewRatioChange()V

    :cond_7
    return-void
.end method

.method public progressChanged(I)V
    .registers 8

    .line 780
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_DEFAULT_MAP:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_11f

    .line 783
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_95

    .line 784
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_120

    goto :goto_49

    :sswitch_1d
    const-string v2, "neutral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_49

    :cond_26
    const/4 v3, 0x3

    goto :goto_49

    :sswitch_28
    const-string v2, "brown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_49

    :cond_31
    const/4 v3, 0x2

    goto :goto_49

    :sswitch_33
    const-string/jumbo v2, "warm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 v3, 0x1

    goto :goto_49

    :sswitch_3f
    const-string v2, "cold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_49

    :cond_48
    move v3, v1

    :goto_49
    const-string/jumbo v0, "whiten"

    packed-switch v3, :pswitch_data_132

    goto :goto_95

    .line 786
    :pswitch_50
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 795
    :pswitch_60
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0x12f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 792
    :pswitch_72
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0xca

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 789
    :pswitch_84
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 799
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 800
    const-string v0, "key_facebeauty_remember"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "custom"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_11f

    move v0, v1

    .line 803
    :goto_ba
    sget-object v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ee

    .line 804
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    if-eqz v3, :cond_eb

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 805
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSetting(Ljava/lang/String;I)V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V

    goto :goto_ee

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 811
    :cond_ee
    :goto_ee
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 813
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-nez v0, :cond_11f

    .line 814
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_106
    if-ge v3, v2, :cond_11f

    aget-object v4, v0, v3

    .line 815
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11c

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz v4, :cond_11c

    .line 816
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v4, p0, p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->updateCurItemProgress(Ljava/lang/String;IZ)V

    return-void

    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto :goto_106

    :cond_11f
    :goto_11f
    return-void

    :sswitch_data_120
    .sparse-switch
        0x2eaee4 -> :sswitch_3f
        0x379285 -> :sswitch_33
        0x59a8136 -> :sswitch_28
        0x6dee1dc7 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_50
    .end packed-switch
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 14

    .line 601
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 604
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 607
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 609
    :cond_1a
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mPlatformConfigType:I

    const/16 v4, 0x1e

    if-ne v1, v4, :cond_25

    .line 610
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 612
    :cond_25
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    :goto_29
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "face_beauty_default_feature"

    invoke-virtual {v4, v6, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 618
    sget-object v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 619
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 621
    :cond_4b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateExpandState()V

    .line 624
    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    const-string v7, "f0.0"

    if-eqz v5, :cond_7c

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v5, :cond_7c

    .line 625
    const-string v5, "key_facebeauty_remember"

    invoke-virtual {p0, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->getRememberedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 626
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-static {v8}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    iget-boolean v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mAlgoSupportForBackCamera:Z

    if-nez v8, :cond_73

    .line 627
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v9, "key_mu_stereo"

    invoke-interface {v8, v9}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7e

    .line 629
    :cond_73
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v9, "key_mu_monomer"

    invoke-interface {v8, v9}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7e

    :cond_7c
    const/4 v5, 0x0

    move-object v8, v7

    .line 632
    :goto_7e
    const-string v9, "key_portrait_flare"

    if-eqz v5, :cond_c1

    .line 633
    invoke-interface {p1, v9}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "off"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 634
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 635
    invoke-static {v5}, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    move-result-object v1

    .line 636
    iget v1, v1, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    .line 637
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 638
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-ne v1, v2, :cond_a7

    const-string v2, "aiv2"

    goto :goto_a9

    :cond_a7
    const-string v2, "custom"

    :goto_a9
    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_b2

    .line 640
    :cond_ad
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v11}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 642
    :goto_b2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 644
    :cond_c1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectUI(I)V

    .line 645
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v9}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "on"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v2, :cond_dd

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    if-eqz v2, :cond_dd

    .line 647
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->closeFaceBeautyForConflictOn(Ljava/lang/String;)V

    .line 649
    :cond_dd
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$9;

    invoke-direct {v2, p0, p1, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$9;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    .line 655
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 656
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_152

    .line 657
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz p1, :cond_101

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    goto :goto_152

    .line 660
    :cond_101
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v2, v3

    :goto_108
    if-ge v2, p1, :cond_124

    .line 662
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    sget-object v5, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 663
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    goto :goto_124

    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto :goto_108

    .line 667
    :cond_124
    :goto_124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    if-nez p1, :cond_141

    .line 668
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v2, "whiten"

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    .line 671
    :cond_141
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz p1, :cond_14d

    .line 672
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    if-eqz v2, :cond_14d

    .line 673
    iput-object v2, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    .line 675
    :cond_14d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    .line 678
    :cond_152
    :goto_152
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSettingDevice CameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", featureId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentFeatureKey:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public setItemEnable(Z)V
    .registers 2

    .line 1786
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->setItemEnable(Z)V

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;)V
    .registers 3

    .line 771
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 772
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz p0, :cond_b

    .line 774
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_b
    return-void
.end method

.method public showOrHide(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_21

    const/4 p1, 0x0

    .line 321
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 324
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_13

    const/4 v0, 0x4

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz p1, :cond_1a

    .line 328
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideSkinSecondMenu()V

    .line 330
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_21

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    :cond_21
    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 764
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 765
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideDialog()V

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_19

    .line 842
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateValue(Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateUI(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 844
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 846
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    const/16 p1, 0x8

    .line 847
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz p1, :cond_28

    .line 849
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideSkinSecondMenu()V

    .line 851
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_2f

    .line 852
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    :cond_2f
    return-void
.end method

.method public updateLayout(II)V
    .registers 5

    .line 2204
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_15

    .line 2208
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsVipMode:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_15

    .line 2209
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 2212
    :cond_15
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    .line 2213
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    if-eqz v0, :cond_2d

    :cond_21
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    goto :goto_2d

    .line 2218
    :cond_2a
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    goto :goto_30

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 2216
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    .line 2221
    :goto_30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateItemDecoration(I)V

    .line 2223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p1, :cond_4b

    .line 2224
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_42

    iget p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4b

    .line 2225
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 2229
    :cond_4b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5a

    .line 2230
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    if-eqz p1, :cond_61

    .line 2231
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_61

    .line 2234
    :cond_5a
    iget p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateRotation(IIZ)V

    .line 2237
    :cond_61
    :goto_61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz p0, :cond_68

    .line 2238
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->setOrientation(IZ)V

    :cond_68
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    if-eqz v0, :cond_7

    .line 1775
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->updateLowLight(Z)V

    .line 1777
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    if-eqz v0, :cond_e

    .line 1778
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->updateLowLight(Z)V

    .line 1780
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_15

    .line 1781
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateLowLight(Z)V

    :cond_15
    return-void
.end method

.method public updateSwitchBar(Ljava/lang/String;)V
    .registers 2

    .line 1767
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->collapseGroupItem()V

    .line 1768
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    return-void
.end method

.method public updateUI(Ljava/lang/String;)V
    .registers 15

    .line 1649
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_1a

    return-void

    .line 1654
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "aiv2"

    const-string v2, "off"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_118

    goto :goto_46

    :sswitch_2a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_46

    :cond_31
    move v6, v4

    goto :goto_46

    :sswitch_33
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_46

    :cond_3a
    move v6, v5

    goto :goto_46

    :sswitch_3c
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_45
    move v6, v3

    :goto_46
    const/4 p1, 0x3

    packed-switch v6, :pswitch_data_126

    goto/16 :goto_113

    .line 1656
    :pswitch_4c
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 1657
    iput v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    .line 1658
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xa9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1659
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectedItemByKey()V

    .line 1661
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_6c

    .line 1662
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    :cond_6c
    return-void

    .line 1668
    :pswitch_6d
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 1669
    iput v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    .line 1670
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectedItemByKey()V

    .line 1671
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz p1, :cond_113

    .line 1672
    invoke-direct {p0, v5, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    goto/16 :goto_113

    .line 1677
    :pswitch_7d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1679
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->FEATURE_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 1680
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mSelectedPostion:I

    .line 1681
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateSelectedItemByKey()V

    .line 1682
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_bd

    const-string/jumbo v0, "whiten"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1683
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz v0, :cond_113

    .line 1684
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    goto :goto_113

    .line 1687
    :cond_bd
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1688
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v12, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1689
    const-string v0, "five_senses"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1690
    rem-int/lit8 p1, p1, 0x65

    :cond_e1
    move v11, p1

    .line 1692
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz p1, :cond_113

    .line 1693
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->notifyState(IZ)V

    .line 1695
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-eqz p1, :cond_108

    const-string p1, "face"

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 1696
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/16 v9, -0x64

    const/4 v10, 0x0

    const/16 v8, 0x64

    invoke-interface/range {v6 .. v12}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    goto :goto_113

    .line 1698
    :cond_108
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v8, 0x64

    invoke-interface/range {v6 .. v12}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 1707
    :cond_113
    :goto_113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    return-void

    nop

    :sswitch_data_118
    .sparse-switch
        -0x5069748f -> :sswitch_3c
        0x1ad6f -> :sswitch_33
        0x2db0a4 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_6d
        :pswitch_4c
    .end packed-switch
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
