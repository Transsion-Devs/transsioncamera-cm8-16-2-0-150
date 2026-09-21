.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;
    }
.end annotation


# static fields
.field private static final BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

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

.field private static final CUSTOM_KEY_ARRAY:[Ljava/lang/String;

.field private static final CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

.field private static final FACE_BEAUTY_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_STATE_SET:[I

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

.field private static final sBlackIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStates:[[I


# instance fields
.field private final TYPE_CHILD:I

.field private final TYPE_CHILD_SECONDARY:I

.field private final TYPE_FOOTER:I

.field private final TYPE_GROUP:I

.field private final TYPE_RESET:I

.field private isClickDialog:Z

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mFaceAttributeSupport:Z

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGender:Ljava/lang/String;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mLensFacing:Ljava/lang/String;

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$o8BI74B78PVVnoqMfAK9szxpoVw(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 284
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$q7vQmnZEsLcPOlfIH2cSHtNmV4s(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vuyPgtRyKpyKFyLHJm1bTlp9rvM(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceBeautySetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSeekBarUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsBlackIconMap()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sBlackIconMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 94
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyExRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sBlackIconMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 129
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->NORMAL_STATE_SET:[I

    .line 130
    sget-object v1, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    .line 145
    const-string v6, "nose"

    const-string v7, "head"

    const-string v1, "soften"

    const-string/jumbo v2, "whiten"

    const-string v3, "face"

    const-string v4, "eye"

    const-string v5, "cuttingface"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "warm"

    const-string v1, "brown"

    const-string v2, "neutral"

    const-string v3, "cold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    .line 162
    const-string v6, "20"

    const-string v7, "0"

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 163
    const-string v6, "30"

    const-string v7, "0"

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 164
    const-string v6, "50"

    const-string v7, "0"

    const-string v1, "35"

    const-string v2, "207"

    const-string v3, "40"

    const-string v4, "25"

    const-string v5, "0"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 165
    const-string v7, "50"

    const-string v8, "0"

    const-string v2, "50"

    const-string v3, "212"

    const-string v4, "60"

    const-string v5, "25"

    const-string v6, "15"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    .line 166
    const-string v7, "20"

    const-string v8, "0"

    const-string v2, "15"

    const-string v3, "212"

    const-string v4, "20"

    const-string v5, "5"

    const-string v6, "0"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    .line 167
    const-string v8, "30"

    const-string v9, "0"

    const-string v3, "25"

    const-string v4, "20"

    const-string v5, "30"

    const-string v6, "5"

    const-string v7, "10"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 169
    const-string v8, "0"

    const-string v9, "0"

    const-string v3, "8"

    const-string v4, "207"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 170
    const-string v9, "0"

    const-string v10, "0"

    const-string v4, "8"

    const-string v5, "212"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 171
    const-string v9, "0"

    const-string v10, "0"

    const-string v4, "30"

    const-string v5, "207"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    .line 172
    const-string v10, "0"

    const-string v11, "0"

    const-string v5, "35"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    .line 173
    const-string v10, "0"

    const-string v11, "0"

    const-string v5, "15"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    .line 174
    const-string v11, "0"

    const-string v12, "0"

    const-string v6, "25"

    const-string v7, "20"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 176
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 177
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 178
    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 179
    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 180
    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 181
    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 199
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 215
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    .line 233
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    .line 248
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16

    .line 342
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v7, 0x0

    .line 103
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 135
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 142
    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 144
    const-string v2, "1"

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    const v2, 0xfa01

    .line 856
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_GROUP:I

    const v2, 0xfa02

    .line 857
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD:I

    const v2, 0xfa03

    .line 858
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD_SECONDARY:I

    const v2, 0xfa04

    .line 859
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_RESET:I

    const v2, 0xfa05

    .line 860
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_FOOTER:I

    .line 343
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    .line 344
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    .line 346
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 347
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 348
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 349
    new-instance v4, Landroid/content/res/ColorStateList;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    filled-new-array {v2, v3}, [I

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    .line 350
    new-instance v3, Landroid/content/res/ColorStateList;

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    .line 351
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    .line 353
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_73
    if-ge v9, v8, :cond_169

    .line 355
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 356
    const-string/jumbo v3, "whiten"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 357
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 359
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v10, v0

    .line 362
    iput v9, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 363
    iput-boolean v7, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 364
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move v12, v7

    :goto_b4
    if-ge v12, v11, :cond_ef

    .line 366
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 367
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 368
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 369
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 371
    iput v12, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->position:I

    .line 372
    iput-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->group:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 373
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b4

    .line 375
    :cond_ef
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v0, p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;II)V

    .line 378
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_165

    .line 380
    :cond_101
    const-string v3, "reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 381
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot-IA;)V

    .line 382
    iput v9, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 383
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    .line 384
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    iput v0, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_165

    .line 387
    :cond_131
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 388
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 389
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 390
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 391
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 392
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 393
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_165
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_73

    .line 397
    :cond_169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 535
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 539
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideAutoHint()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 267
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDataStoreResetValue()V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .registers 7

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    goto :goto_9

    .line 582
    :cond_5
    instance-of v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    if-nez v1, :cond_a

    :goto_9
    return-void

    .line 585
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 586
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_expand"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 587
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 590
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void

    .line 592
    :cond_42
    iput-boolean v2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 259
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 4

    .line 272
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    const-wide/16 v0, 0x1f4

    .line 275
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    .line 278
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    :cond_1d
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    .line 283
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;-><init>()V

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 292
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 4

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 448
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 449
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDefaultValue,isSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",skinColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",gender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    const-string v3, "0"

    const-string v4, "black"

    const-string/jumbo v5, "white"

    const-string v6, "1"

    if-eqz v2, :cond_aa

    .line 451
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 452
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 453
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 454
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 456
    :cond_4e
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 458
    :cond_52
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 459
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 460
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 462
    :cond_62
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 465
    :cond_66
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 466
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 468
    :cond_70
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 471
    :cond_74
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 472
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 473
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 474
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 476
    :cond_89
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 478
    :cond_8c
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 479
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 480
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 482
    :cond_9b
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 485
    :cond_9e
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 486
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 488
    :cond_a7
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 493
    :cond_aa
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c5

    .line 494
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 495
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 496
    :cond_b9
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 497
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 499
    :cond_c2
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 501
    :cond_c5
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 502
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d2

    goto :goto_dd

    .line 504
    :cond_d2
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 505
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 507
    :cond_db
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 513
    :cond_dd
    :goto_dd
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "soften"

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateDefaultValue,softenInitValue:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    const-string/jumbo p1, "updateDefaultValue,whiten:10,soften:15,face:20,eye:15,cutFace:0,nose:30,head:0"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    .line 517
    :goto_109
    sget-object p3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    array-length v1, p3

    if-ge p2, v1, :cond_170

    .line 518
    aget-object p3, p3, p2

    .line 519
    const-string/jumbo v1, "whiten"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 520
    aget-object v1, v0, p2

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    aget-object v2, v0, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x65

    .line 522
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v5, v4

    move v6, p1

    :goto_12b
    if-ge v6, v5, :cond_160

    aget-object v7, v4, v6

    .line 523
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 524
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_15d

    .line 526
    :cond_152
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v3, v9, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_15d
    add-int/lit8 v6, v6, 0x1

    goto :goto_12b

    .line 530
    :cond_160
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    aget-object v2, v0, p2

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p3, v2, v4, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_109

    :cond_170
    return-void
.end method

.method private updateExpandState()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 578
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSeekBarUI()V
    .registers 13

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "aiv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_19

    .line 795
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 797
    :goto_19
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_59

    .line 798
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    const/4 v1, 0x2

    .line 801
    invoke-interface {v0, v1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 802
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v7, 0x64

    invoke-interface/range {v5 .. v11}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 805
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    const/4 v1, 0x3

    .line 807
    invoke-interface {v0, v1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 812
    :cond_6f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    .line 813
    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_7b
    return-void
.end method

.method private updateSelectedItemByKey()V
    .registers 1

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .registers 7

    .line 845
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "face_beauty_default_feature"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 847
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 849
    :cond_2d
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiv2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 852
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateState()V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 432
    :goto_2f
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .registers 14

    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    .line 310
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_12

    .line 312
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 314
    :goto_12
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    .line 315
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    .line 316
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v10, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 317
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p2, :cond_75

    .line 318
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    if-nez v1, :cond_3e

    .line 319
    invoke-interface {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 321
    :cond_3e
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p2, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 322
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x64

    move-object v5, p1

    invoke-interface/range {v4 .. v10}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    :cond_4e
    move-object v5, p1

    .line 324
    const-string p1, "aiv2"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_75

    .line 326
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    if-nez p2, :cond_63

    const/4 p2, 0x3

    .line 327
    invoke-interface {p1, p2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 329
    :cond_63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 333
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_75

    .line 334
    invoke-interface {p1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_75
    return-void
.end method

.method private updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .registers 9

    if-eqz p1, :cond_ec

    .line 822
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    .line 823
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "cold"

    const-string/jumbo v2, "warm"

    const-string v3, "brown"

    const-string v4, "neutral"

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_ee

    goto :goto_3f

    :sswitch_1c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_3f

    :cond_23
    const/4 v6, 0x3

    goto :goto_3f

    :sswitch_25
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_3f

    :cond_2c
    const/4 v6, 0x2

    goto :goto_3f

    :sswitch_2e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_3f

    :cond_35
    const/4 v6, 0x1

    goto :goto_3f

    :sswitch_37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v6, v5

    :goto_3f
    const-string/jumbo p1, "whiten"

    packed-switch v6, :pswitch_data_100

    goto/16 :goto_ec

    .line 825
    :pswitch_47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 837
    :pswitch_6f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 838
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 833
    :pswitch_99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 834
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 829
    :pswitch_c3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_ec
    :goto_ec
    return-void

    nop

    :sswitch_data_ee
    .sparse-switch
        0x2eaee4 -> :sswitch_37
        0x379285 -> :sswitch_2e
        0x59a8136 -> :sswitch_25
        0x6dee1dc7 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_99
        :pswitch_6f
        :pswitch_47
    .end packed-switch
.end method


# virtual methods
.method public closeContrast(Z)V
    .registers 2

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 438
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 439
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 440
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 441
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public openContrast()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    .line 645
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public progressChanged(I)V
    .registers 7

    .line 619
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 622
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_ae

    goto :goto_48

    :sswitch_1c
    const-string v2, "neutral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_48

    :cond_25
    const/4 v3, 0x3

    goto :goto_48

    :sswitch_27
    const-string v2, "brown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_48

    :cond_30
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_32
    const-string/jumbo v2, "warm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v3, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v2, "cold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    const-string/jumbo v0, "whiten"

    packed-switch v3, :pswitch_data_c0

    goto :goto_94

    .line 625
    :pswitch_4f
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_94

    .line 634
    :pswitch_5f
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0x12f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_94

    .line 631
    :pswitch_71
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0xca

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_94

    .line 628
    :pswitch_83
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 638
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_ae
    .sparse-switch
        0x2eaee4 -> :sswitch_3e
        0x379285 -> :sswitch_32
        0x59a8136 -> :sswitch_27
        0x6dee1dc7 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_4f
    .end packed-switch
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 7

    .line 544
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingDevice+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 545
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 546
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 547
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSettingDevice,cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",facing:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 550
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soften"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 553
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_59
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_beauty_default_feature"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 557
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 560
    :cond_88
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v2, "off"

    const/4 v3, 0x0

    if-ne v1, v2, :cond_95

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_9b

    .line 563
    :cond_95
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 565
    :goto_9b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateExpandState()V

    .line 566
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSelectedItemByKey()V

    .line 567
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 572
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 573
    const-string p0, "setSettingDevice-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 1137
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 613
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 614
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 600
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 601
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 602
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 603
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 604
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateDataStoreValue()V
    .registers 4

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 660
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 661
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    .line 662
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/16 p1, 0x8

    .line 664
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateFeatureUI(ZZ)V
    .registers 3

    .line 0
    return-void
.end method

.method updateLowLight(Z)V
    .registers 2

    .line 1141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
