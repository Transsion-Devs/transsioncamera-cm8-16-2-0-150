.class public Lcom/ss/ugc/effectplatform/model/Effect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/Effect$Creator;,
        Lcom/ss/ugc/effectplatform/model/Effect$Companion;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/ss/ugc/effectplatform/model/Effect$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private _model_names:Ljava/lang/String;

.field private _requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ad_raw_data:Ljava/lang/String;

.field private avatar_thumb:Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

.field private bind_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private challenge:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private child_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private composerPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private composer_params:Ljava/lang/String;

.field private designer_encrypted_id:Ljava/lang/String;

.field private designer_id:Ljava/lang/String;

.field private device_platform:Ljava/lang/String;

.field private effect_id:Ljava/lang/String;

.field private effect_type:I

.field private extra:Ljava/lang/String;

.field private extra_tag:Ljava/lang/String;

.field private file_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private grade_key:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private hint_file:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private hint_file_format:I

.field private hint_icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private icon_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private id:Ljava/lang/String;

.field private iop_id:Ljava/lang/String;

.field private isDownloaded:Z

.field private is_busi:Z

.field private is_iop:Z

.field private model_names:Ljava/lang/String;

.field private model_names_sec:Ljava/lang/String;

.field private music:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private original_effect_id:Ljava/lang/String;

.field private panel:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private platformVersion:Ljava/lang/String;

.field private ptime:J

.field private recId:Ljava/lang/String;

.field private requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requirements_sec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resource_id:Ljava/lang/String;

.field private schema:Ljava/lang/String;

.field private sdk_extra:Ljava/lang/String;

.field private searchType:Ljava/lang/String;

.field private source:I

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types_sec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unzipPath:Ljava/lang/String;

.field private use_number:J

