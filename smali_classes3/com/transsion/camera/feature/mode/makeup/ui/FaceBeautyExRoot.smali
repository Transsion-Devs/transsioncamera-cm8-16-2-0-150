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

.field private mGoFragment:Z

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

    .line 297
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

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

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

    .line 99
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyExRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 110
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sBlackIconMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 135
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->NORMAL_STATE_SET:[I

    .line 136
    sget-object v1, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    .line 151
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

    .line 160
    const-string/jumbo v0, "warm"

    const-string v1, "brown"

    const-string v2, "neutral"

    const-string v3, "cold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    .line 168
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

    .line 169
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

    .line 170
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

    .line 171
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

    .line 172
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

    .line 173
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

    .line 175
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

    .line 176
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

    .line 177
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

    .line 178
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

    .line 179
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

    .line 180
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

    .line 182
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 183
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 184
    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 185
    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 186
    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 187
    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 205
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 221
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    .line 254
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16

    .line 378
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v7, 0x0

    .line 108
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 109
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGoFragment:Z

    .line 141
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 148
    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 150
    const-string v2, "1"

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    const v2, 0xfa01

    .line 892
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_GROUP:I

    const v2, 0xfa02

    .line 893
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD:I

    const v2, 0xfa03

    .line 894
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD_SECONDARY:I

    const v2, 0xfa04

    .line 895
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_RESET:I

    const v2, 0xfa05

    .line 896
    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_FOOTER:I

    .line 379
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    .line 380
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    .line 382
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 383
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 384
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 385
    new-instance v4, Landroid/content/res/ColorStateList;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    filled-new-array {v2, v3}, [I

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    .line 386
    new-instance v3, Landroid/content/res/ColorStateList;

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    .line 387
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    .line 389
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_75
    if-ge v9, v8, :cond_16b

    .line 391
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 392
    const-string/jumbo v3, "whiten"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 393
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 395
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v10, v0

    .line 398
    iput v9, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 399
    iput-boolean v7, v10, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 400
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move v12, v7

    :goto_b6
    if-ge v12, v11, :cond_f1

    .line 402
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 403
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 404
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 405
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 406
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 407
    iput v12, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->position:I

    .line 408
    iput-object v10, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->group:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 409
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b6

    .line 411
    :cond_f1
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v0, p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;II)V

    .line 414
    invoke-virtual {v10, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_167

    .line 416
    :cond_103
    const-string v3, "reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 417
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot-IA;)V

    .line 418
    iput v9, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    .line 420
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    iput v0, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_167

    .line 423
    :cond_133
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 424
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 425
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 426
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 427
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 428
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 429
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_167
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_75

    .line 433
    :cond_16b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 571
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 575
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideAutoHint()V
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 273
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDataStoreResetValue()V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .registers 7

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    goto :goto_9

    .line 618
    :cond_5
    instance-of v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    if-nez v1, :cond_a

    :goto_9
    return-void

    .line 621
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 622
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

    .line 623
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void

    .line 628
    :cond_42
    iput-boolean v2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 265
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 4

    .line 278
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    goto :goto_2a

    :cond_5
    const-wide/16 v0, 0x1f4

    .line 281
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2a

    .line 284
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog,mGoFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGoFragment:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGoFragment:Z

    if-eqz v0, :cond_2b

    :goto_2a
    return-void

    .line 288
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_34

    const/16 v1, 0x87

    .line 289
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 291
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 294
    :cond_43
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    .line 296
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;-><init>()V

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 305
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDialogWindowBg(Lcom/transsion/widgetslib/dialog/PromptDialog;)V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .registers 4

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 484
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 485
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

    .line 486
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    const-string v3, "0"

    const-string v4, "black"

    const-string/jumbo v5, "white"

    const-string v6, "1"

    if-eqz v2, :cond_aa

    .line 487
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 488
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 489
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 490
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 492
    :cond_4e
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 494
    :cond_52
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 495
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 496
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 498
    :cond_62
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 501
    :cond_66
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 502
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 504
    :cond_70
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_dd

    .line 507
    :cond_74
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 508
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 509
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 510
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 512
    :cond_89
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 514
    :cond_8c
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 515
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 516
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 518
    :cond_9b
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 521
    :cond_9e
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 522
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_dd

    .line 524
    :cond_a7
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_dd

    .line 529
    :cond_aa
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c5

    .line 530
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 531
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 532
    :cond_b9
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 533
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 535
    :cond_c2
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 537
    :cond_c5
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 538
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d2

    goto :goto_dd

    .line 540
    :cond_d2
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 541
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_dd

    .line 543
    :cond_db
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 549
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

    .line 550
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateDefaultValue,softenInitValue:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 551
    const-string/jumbo p1, "updateDefaultValue,whiten:10,soften:15,face:20,eye:15,cutFace:0,nose:30,head:0"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    .line 553
    :goto_109
    sget-object p3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    array-length v1, p3

    if-ge p2, v1, :cond_170

    .line 554
    aget-object p3, p3, p2

    .line 555
    const-string/jumbo v1, "whiten"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 556
    aget-object v1, v0, p2

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    aget-object v2, v0, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x65

    .line 558
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v5, v4

    move v6, p1

    :goto_12b
    if-ge v6, v5, :cond_160

    aget-object v7, v4, v6

    .line 559
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 560
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

    .line 562
    :cond_152
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v3, v9, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_15d
    add-int/lit8 v6, v6, 0x1

    goto :goto_12b

    .line 566
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

.method private updateDialogWindowBg(Lcom/transsion/widgetslib/dialog/PromptDialog;)V
    .registers 3

    .line 318
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_23

    .line 321
    :cond_d
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 322
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->bg_dialog_night_round_corner:I

    goto :goto_20

    .line 323
    :cond_1e
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->bg_dialog_round_corner:I

    .line 321
    :goto_20
    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method private updateExpandState()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 614
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSeekBarUI()V
    .registers 13

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "aiv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_19

    .line 831
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 833
    :goto_19
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_59

    .line 834
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    const/4 v1, 0x2

    .line 837
    invoke-interface {v0, v1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 838
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v7, 0x64

    invoke-interface/range {v5 .. v11}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 841
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 842
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    const/4 v1, 0x3

    .line 843
    invoke-interface {v0, v1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 848
    :cond_6f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_7b

    .line 849
    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_7b
    return-void
.end method

.method private updateSelectedItemByKey()V
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .registers 7

    .line 881
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    .line 882
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

    .line 883
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 884
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 885
    :cond_2d
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiv2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 886
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 888
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private updateState()V
    .registers 5

    .line 462
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

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 465
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 468
    :goto_2f
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .registers 14

    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    .line 346
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_12

    .line 348
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 350
    :goto_12
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    .line 351
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    .line 352
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v10, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 353
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p2, :cond_75

    .line 354
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    if-nez v1, :cond_3e

    .line 355
    invoke-interface {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 357
    :cond_3e
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p2, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 358
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x64

    move-object v5, p1

    invoke-interface/range {v4 .. v10}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    :cond_4e
    move-object v5, p1

    .line 360
    const-string p1, "aiv2"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_75

    .line 362
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    if-nez p2, :cond_63

    const/4 p2, 0x3

    .line 363
    invoke-interface {p1, p2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 365
    :cond_63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    return-void

    .line 369
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_75

    .line 370
    invoke-interface {p1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_75
    return-void
.end method

.method private updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .registers 9

    if-eqz p1, :cond_ec

    .line 858
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    .line 859
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

    .line 861
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

    .line 862
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 873
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

    .line 874
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 869
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

    .line 870
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 865
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

    .line 866
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

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 474
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 475
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 476
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 477
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public openContrast()V
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    .line 681
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public progressChanged(I)V
    .registers 7

    .line 655
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 658
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 659
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

    .line 661
    :pswitch_4f
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_94

    .line 670
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

    .line 667
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

    .line 664
    :pswitch_83
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
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

    .line 675
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

    .line 580
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingDevice+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 582
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 583
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v2

    .line 585
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

    .line 586
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    .line 587
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soften"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 589
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
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

    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 593
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 594
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 596
    :cond_88
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v2, "off"

    const/4 v3, 0x0

    if-ne v1, v2, :cond_95

    .line 597
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_9b

    .line 599
    :cond_95
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 601
    :goto_9b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateExpandState()V

    .line 602
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSelectedItemByKey()V

    .line 603
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$9;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$9;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 608
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 609
    const-string p0, "setSettingDevice-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 1173
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setGoFragmentFlag(Z)V
    .registers 2

    .line 333
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGoFragment:Z

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 650
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 636
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 638
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 639
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 640
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateDataStoreValue()V
    .registers 4

    .line 337
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

    .line 696
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 697
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    .line 698
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/16 p1, 0x8

    .line 700
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

    .line 1177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateRecycleViewStatus(Z)V
    .registers 5

    .line 1181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_17

    .line 1182
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    .line 1184
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1185
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
