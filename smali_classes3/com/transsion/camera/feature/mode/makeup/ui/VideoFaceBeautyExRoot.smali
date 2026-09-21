.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$VideoFaceSkinSecondMenuImpl;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;
    }
.end annotation


# static fields
.field private static final CONFIRM_FRAGMENT_TAG:Ljava/lang/String; = "video_facebeauty"

.field private static final CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

.field private static final FEATURE_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_STATE_SET:[I

.field private static final SKIN_COLOR_CARD_SELECT_PROGRESS:I = 0x64

.field private static final SKIN_COLOR_CARD_UNSELECT_PROGRESS:I

.field private static final SKIN_COLOR_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final TYPE_CHILD:I

.field private final TYPE_CHILD_SECONDARY:I

.field private final TYPE_FOOTER:I

.field private final TYPE_GROUP:I

.field private final TYPE_RESET:I

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mBlackIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFeatureKey:Ljava/lang/String;

.field private mCurrentSkinColorFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private final mFaceBeautyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mItdV2Support:Z

.field private mItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceItemDecoration;

.field private mItemViewEnabled:Z

.field private mNeedShowAIHint:Z

.field private mOrientation:I

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

.field private mScreenFormType:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

.field private mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

.field private final mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

.field private final mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

.field private mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$2g3JQ3sPEuDJ1opEyKeIfOckD8Y(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$updateDefaultValue$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OMZ5FEOZd_ANPw9q6m0eetCSrI4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$updateDefaultValue$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VHdtY4ySgYDZI8X1idoJyQWkBaM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$updateExpandState$3(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypNvzBEEHUOpI-0ojKku8uok5U4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$initDefaultMap$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlackIconMap(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mBlackIconMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultMap(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceBeautySetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/SettingBase;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItdV2Support(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemViewEnabled(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedShowAIHint(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRecyclerViewAnim(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataStoreResetValue(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateDataStoreResetValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceBeautyItemLayout(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateFaceBeautyItemLayout(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSeekBarUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSetting(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSkinColorCardValue(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSkinColorItemProgress(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSkinColorItemProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smparseValue(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->parseValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 110
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyExRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 131
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->NORMAL_STATE_SET:[I

    .line 132
    sget-object v1, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->sStates:[[I

    .line 149
    const-string/jumbo v0, "warm"

    const-string v1, "brown"

    const-string v2, "neutral"

    const-string v3, "cold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 175
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    .line 195
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16

    .line 379
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x1

    .line 122
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    const/4 v7, 0x0

    .line 129
    iput v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    .line 136
    new-instance v3, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 142
    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 146
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    .line 147
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 638
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    const v2, 0xfa01

    .line 1279
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_GROUP:I

    const v2, 0xfa02

    .line 1280
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_CHILD:I

    const v2, 0xfa03

    .line 1281
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_CHILD_SECONDARY:I

    const v2, 0xfa04

    .line 1282
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_RESET:I

    const v2, 0xfa05

    .line 1283
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_FOOTER:I

    .line 1760
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$9;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    .line 1777
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    .line 381
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    .line 382
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    .line 428
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mBlackIconMap:Ljava/util/Map;

    .line 465
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 466
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 467
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 468
    new-instance v5, Landroid/content/res/ColorStateList;

    sget-object v6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->sStates:[[I

    filled-new-array {v3, v4}, [I

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    .line 469
    new-instance v4, Landroid/content/res/ColorStateList;

    filled-new-array {v3, v0}, [I

    move-result-object v0

    invoke-direct {v4, v6, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    .line 470
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    .line 472
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_a6
    if-ge v9, v8, :cond_219

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 475
    const-string/jumbo v10, "whiten"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 478
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 479
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v10, v0

    .line 482
    iput v9, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 483
    iput-boolean v7, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 484
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move v12, v7

    :goto_f1
    if-ge v12, v11, :cond_12c

    .line 486
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 487
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 488
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 489
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 490
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 491
    iput v12, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->position:I

    .line 492
    iput-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->group:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 493
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_f1

    .line 495
    :cond_12c
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v0, p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;II)V

    .line 498
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto/16 :goto_215

    .line 501
    :cond_13f
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 502
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 503
    iput-boolean v7, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 504
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_15c

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    iput-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->selectKey:Ljava/lang/String;

    goto :goto_19a

    .line 507
    :cond_15c
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v7

    :goto_163
    if-ge v2, v0, :cond_19a

    .line 509
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 510
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 511
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v6, v6, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 512
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    new-instance v10, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;

    invoke-direct {v10, v4, v5, v6, v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    invoke-virtual {v3, v10}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_163

    .line 517
    :cond_19a
    :goto_19a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_215

    .line 519
    :cond_1a2
    const-string v0, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 520
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot-IA;)V

    .line 521
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 522
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    .line 523
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    iput v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    .line 524
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_215

    .line 526
    :cond_1d6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v5, v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 530
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 531
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 532
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 533
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    :goto_215
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a6

    .line 543
    :cond_219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 631
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 635
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleSkinColorMenu()Z
    .registers 2

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->showing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    .line 743
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateRecyclerViewVisibility()V

    .line 744
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->notifyRecyclerViewAdapter()V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private handleSkinSecondMenu()Z
    .registers 4

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->hideSkinSecondMenu()V

    .line 733
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateRecyclerViewVisibility()V

    .line 734
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->notifyRecyclerViewAdapter()V

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method private initDefaultMap(Ljava/lang/String;)V
    .registers 4

    .line 641
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V

    .line 642
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$initDefaultMap$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->queryDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$updateDefaultValue$0(Ljava/lang/String;)V
    .registers 5

    .line 615
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    if-nez v0, :cond_11

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ITDV2LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 618
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$updateDefaultValue$1(Ljava/lang/String;)V
    .registers 5

    .line 621
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    if-nez v0, :cond_11

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ITDV2LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 624
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$updateExpandState$3(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .registers 7

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_5

    goto :goto_9

    .line 706
    :cond_5
    instance-of v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-nez v1, :cond_a

    :goto_9
    return-void

    .line 709
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 710
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_expand"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 711
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void

    .line 716
    :cond_42
    iput-boolean v2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private notifyRecyclerViewAdapter()V
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    if-eqz p0, :cond_7

    .line 760
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private static parseValue(Ljava/lang/String;)I
    .registers 6

    .line 1173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "parseValue invalid valueStr: "

    if-eqz v0, :cond_1e

    .line 1174
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1179
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_23

    return p0

    :catch_23
    move-exception v0

    .line 1181
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private queryDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 646
    const-string/jumbo v0, "whiten"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_1a

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string/jumbo p1, "video"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 649
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :cond_1a
    invoke-static {p1, v1, p2}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 214
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    .line 230
    :cond_b
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_10

    goto :goto_1a

    .line 233
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_1a
    return-void

    .line 234
    :cond_1b
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 259
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    if-eqz v1, :cond_36

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    :cond_36
    const/4 v1, 0x0

    .line 262
    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    :cond_39
    const/4 v1, 0x1

    .line 264
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "video_facebeauty"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1883
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    .line 1885
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 1886
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 1889
    new-array v0, v0, [F

    fill-array-data v0, :array_40

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1890
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1891
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1892
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1893
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

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

    .line 1150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1151
    const-string v1, "five_senses"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1152
    rem-int/lit8 v0, v0, 0x65

    .line 1155
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 2

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateDefaultValue()V

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState(Z)V

    return-void
.end method

.method private updateDefaultValue()V
    .registers 5

    .line 614
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 620
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "face_beauty_whiten_skin_card"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateExpandState()V
    .registers 3

    .line 698
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 701
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    .line 702
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFaceBeautyItemLayout(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V
    .registers 9

    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1233
    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3a

    .line 1234
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_feature_width_expand:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1235
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_feature_height_expand:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1236
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    if-ne p0, v5, :cond_2d

    .line 1237
    sget p0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_feature_margin_top_expand:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_33

    .line 1238
    :cond_2d
    sget p0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_feature_margin_top_hover:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1236
    :goto_33
    invoke-virtual {v0, v4, v4, p0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1239
    invoke-virtual {p2, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_77

    :cond_3a
    const/4 v5, 0x7

    if-ne v2, v5, :cond_51

    .line 1241
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    const/16 v1, 0x10e

    if-eq p0, v3, :cond_4d

    if-eq p0, v1, :cond_49

    .line 1251
    invoke-virtual {p2, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_77

    .line 1246
    :cond_49
    invoke-virtual {p2, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_77

    .line 1243
    :cond_4d
    invoke-virtual {p2, v1, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_77

    .line 1255
    :cond_51
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_mu_feature_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1256
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_mu_feature_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1257
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1258
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_74

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    if-nez v1, :cond_74

    .line 1259
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    invoke-virtual {p2, p0, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_77

    .line 1261
    :cond_74
    invoke-virtual {p2, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    .line 1264
    :goto_77
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateItemProgress(Ljava/lang/String;IZ)V
    .registers 5

    .line 1128
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_43

    :cond_7
    const/4 v0, 0x2

    if-eq p2, v0, :cond_44

    if-nez p2, :cond_d

    goto :goto_44

    .line 1136
    :cond_d
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    .line 1137
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_38

    const-string/jumbo v0, "whiten"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1138
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSkinColorCardItem()V

    goto :goto_17

    .line 1140
    :cond_38
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateCustomItemProgress(Ljava/lang/String;)V

    goto :goto_17

    :cond_3c
    if-eqz p3, :cond_43

    .line 1145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_43
    :goto_43
    return-void

    .line 1132
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateRecyclerViewVisibility()V
    .registers 2

    .line 751
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showRecyclerViewAnim(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 753
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method private updateRotation(IIZ)V
    .registers 7

    .line 309
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2e

    :cond_7
    const/4 v0, 0x0

    .line 313
    :goto_8
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    if-nez v1, :cond_21

    goto :goto_2b

    .line 319
    :cond_21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_28

    goto :goto_2b

    .line 323
    :cond_28
    invoke-virtual {v1, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;->updateRotation(IIZ)V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateSeekBarUI()V
    .registers 11

    .line 1091
    const-string v0, "aiv2"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 1092
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xa9

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1093
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    if-eqz v0, :cond_27

    .line 1094
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    .line 1095
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_27

    .line 1098
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 1100
    :cond_27
    :goto_27
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_aa

    .line 1101
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "whiten"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_b1

    .line 1103
    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    return-void

    .line 1106
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v9, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1108
    const-string v3, "five_senses"

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1109
    rem-int/lit8 v0, v0, 0x65

    :cond_76
    move v8, v0

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_b1

    const/4 v3, 0x2

    .line 1112
    invoke-interface {v0, v3, v1, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 1113
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-eqz v0, :cond_9e

    const-string v0, "face"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1114
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/16 v6, -0x64

    const/4 v7, 0x0

    const/16 v5, 0x64

    invoke-interface/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 1116
    :cond_9e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x64

    invoke-interface/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 1121
    :cond_aa
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_b1

    .line 1122
    invoke-interface {p0, v2, v1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    :cond_b1
    return-void
.end method

.method private updateSelectedItemByKey()V
    .registers 1

    .line 774
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSetting(Ljava/lang/String;I)V
    .registers 7

    .line 1268
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateWhite(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1270
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 1272
    :cond_25
    const-string p2, "aiv2"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 1275
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateSkinColorCardItem()V
    .registers 6

    .line 1159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "whiten"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_beauty_whiten_skin_card"

    invoke-virtual {v0, v4, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->parseValue(Ljava/lang/String;)I

    move-result v0

    .line 1161
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz v1, :cond_24

    .line 1162
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setSkinColor(I)V

    .line 1164
    :cond_24
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->skinColorCardSelected(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    const/16 v0, 0x64

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 1165
    :goto_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateSkinColorCardValue(I)V
    .registers 4

    .line 1819
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSkinColorSetting(I)V

    .line 1820
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSeekBarUI()V

    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 1821
    const-string/jumbo v1, "whiten"

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateSkinColorItemProgress()V
    .registers 9

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_65

    .line 1191
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_65

    .line 1193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;

    if-nez v3, :cond_19

    goto :goto_62

    .line 1197
    :cond_19
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1198
    const-string v5, "five_senses"

    iget-object v6, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->key:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1199
    rem-int/lit8 v4, v4, 0x65

    .line 1201
    :cond_3f
    iput v4, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->progress:I

    .line 1202
    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSkinColorItemProgress FeatureKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->key:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", progress:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_65
    :goto_65
    return-void
.end method

.method private updateSkinColorSetting(I)V
    .registers 6

    .line 1825
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face_beauty_whiten_skin_card"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1826
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face_beauty_default_feature"

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1827
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateState()V
    .registers 2

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState(Z)V

    return-void
.end method

.method private updateState(Z)V
    .registers 6

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 579
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 582
    :goto_2f
    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateUIStateByKey(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;IZ)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_20

    .line 334
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    .line 335
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v4, 0xa9

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 336
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    if-eqz v3, :cond_23

    .line 337
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    .line 338
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_23

    .line 341
    :cond_20
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 343
    :cond_23
    :goto_23
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 344
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v3, :cond_d3

    sget-boolean v3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-nez v3, :cond_d3

    .line 345
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v3, :cond_55

    const-string/jumbo v3, "whiten"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 p3, 0x3

    invoke-interface {p1, p3, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    return-void

    .line 351
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p2, v2, v1, p3, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 352
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 353
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    .line 354
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, v6, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 355
    const-string p3, "five_senses"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_82

    .line 356
    rem-int/lit8 p2, p2, 0x65

    :cond_82
    move v5, p2

    .line 358
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    if-eqz p2, :cond_9f

    const-string p2, "face"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v3, -0x64

    const/4 v4, 0x0

    const/16 v2, 0x64

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    :cond_9f
    move-object v1, p1

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x64

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 365
    :cond_aa
    const-string p2, "aiv2"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_d3

    sget-boolean p2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-nez p2, :cond_d3

    .line 367
    invoke-interface {p1, v0, v1, p3, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 371
    :cond_c3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_d3

    sget-boolean p2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-nez p2, :cond_d3

    .line 372
    invoke-interface {p1, v0, v1, p3, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZZZ)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_d3
    return-void
.end method

.method private updateWhite(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_3f

    .line 1210
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "cold"

    const-string/jumbo v2, "warm"

    const-string v3, "brown"

    const-string v4, "neutral"

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_e6

    goto :goto_39

    :sswitch_16
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_39

    :cond_1d
    const/4 v6, 0x3

    goto :goto_39

    :sswitch_1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_39

    :cond_26
    const/4 v6, 0x2

    goto :goto_39

    :sswitch_28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_39

    :cond_2f
    const/4 v6, 0x1

    goto :goto_39

    :sswitch_31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move v6, v5

    :goto_39
    const-string/jumbo p1, "whiten"

    packed-switch v6, :pswitch_data_f8

    :goto_3f
    return-void

    .line 1212
    :pswitch_40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1213
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1224
    :pswitch_68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1225
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1220
    :pswitch_92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1221
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1216
    :pswitch_bc
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDefaultMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1217
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :sswitch_data_e6
    .sparse-switch
        0x2eaee4 -> :sswitch_31
        0x379285 -> :sswitch_28
        0x59a8136 -> :sswitch_1f
        0x6dee1dc7 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_92
        :pswitch_68
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public closeContrast(Z)V
    .registers 2

    .line 831
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p1, :cond_9

    .line 832
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideAutoHint()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_f

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mNeedShowAIHint:Z

    if-nez p0, :cond_f

    .line 222
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_f
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 723
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->handleSkinSecondMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 726
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->handleSkinColorMenu()Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 588
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 589
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const v1, 0xfa01

    const/4 v2, 0x1

    .line 591
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const v1, 0xfa04

    .line 592
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 595
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 600
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 601
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemDecoration:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceItemDecoration;

    .line 602
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 603
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_74

    .line 604
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->inflate(Landroid/view/ViewGroup;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    .line 605
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setValueStore(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setSkinColorMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;)V

    return-void

    .line 608
    :cond_74
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    :cond_85
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1078
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1081
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openContrast()V
    .registers 2

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz v0, :cond_11

    .line 824
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public progressChanged(I)V
    .registers 8

    .line 785
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_e4

    .line 788
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_95

    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_e6

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

    packed-switch v3, :pswitch_data_f8

    goto :goto_95

    .line 791
    :pswitch_50
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 800
    :pswitch_60
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0x12f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 797
    :pswitch_72
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0xca

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_95

    .line 794
    :pswitch_84
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 804
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string v2, "custom"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->updateSelectItemProgress(Ljava/lang/String;IZ)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 810
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-nez v0, :cond_e4

    .line 811
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_cb
    if-ge v3, v2, :cond_e4

    aget-object v4, v0, v3

    .line 812
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    if-eqz v4, :cond_e1

    .line 813
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v4, p0, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->updateCurItemProgress(Ljava/lang/String;IZ)V

    return-void

    :cond_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    :cond_e4
    :goto_e4
    return-void

    nop

    :sswitch_data_e6
    .sparse-switch
        0x2eaee4 -> :sswitch_3f
        0x379285 -> :sswitch_33
        0x59a8136 -> :sswitch_28
        0x6dee1dc7 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_50
    .end packed-switch
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 8

    .line 656
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/common/setting/SettingBase;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 657
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 658
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 660
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->initDefaultMap(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "face_beauty_default_feature"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSettingDevice,cameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",facing:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",id:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 663
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 664
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 665
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 667
    :cond_6b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateExpandState()V

    .line 668
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSelectedItemByKey()V

    .line 669
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 674
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 676
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 677
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_94

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    goto :goto_c8

    .line 680
    :cond_94
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v2, v1

    :goto_9b
    if-ge v2, p1, :cond_b7

    .line 682
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    goto :goto_b7

    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 687
    :cond_b7
    :goto_b7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorGroup:Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-eqz p1, :cond_c3

    .line 688
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentSkinColorFeatureKey:Ljava/lang/String;

    if-eqz v2, :cond_c3

    .line 689
    iput-object v2, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->selectKey:Ljava/lang/String;

    .line 691
    :cond_c3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateItemProgress(Ljava/lang/String;IZ)V

    .line 694
    :cond_c8
    :goto_c8
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSettingDevice- featureId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentFeatureKey:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1086
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1087
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 294
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    .line 295
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    if-eqz v0, :cond_18

    .line 297
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_18

    .line 300
    :cond_11
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOrientation:I

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateRotation(IIZ)V

    .line 303
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    if-eqz p0, :cond_1f

    .line 304
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->setOrientation(IZ)V

    :cond_1f
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 779
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 780
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public showOrHide(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_21

    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 281
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_13

    const/4 v0, 0x4

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    if-eqz p1, :cond_1a

    .line 285
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->hideSkinSecondMenu()V

    .line 287
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_21

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    :cond_21
    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 767
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 768
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 769
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 770
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 839
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState()V

    const/4 p1, 0x0

    .line 840
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 842
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    if-eqz p1, :cond_16

    .line 844
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->hideSkinSecondMenu()V

    .line 846
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_1d

    .line 847
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    :cond_1d
    return-void
.end method

.method public updateFeatureUI(ZZ)V
    .registers 3

    .line 854
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateFeatureUI(Z)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    goto :goto_15

    .line 875
    :cond_4
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    .line 876
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 877
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    :cond_15
    :goto_15
    return-void
.end method

.method updateLowLight(Z)V
    .registers 3

    .line 1749
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    if-eqz v0, :cond_7

    .line 1750
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->updateLowLight(Z)V

    .line 1752
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinSecondMenu:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    if-eqz v0, :cond_e

    .line 1753
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->updateLowLight(Z)V

    .line 1755
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mSkinColorMenu:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    if-eqz p0, :cond_15

    .line 1756
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateLowLight(Z)V

    :cond_15
    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 1360
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_d

    .line 1361
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mScreenFormType:I

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    if-eqz p0, :cond_d

    .line 1363
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateVideoFaceBeautyUI(ZZ)V
    .registers 3

    if-eqz p1, :cond_a

    .line 859
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState(Z)V

    const/4 p1, 0x0

    .line 860
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 862
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