.field private videoPlayURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zipPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/model/Effect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/Effect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/Effect;->Companion:Lcom/ss/ugc/effectplatform/model/Effect$Companion;

    new-instance v0, Lcom/ss/ugc/effectplatform/model/Effect$Creator;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/model/Effect$Creator;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/Effect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 60

    .line 0
    const v57, 0x1fffff

    const/16 v58, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v58}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;)V
    .registers 72
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p15

    move-object/from16 v12, p17

    move-object/from16 v13, p21

    move-object/from16 v14, p22

    move-object/from16 v15, p23

    const-string v0, "name"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_requirements"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effect_id"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file_url"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon_url"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint_icon"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint_file"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_type"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags_updated_at"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child_effects"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designer_id"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designer_encrypted_id"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_platform"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schema"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk_extra"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_raw_data"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "composer_params"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iop_id"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource_id"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grade_key"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zipPath"

    move-object/from16 v15, p44

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unzipPath"

    move-object/from16 v15, p45

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panel"

    move-object/from16 v15, p47

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchType"

    move-object/from16 v15, p48

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformVersion"

    move-object/from16 v15, p49

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    iput-object v3, v0, Lcom/ss/ugc/effectplatform/model/Effect;->hint:Ljava/lang/String;

    iput-object v4, v0, Lcom/ss/ugc/effectplatform/model/Effect;->id:Ljava/lang/String;

    iput-object v5, v0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_id:Ljava/lang/String;

    iput-object v6, v0, Lcom/ss/ugc/effectplatform/model/Effect;->file_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object v7, v0, Lcom/ss/ugc/effectplatform/model/Effect;->icon_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object v8, v0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object v9, v0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file:Lcom/ss/ugc/effectplatform/model/UrlModel;

    move/from16 v1, p11

    iput v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file_format:I

    iput-object v10, v0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->tags:Ljava/util/List;

    iput-object v11, v0, Lcom/ss/ugc/effectplatform/model/Effect;->tags_updated_at:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->children:Ljava/util/List;

    iput-object v12, v0, Lcom/ss/ugc/effectplatform/model/Effect;->child_effects:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->parent:Ljava/lang/String;

    move/from16 v1, p19

    iput v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_type:I

    move/from16 v1, p20

    iput v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->source:I

    iput-object v13, v0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_id:Ljava/lang/String;

    iput-object v14, v0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_encrypted_id:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->device_platform:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->schema:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->music:Ljava/util/List;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->extra:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->sdk_extra:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->ad_raw_data:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->composer_params:Ljava/lang/String;

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi:Z

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->iop_id:Ljava/lang/String;

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->resource_id:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->bind_ids:Ljava/util/List;

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->ptime:J

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->grade_key:Ljava/lang/String;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->challenge:Ljava/util/List;

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->use_number:J

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->extra_tag:Ljava/lang/String;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->videoPlayURLs:Ljava/util/List;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->composerPath:Ljava/util/List;

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->zipPath:Ljava/lang/String;

    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->unzipPath:Ljava/lang/String;

    move/from16 v1, p46

    iput-boolean v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded:Z

    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->panel:Ljava/lang/String;

    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->searchType:Ljava/lang/String;

    iput-object v15, v0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    move-object/from16 v1, p50

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->recId:Ljava/lang/String;

    move-object/from16 v1, p51

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    move-object/from16 v1, p52

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->model_names_sec:Ljava/lang/String;

    move-object/from16 v1, p53

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->original_effect_id:Ljava/lang/String;

    move-object/from16 v1, p54

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->nickname:Ljava/lang/String;

    move-object/from16 v1, p55

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->avatar_thumb:Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements:Ljava/util/List;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/ugc/effectplatform/model/Effect;->types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 106

    move/from16 v0, p56

    move/from16 v1, p57

    and-int/lit8 v2, v0, 0x1

    const-string v3, ""

    if-eqz v2, :cond_c

    move-object v2, v3

    goto :goto_e

    :cond_c
    move-object/from16 v2, p1

    :goto_e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_18

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_18
    move-object/from16 v4, p2

    :goto_1a
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_21

    move-object v5, v6

    goto :goto_23

    :cond_21
    move-object/from16 v5, p3

    :goto_23
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_29

    move-object v7, v3

    goto :goto_2b

    :cond_29
    move-object/from16 v7, p4

    :goto_2b
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_31

    move-object v8, v3

    goto :goto_33

    :cond_31
    move-object/from16 v8, p5

    :goto_33
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_39

    move-object v9, v3

    goto :goto_3b

    :cond_39
    move-object/from16 v9, p6

    :goto_3b
    and-int/lit8 v10, v0, 0x40

    const/4 v11, 0x3

    if-eqz v10, :cond_46

    .line 29
    new-instance v10, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v10, v6, v6, v11, v6}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_48

    :cond_46
    move-object/from16 v10, p7

    :goto_48
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_52

    .line 30
    new-instance v12, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v12, v6, v6, v11, v6}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_54

    :cond_52
    move-object/from16 v12, p8

    :goto_54
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_5e

    .line 31
    new-instance v13, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v13, v6, v6, v11, v6}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_60

    :cond_5e
    move-object/from16 v13, p9

    :goto_60
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_6a

    .line 32
    new-instance v14, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v14, v6, v6, v11, v6}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6c

    :cond_6a
    move-object/from16 v14, p10

    :goto_6c
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_72

    const/4 v11, 0x0

    goto :goto_74

    :cond_72
    move/from16 v11, p11

    :goto_74
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_7e

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_80

    :cond_7e
    move-object/from16 v6, p12

    :goto_80
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_86

    const/4 v15, 0x0

    goto :goto_88

    :cond_86
    move-object/from16 v15, p13

    :goto_88
    move-object/from16 p58, v2

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_94

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_96

    :cond_94
    move-object/from16 v2, p14

    :goto_96
    move-object/from16 p3, v2

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_9e

    move-object v2, v3

    goto :goto_a0

    :cond_9e
    move-object/from16 v2, p15

    :goto_a0
    const v16, 0x8000

    and-int v17, v0, v16

    if-eqz v17, :cond_aa

    const/16 v17, 0x0

    goto :goto_ac

    :cond_aa
    move-object/from16 v17, p16

    :goto_ac
    const/high16 v18, 0x10000

    and-int v19, v0, v18

    if-eqz v19, :cond_b8

    .line 41
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    goto :goto_ba

    :cond_b8
    move-object/from16 v19, p17

    :goto_ba
    const/high16 v20, 0x20000

    and-int v21, v0, v20

    if-eqz v21, :cond_c3

    const/16 v21, 0x0

    goto :goto_c5

    :cond_c3
    move-object/from16 v21, p18

    :goto_c5
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_ce

    const/16 v22, 0x0

    goto :goto_d0

    :cond_ce
    move/from16 v22, p19

    :goto_d0
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_d9

    const/16 v23, 0x0

    goto :goto_db

    :cond_d9
    move/from16 v23, p20

    :goto_db
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_e4

    move-object/from16 v24, v3

    goto :goto_e6

    :cond_e4
    move-object/from16 v24, p21

    :goto_e6
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_ef

    move-object/from16 v25, v3

    goto :goto_f1

    :cond_ef
    move-object/from16 v25, p22

    :goto_f1
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_fa

    move-object/from16 v26, v3

    goto :goto_fc

    :cond_fa
    move-object/from16 v26, p23

    :goto_fc
    const/high16 v27, 0x800000

    and-int v27, v0, v27

    if-eqz v27, :cond_105

    move-object/from16 v27, v3

    goto :goto_107

    :cond_105
    move-object/from16 v27, p24

    :goto_107
    const/high16 v28, 0x1000000

    and-int v28, v0, v28

    if-eqz v28, :cond_110

    const/16 v28, 0x0

    goto :goto_112

    :cond_110
    move-object/from16 v28, p25

    :goto_112
    const/high16 v29, 0x2000000

    and-int v29, v0, v29

    if-eqz v29, :cond_11b

    const/16 v29, 0x0

    goto :goto_11d

    :cond_11b
    move-object/from16 v29, p26

    :goto_11d
    const/high16 v30, 0x4000000

    and-int v30, v0, v30

    if-eqz v30, :cond_126

    move-object/from16 v30, v3

    goto :goto_128

    :cond_126
    move-object/from16 v30, p27

    :goto_128
    const/high16 v31, 0x8000000

    and-int v31, v0, v31

    if-eqz v31, :cond_131

    move-object/from16 v31, v3

    goto :goto_133

    :cond_131
    move-object/from16 v31, p28

    :goto_133
    const/high16 v32, 0x10000000

    and-int v32, v0, v32

    if-eqz v32, :cond_13c

    move-object/from16 v32, v3

    goto :goto_13e

    :cond_13c
    move-object/from16 v32, p29

    :goto_13e
    const/high16 v33, 0x20000000

    and-int v33, v0, v33

    if-eqz v33, :cond_147

    const/16 v33, 0x0

    goto :goto_149

    :cond_147
    move/from16 v33, p30

    :goto_149
    const/high16 v34, 0x40000000    # 2.0f

    and-int v34, v0, v34

    if-eqz v34, :cond_152

    move-object/from16 v34, v3

    goto :goto_154

    :cond_152
    move-object/from16 v34, p31

    :goto_154
    const/high16 v35, -0x80000000

    and-int v0, v0, v35

    if-eqz v0, :cond_15c

    const/4 v0, 0x0

    goto :goto_15e

    :cond_15c
    move/from16 v0, p32

    :goto_15e
    and-int/lit8 v35, v1, 0x1

    if-eqz v35, :cond_165

    move-object/from16 v35, v3

    goto :goto_167

    :cond_165
    move-object/from16 v35, p33

    :goto_167
    and-int/lit8 v36, v1, 0x2

    if-eqz v36, :cond_16e

    const/16 v36, 0x0

    goto :goto_170

    :cond_16e
    move-object/from16 v36, p34

    :goto_170
    and-int/lit8 v37, v1, 0x4

    if-eqz v37, :cond_177

    const-wide/16 v37, 0x0

    goto :goto_179

    :cond_177
    move-wide/from16 v37, p35

    :goto_179
    and-int/lit8 v39, v1, 0x8

    if-eqz v39, :cond_180

    move-object/from16 v39, v3

    goto :goto_182

    :cond_180
    move-object/from16 v39, p37

    :goto_182
    and-int/lit8 v40, v1, 0x10

    if-eqz v40, :cond_189

    const/16 v40, 0x0

    goto :goto_18b

    :cond_189
    move-object/from16 v40, p38

    :goto_18b
    and-int/lit8 v41, v1, 0x20

    if-eqz v41, :cond_192

    const-wide/16 v41, 0x0

    goto :goto_194

    :cond_192
    move-wide/from16 v41, p39

    :goto_194
    and-int/lit8 v43, v1, 0x40

    if-eqz v43, :cond_19b

    const/16 v43, 0x0

    goto :goto_19d

    :cond_19b
    move-object/from16 v43, p41

    :goto_19d
    move/from16 p4, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_1a5

    const/4 v0, 0x0

    goto :goto_1a7

    :cond_1a5
    move-object/from16 v0, p42

    :goto_1a7
    move-object/from16 p5, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_1af

    const/4 v0, 0x0

    goto :goto_1b1

    :cond_1af
    move-object/from16 v0, p43

    :goto_1b1
    move-object/from16 p6, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_1b9

    move-object v0, v3

    goto :goto_1bb

    :cond_1b9
    move-object/from16 v0, p44

    :goto_1bb
    move-object/from16 p7, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_1c3

    move-object v0, v3

    goto :goto_1c5

    :cond_1c3
    move-object/from16 v0, p45

    :goto_1c5
    move-object/from16 p8, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_1cd

    const/4 v0, 0x0

    goto :goto_1cf

    :cond_1cd
    move/from16 v0, p46

    :goto_1cf
    move/from16 p2, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_1d7

    move-object v0, v3

    goto :goto_1d9

    :cond_1d7
    move-object/from16 v0, p47

    :goto_1d9
    move-object/from16 p9, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_1e0

    goto :goto_1e2

    :cond_1e0
    move-object/from16 v3, p48

    :goto_1e2
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_1e9

    .line 101
    const-string v0, "760.0.0.175-cktob"

    goto :goto_1eb

    :cond_1e9
    move-object/from16 v0, p49

    :goto_1eb
    and-int v16, v1, v16

    if-eqz v16, :cond_1f2

    const/16 v16, 0x0

    goto :goto_1f4

    :cond_1f2
    move-object/from16 v16, p50

    :goto_1f4
    and-int v18, v1, v18

    if-eqz v18, :cond_1fb

    const/16 v18, 0x0

    goto :goto_1fd

    :cond_1fb
    move-object/from16 v18, p51

    :goto_1fd
    and-int v20, v1, v20

    if-eqz v20, :cond_204

    const/16 v20, 0x0

    goto :goto_206

    :cond_204
    move-object/from16 v20, p52

    :goto_206
    const/high16 v44, 0x40000

    and-int v44, v1, v44

    if-eqz v44, :cond_20f

    const/16 v44, 0x0

    goto :goto_211

    :cond_20f
    move-object/from16 v44, p53

    :goto_211
    const/high16 v45, 0x80000

    and-int v45, v1, v45

    if-eqz v45, :cond_21a

    const/16 v45, 0x0

    goto :goto_21c

    :cond_21a
    move-object/from16 v45, p54

    :goto_21c
    const/high16 v46, 0x100000

    and-int v1, v1, v46

    if-eqz v1, :cond_28f

    const/16 p56, 0x0

    :goto_224
    move-object/from16 p1, p0

    move/from16 p47, p2

    move-object/from16 p15, p3

    move/from16 p33, p4

    move-object/from16 p43, p5

    move-object/from16 p44, p6

    move-object/from16 p45, p7

    move-object/from16 p46, p8

    move-object/from16 p48, p9

    move-object/from16 p2, p58

    move-object/from16 p50, v0

    move-object/from16 p16, v2

    move-object/from16 p49, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p13, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move/from16 p12, v11

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p14, v15

    move-object/from16 p51, v16

    move-object/from16 p17, v17

    move-object/from16 p52, v18

    move-object/from16 p18, v19

    move-object/from16 p53, v20

    move-object/from16 p19, v21

    move/from16 p20, v22

    move/from16 p21, v23

    move-object/from16 p22, v24

    move-object/from16 p23, v25

    move-object/from16 p24, v26

    move-object/from16 p25, v27

    move-object/from16 p26, v28

    move-object/from16 p27, v29

    move-object/from16 p28, v30

    move-object/from16 p29, v31

    move-object/from16 p30, v32

    move/from16 p31, v33

    move-object/from16 p32, v34

    move-object/from16 p34, v35

    move-object/from16 p35, v36

    move-wide/from16 p36, v37

    move-object/from16 p38, v39

    move-object/from16 p39, v40

    move-wide/from16 p40, v41

    move-object/from16 p42, v43

    move-object/from16 p54, v44

    move-object/from16 p55, v45

    goto :goto_292

    :cond_28f
    move-object/from16 p56, p55

    goto :goto_224

    .line 107
    :goto_292
    invoke-direct/range {p1 .. p56}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Lcom/ss/ugc/effectplatform/model/Effect;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 177
    :cond_a
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 178
    :cond_1b
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    .line 179
    :cond_2a
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    return v2

    :cond_39
    return v0
