.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACK_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final FILER_VALUE_POSTCARD:Ljava/lang/String; = "8"

.field private static final FILTER_ID_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_VALUE_BW:Ljava/lang/String; = "9"

.field private static final FILTER_VALUE_CLASSIC:Ljava/lang/String; = "2"

.field private static final FILTER_VALUE_CREAM:Ljava/lang/String; = "3"

.field private static final FILTER_VALUE_DELHI:Ljava/lang/String; = "11"

.field private static final FILTER_VALUE_DIWALI:Ljava/lang/String; = "13"

.field private static final FILTER_VALUE_DUSK:Ljava/lang/String; = "4"

.field private static final FILTER_VALUE_GALA:Ljava/lang/String; = "16"

.field private static final FILTER_VALUE_GRAFFITI:Ljava/lang/String; = "7"

.field private static final FILTER_VALUE_HOLI:Ljava/lang/String; = "12"

.field private static final FILTER_VALUE_LIGHT:Ljava/lang/String; = "6"

.field private static final FILTER_VALUE_MORNING:Ljava/lang/String; = "5"

.field private static final FILTER_VALUE_ORIGINAL:Ljava/lang/String; = "0"

.field private static final FILTER_VALUE_SMOOTHNESS:Ljava/lang/String; = "10"

.field private static final FILTER_VALUE_STRONG:Ljava/lang/String; = "1"

.field private static final FILTER_VALUE_TASTY:Ljava/lang/String; = "14"

.field private static final FILTER_VALUE_UNITY:Ljava/lang/String; = "15"

.field private static final FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final INDIA_AREA_CODE:Ljava/lang/String; = "IN"

.field private static final INDIA_FILTER_DEBUG:Ljava/lang/String; = "debug.camera.india.filter"