.end method

.method public getAd_raw_data()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->ad_raw_data:Ljava/lang/String;

    return-object p0
.end method

.method public getAvatar_thumb()Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->avatar_thumb:Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    return-object p0
.end method

.method public getBind_ids()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->bind_ids:Ljava/util/List;

    return-object p0
.end method

.method public getChallenge()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->challenge:Ljava/util/List;

    return-object p0
.end method

.method public getChild_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->child_effects:Ljava/util/List;

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->children:Ljava/util/List;

    return-object p0
.end method

.method public getComposerPath()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->composerPath:Ljava/util/List;

    return-object p0
.end method

.method public getComposer_params()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->composer_params:Ljava/lang/String;

    return-object p0
.end method

.method public getDesigner_encrypted_id()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_encrypted_id:Ljava/lang/String;

    return-object p0
.end method

.method public getDesigner_id()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_id:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice_platform()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->device_platform:Ljava/lang/String;

    return-object p0
.end method

.method public getEffect_id()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getEffect_type()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_type:I

    return p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra_tag()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->extra_tag:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_url()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->file_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getGrade_key()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->grade_key:Ljava/lang/String;

    return-object p0
.end method

.method public getHint()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public getHint_file()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getHint_file_format()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file_format:I

    return p0
.end method

.method public getHint_icon()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getIcon_url()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->icon_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getInternalModelNames$effect_model_release()Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    return-object p0
.end method

.method public final getInternalRequirements$effect_model_release()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    return-object p0
.end method

.method public final getInternalType$effect_model_release()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    return-object p0
.end method

.method public getIop_id()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->iop_id:Ljava/lang/String;

    return-object p0
.end method

.method public final getModel_names()Ljava/lang/String;
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_a
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_41

    .line 156
    :cond_17
    sget-boolean v0, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;->useNewStrategy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 157
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 159
    :cond_2d
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_3f
    :goto_3f
    iput-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    .line 162
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4f

    .line 165
    :cond_4c
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    return-object p0

    .line 163
    :cond_4f
    :goto_4f
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->model_names:Ljava/lang/String;

    return-object p0
.end method

.method public getModel_names_sec()Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->model_names_sec:Ljava/lang/String;

    return-object p0
.end method

.method public getMusic()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->music:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginal_effect_id()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->original_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getPanel()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->panel:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlatformVersion()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getPtime()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->ptime:J

    return-wide v0
.end method

.method public getRecId()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->recId:Ljava/lang/String;

    return-object p0
.end method

.method public getRequirements()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_54

    :cond_d
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_54

    .line 112
    :cond_1d
    sget-boolean v0, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;->useNewStrategy:Z

    if-nez v0, :cond_3a

    .line 113
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList$default(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    goto :goto_52

    .line 114
    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_52

    .line 116
    :cond_3a
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    goto :goto_52

    .line 117
    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :goto_52
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    .line 120
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 121
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements:Ljava/util/List;

    return-object p0

    .line 123
    :cond_5f
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    return-object p0
.end method

.method public final getRequirements_sec()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    return-object p0
.end method

.method public getResource_id()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->resource_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSchema()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->schema:Ljava/lang/String;

    return-object p0
.end method

.method public getSdk_extra()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->sdk_extra:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchType()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->searchType:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->source:I

    return p0
.end method

.method public getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTags_updated_at()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public getTypes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_54

    :cond_d
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_54

    .line 134
    :cond_1d
    sget-boolean v0, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;->useNewStrategy:Z

    if-nez v0, :cond_3a

    .line 135
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList$default(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    goto :goto_52

    .line 136
    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_52

    .line 138
    :cond_3a
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    goto :goto_52

    .line 139
    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :goto_52
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    .line 142
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 143
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types:Ljava/util/List;

    return-object p0

    .line 145
    :cond_5f
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    return-object p0
.end method

.method public final getTypes_sec()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    return-object p0
.end method

.method public getUnzipPath()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->unzipPath:Ljava/lang/String;

    return-object p0
.end method

.method public getUse_number()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->use_number:J

    return-wide v0
.end method

.method public getVideoPlayURLs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->videoPlayURLs:Ljava/util/List;

    return-object p0
.end method

.method public getZipPath()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->zipPath:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 184
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isDownloaded()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded:Z

    return p0
.end method

.method public is_busi()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi:Z

    return p0
.end method

.method public is_iop()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop:Z

    return p0
.end method

.method public setAd_raw_data(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->ad_raw_data:Ljava/lang/String;

    return-void
.end method

.method public setAvatar_thumb(Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->avatar_thumb:Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    return-void
.end method

.method public setBind_ids(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->bind_ids:Ljava/util/List;

    return-void
.end method

.method public setChallenge(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->challenge:Ljava/util/List;

    return-void
.end method

.method public setChild_effects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->child_effects:Ljava/util/List;

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->children:Ljava/util/List;

    return-void
.end method

.method public setComposerPath(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->composerPath:Ljava/util/List;

    return-void
.end method

.method public setComposer_params(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->composer_params:Ljava/lang/String;

    return-void
.end method

.method public setDesigner_encrypted_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_encrypted_id:Ljava/lang/String;

    return-void
.end method

.method public setDesigner_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->designer_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_platform(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->device_platform:Ljava/lang/String;

    return-void
.end method

.method public setDownloaded(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded:Z

    return-void
.end method

.method public setEffect_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_id:Ljava/lang/String;

    return-void
.end method

.method public setEffect_type(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->effect_type:I

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->extra:Ljava/lang/String;

    return-void
.end method

.method public setExtra_tag(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->extra_tag:Ljava/lang/String;

    return-void
.end method

.method public setFile_url(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->file_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setGrade_key(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->grade_key:Ljava/lang/String;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint:Ljava/lang/String;

    return-void
.end method

.method public setHint_file(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setHint_file_format(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_file_format:I

    return-void
.end method

.method public setHint_icon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->hint_icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setIcon_url(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->icon_url:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->id:Ljava/lang/String;

    return-void
.end method

.method public setIop_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->iop_id:Ljava/lang/String;

    return-void
.end method

.method public final setModel_names(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->model_names:Ljava/lang/String;

    return-void
.end method

.method public setModel_names_sec(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->model_names_sec:Ljava/lang/String;

    return-void
.end method

.method public setMusic(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->music:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->name:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->original_effect_id:Ljava/lang/String;

    return-void
.end method

.method public setPanel(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->panel:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->parent:Ljava/lang/String;

    return-void
.end method

.method public final setPlatformVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->platformVersion:Ljava/lang/String;

    return-void
.end method

.method public setPtime(J)V
    .registers 3

    .line 80
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->ptime:J

    return-void
.end method

.method public setRecId(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->recId:Ljava/lang/String;

    return-void
.end method

.method public setRequirements(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements:Ljava/util/List;

    return-void
.end method

.method public final setRequirements_sec(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->schema:Ljava/lang/String;

    return-void
.end method

.method public setSdk_extra(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->sdk_extra:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->source:I

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->tags:Ljava/util/List;

    return-void
.end method

.method public setTags_updated_at(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->tags_updated_at:Ljava/lang/String;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types:Ljava/util/List;

    return-void
.end method

.method public final setTypes_sec(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    return-void
.end method

.method public setUnzipPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->unzipPath:Ljava/lang/String;

    return-void
.end method

.method public setUse_number(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->use_number:J

    return-void
.end method

.method public setVideoPlayURLs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->videoPlayURLs:Ljava/util/List;

    return-void
.end method

.method public setZipPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->zipPath:Ljava/lang/String;

    return-void
.end method

.method public set_busi(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi:Z

    return-void
.end method

.method public set_iop(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Effect(name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', _requirements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_requirements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "requirements_sec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/Effect;->requirements_sec:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', original_effect_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getOriginal_effect_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "effect_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', file_url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getFile_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", icon_url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getIcon_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hint_icon="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_icon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hint_file="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hint_file_format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file_format()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_type:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", types_sec="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/model/Effect;->types_sec:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", tags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", tags_updated_at=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags_updated_at()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " children="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", child_effects="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getChild_effects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", parent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "effect_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_type()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", source="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", designer_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "designer_encrypted_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_encrypted_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', device_platform=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getDevice_platform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "schema=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSchema()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', music="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getMusic()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extra=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', sdk_extra=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getSdk_extra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ad_raw_data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getAd_raw_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', composer_params=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposer_params()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', is_busi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "iop_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getIop_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', is_iop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", resource_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', bind_ids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getBind_ids()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "publish_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getPtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", grade_key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getGrade_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', composerPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposerPath()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zipPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', unzipPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', isDownloaded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "panel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getPanel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', recId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getRecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _model_names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/Effect;->_model_names:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model_names_sec=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/ugc/effectplatform/model/Effect;->Companion:Lcom/ss/ugc/effectplatform/model/Effect$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/AndroidEffectParceler;->write(Lcom/ss/ugc/effectplatform/model/Effect;Landroid/os/Parcel;I)V

    return-void
.end method