.field private static final PREVIEW_CAPTURE_FILTER_ID_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_HOLIDAY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_ID_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_INDIA_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_SUPPORT_LIST_VALUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dIkWw860TrS6iPpql5QBkxIQfIY(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z
    .registers 2

    .line 235
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 20

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Landroid/util/SparseArray;

    const/16 v0, 0xa

    .line 64
    new-array v1, v0, [I

    fill-array-data v1, :array_1bc

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_INDIA_LIST:Ljava/util/List;

    .line 85
    new-instance v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$3;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$3;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_HOLIDAY_LIST:Ljava/util/List;

    .line 93
    new-instance v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$4;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$4;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_SUPPORT_LIST_VALUE:Ljava/util/List;

    .line 109
    new-array v0, v0, [I

    fill-array-data v0, :array_1d4

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    .line 122
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const/4 v0, 0x0

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_origin:I

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_nono:I

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000301

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_forest:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_15:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000306

    .line 127
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_fresh:I

    sget v5, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_fresh:I

    invoke-direct {v3, v0, v4, v5}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000307

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_fade:I

    sget v6, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_fade:I

    invoke-direct {v4, v0, v5, v6}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000304

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v6, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_nature:I

    sget v7, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_3:I

    invoke-direct {v5, v0, v6, v7}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000305

    .line 133
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v7, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_baby:I

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_baby:I

    invoke-direct {v6, v0, v7, v8}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000302

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_blues:I

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_5:I

    invoke-direct {v7, v0, v8, v9}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000303

    .line 137
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_flame:I

    sget v10, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_flame:I

    invoke-direct {v8, v0, v9, v10}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x10000308

    .line 139
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v10, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_mono:I

    sget v11, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_21:I

    invoke-direct {v9, v0, v10, v11}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x1000030b

    .line 141
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v11, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_lively:I

    sget v12, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_lively:I

    invoke-direct {v10, v0, v11, v12}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    const v0, 0x1000030c

    .line 143
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v12, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_classical:I

    sget v13, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_classical:I

    invoke-direct {v11, v0, v12, v13}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v1 .. v11}, [Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FILTER_ID_INFO_LIST:Ljava/util/List;

    .line 147
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_original:I

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_original:I

    const-string v3, "0"

    invoke-direct {v1, v3, v0, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_delhi:I

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_delhi:I

    const-string v4, "11"

    invoke-direct {v2, v4, v0, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_holi:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_holi:I

    const-string v5, "12"

    invoke-direct {v3, v5, v0, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_diwali:I

    sget v5, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_diwali:I

    const-string v6, "13"

    invoke-direct {v4, v6, v0, v5}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_tasty:I

    sget v6, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_tasty:I

    const-string v7, "14"

    invoke-direct {v5, v7, v0, v6}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_unity:I

    sget v7, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_unity:I

    const-string v8, "15"

    invoke-direct {v6, v8, v0, v7}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_gala:I

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_gala:I

    const-string v9, "16"

    invoke-direct {v7, v9, v0, v8}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_strong:I

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_strong:I

    const-string v10, "1"

    invoke-direct {v8, v10, v0, v9}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_classic:I

    sget v10, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_vintage:I

    const-string v11, "2"

    invoke-direct {v9, v11, v0, v10}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_cream:I

    sget v11, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_cream:I

    const-string v12, "3"

    invoke-direct {v10, v12, v0, v11}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_dusk:I

    sget v12, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_dusk:I

    const-string v13, "4"

    invoke-direct {v11, v13, v0, v12}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_moring:I

    sget v13, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_morning:I

    const-string v14, "5"

    invoke-direct {v12, v14, v0, v13}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_light:I

    sget v14, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_mild:I

    const-string v15, "6"

    invoke-direct {v13, v15, v0, v14}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_graffiti:I

    sget v15, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_doodle:I

    move-object/from16 v16, v1

    const-string v1, "7"

    invoke-direct {v14, v1, v0, v15}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_postcard:I

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_postcard:I

    move-object/from16 v17, v2

    const-string v2, "8"

    invoke-direct {v15, v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_bw:I

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_bw:I

    move-object/from16 v18, v3

    const-string v3, "9"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_transsionfilter_smoothness:I

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$string;->transsion_filter_name_smooth:I

    move-object/from16 v19, v0

    const-string v0, "10"

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    filled-new-array/range {v1 .. v17}, [Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_ID_INFO_LIST:Ljava/util/List;

    return-void

    :array_1bc
    .array-data 4
        0x10000301
        0x10000306
        0x10000307
        0x10000304
        0x10000305
        0x10000302
        0x10000303
        0x10000308
        0x1000030b
        0x1000030c
    .end array-data

    :array_1d4
    .array-data 4
        0x10000301
        0x10000306
        0x10000307
        0x10000304
        0x10000305
        0x10000302
        0x10000303
        0x10000308
        0x1000030b
        0x1000030c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilterSupportList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_66

    if-eqz p2, :cond_66

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_66

    .line 203
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3c

    if-nez p3, :cond_3c

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_3c

    aget-object v2, p1, v1

    .line 206
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_39

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 208
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3c
    if-eqz p3, :cond_65

    .line 213
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->isInIndiaMarket()Z

    move-result p1

    if-eqz p1, :cond_59

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string p2, "TECNO"

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5e

    const-string p2, "TECNO-Mobile"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 216
    :cond_59
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_INDIA_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5e
    if-nez p4, :cond_65

    .line 219
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_HOLIDAY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_65
    return-object p0

    :cond_66
    :goto_66
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCaptureFilterIdByPreviewId(Ljava/lang/String;Z)I
    .registers 3

    .line 186
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_b

    .line 187
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_13

    :cond_b
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_13
    if-eqz p0, :cond_1e

    .line 189
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static getItemInfoList(Ljava/util/List;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_ID_INFO_LIST:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_11

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FILTER_ID_INFO_LIST:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    :goto_11
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p1
.end method

.method public static getSupportFilterIds(Ljava/lang/String;)[I
    .registers 1

    .line 226
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 227
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0

    .line 229
    :cond_9
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0
.end method

.method public static getTranssionFilterSupportList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->TRANSSION_FILTER_SUPPORT_LIST_VALUE:Ljava/util/List;

    return-object v0
.end method

.method private static isInIndiaMarket()Z
    .registers 2

    .line 240
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    const-string v1, "IN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "debug.camera.india.filter"

    const/4 v1, 0x0

    .line 241
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0
.end method
