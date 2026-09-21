.class public Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAKE_UP_DEFAULT_INTENSITY:F = 0.6f

.field private static final STYLE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TYPE_AI_MAKEUP:I = 0x0

.field public static final TYPE_CLOSE:I = -0x1

.field public static final TYPE_RESTORE:I = 0x2

.field public static final TYPE_STYLE_MAKEUP:I = 0x1


# instance fields
.field private final mAIMakeUpSupport:Z


# direct methods
.method public static synthetic $r8$lambda$Stl5Tq7E19T3CwLVaBUlQryy3sQ(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)Z
    .registers 1

    .line 290
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EffectDataManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->STYLE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    return-void
.end method

.method private static getDefaultIntensity(Ljava/lang/String;IZ)[F
    .registers 6

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 75
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDefaultIntensity invalid key!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1a
    if-eqz p2, :cond_29

    .line 81
    :try_start_1c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    aput p0, v0, v1

    goto :goto_33

    :catch_27
    move-exception p0

    goto :goto_4c

    .line 83
    :cond_29
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    aput p0, v0, v1

    .line 85
    :goto_33
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[getDefaultIntensity] defaultIntensity = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_4b} :catch_27

    return-object v0

    .line 88
    :goto_4c
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDefaultIntensity] e ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIndexByFeature(Ljava/lang/String;)I
    .registers 3

    .line 300
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->STYLE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 301
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 303
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 100
    invoke-static {p2, p3}, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->getMakeupItemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getParentPath()Ljava/lang/String;
    .registers 1

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->getMakeupParentPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStyleMakeupItems(ZII)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 39

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 109
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getParentPath()Ljava/lang/String;

    move-result-object v4

    .line 110
    const-string v5, "neptune"

    const-string v7, "style_05"

    const-string v8, "nativemuscle"

    const-string v10, "style_04"

    const-string v12, "style_03"

    const-string v13, "style_02"

    const-string v15, "style_01"

    const/16 v16, 0x7

    const-string v6, "ai"

    const/16 v17, 0x6

    const-string/jumbo v9, "zhigan"

    const/16 v18, 0x5

    const-string v11, ""

    const/16 v19, 0x3

    const-string v14, "Makeup_ALL"

    move-object/from16 v23, v5

    const-string v5, "Filter_ALL"

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4b8

    move/from16 v25, v7

    const/4 v7, 0x2

    if-eq v2, v7, :cond_370

    const/4 v7, 0x4

    if-eq v2, v7, :cond_184

    const/16 v2, 0x9

    .line 248
    new-array v2, v2, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v20, v2

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_no_effect:I

    move-object/from16 v26, v8

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v33, v10

    move-object/from16 v34, v12

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/String;

    .line 252
    invoke-static {v11, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string v28, "noeffect"

    const-string v29, ""

    const-string v30, ""

    move-object/from16 v31, v12

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v11, v27

    const/4 v12, -0x1

    invoke-direct {v7, v12, v2, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v7, v20, v10

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->makeup_ai_effect:I

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 256
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v6, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string/jumbo v28, "zhigan"

    const-string v30, "ai"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v6, v27

    invoke-direct {v2, v10, v7, v8, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v25

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_firstlove_international:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_firstlove:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v8, "firstlove"

    .line 260
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v15, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string v28, "firstlove"

    const-string v30, "style_01"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move/from16 v9, v25

    move-object/from16 v8, v27

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v22, 0x2

    aput-object v2, v20, v22

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_venus:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_venus:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string/jumbo v8, "venus"

    .line 264
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v13, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string/jumbo v28, "venus"

    const-string v30, "style_02"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v27

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v19

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_charmpurple:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_charmpurple:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "charmpurple"

    .line 268
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v34

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "charmpurple"

    const-string v11, "style_03"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v21, 0x4

    aput-object v2, v20, v21

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_nude_color_international:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nude:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "nude"

    .line 272
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v33

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "nude"

    const-string v11, "style_04"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v18

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_light_nativemuscle:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nativemuscle:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v10, v26

    .line 276
    invoke-direct {v0, v3, v10, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v24

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "nativemuscle"

    const-string v11, "style_05"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v17

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_neptune:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_neptune:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v12, v23

    .line 280
    invoke-direct {v0, v3, v12, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v4, "style_06"

    invoke-static {v4, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "neptune"

    const-string v11, "style_06"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v16

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    const/4 v7, 0x2

    invoke-direct {v1, v7, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v2, 0x8

    aput-object v1, v20, v2

    :goto_180
    move-object/from16 v2, v20

    goto/16 :goto_602

    :cond_184
    move-object v7, v10

    move-object/from16 v2, v24

    move-object v10, v8

    move-object v8, v12

    const/16 v12, 0xd

    .line 112
    new-array v12, v12, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v24, v12

    new-instance v12, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v26, v2

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_no_effect:I

    move-object/from16 v33, v7

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p2, v8

    move-object/from16 v34, v10

    const/4 v10, 0x0

    new-array v8, v10, [Ljava/lang/String;

    .line 116
    invoke-static {v11, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string v28, "noeffect"

    const-string v29, ""

    const-string v30, ""

    move-object/from16 v31, v8

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v27

    const/4 v11, -0x1

    invoke-direct {v12, v11, v2, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v12, v24, v10

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->makeup_ai_effect:I

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 120
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v6, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string/jumbo v28, "zhigan"

    const-string v30, "ai"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v6, v27

    invoke-direct {v2, v10, v7, v8, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v25, 0x1

    aput-object v2, v24, v25

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_nude_color:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nude:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v8, "nude"

    .line 124
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v15, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string v28, "nude"

    const-string v30, "style_01"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v27

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v22, 0x2

    aput-object v2, v24, v22

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_charmpurple:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_charmpurple:I

    new-instance v27, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v8, "charmpurple"

    .line 128
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v31

    invoke-static {v13, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v32

    const-string v28, "charmpurple"

    const-string v30, "style_02"

    invoke-direct/range {v27 .. v32}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v27

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v24, v19

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_peacockblue:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_peacockblue:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "peacockblue"

    .line 132
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p2

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "peacockblue"

    const-string v11, "style_03"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v21, 0x4

    aput-object v2, v24, v21

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_nativemuscle:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nativemuscle:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v10, v34

    .line 136
    invoke-direct {v0, v3, v10, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v33

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "nativemuscle"

    const-string v11, "style_04"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v24, v18

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_qianjin:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_qianjin:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "qianjin"

    .line 140
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v26

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "qianjin"

    const-string v11, "style_05"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v24, v17

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_neptune:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_neptune:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v12, v23

    .line 144
    invoke-direct {v0, v3, v12, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v9, "style_06"

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "neptune"

    const-string v11, "style_06"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v24, v16

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_metrosexual:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_metrosexual:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "metrosexual"

    .line 148
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v9, "style_07"

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "metrosexual"

    const-string v11, "style_07"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v6, 0x8

    aput-object v2, v24, v6

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_ruby:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_ruby:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "ruby"

    .line 152
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v9, "style_08"

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "ruby"

    const-string v11, "style_08"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v20, 0x9

    aput-object v2, v24, v20

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_firstlove:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_firstlove:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "firstlove"

    .line 156
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v9, "style_09"

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "firstlove"

    const-string v11, "style_09"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v6, 0xa

    aput-object v2, v24, v6

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_venus:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_venus:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string/jumbo v9, "venus"

    .line 160
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v4, "style_10"

    invoke-static {v4, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string/jumbo v9, "venus"

    const-string v11, "style_10"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v1, 0xb

    aput-object v2, v24, v1

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    const/4 v7, 0x2

    invoke-direct {v1, v7, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v2, 0xc

    aput-object v1, v24, v2

    move-object/from16 v2, v24

    goto/16 :goto_602

    :cond_370
    move-object v7, v10

    const/16 v2, 0x9

    move-object v10, v8

    move-object v8, v12

    move-object/from16 v12, v23

    .line 208
    new-array v2, v2, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v20, v2

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v33, v7

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_no_effect:I

    move-object/from16 v34, v8

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v32, v13

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/String;

    .line 212
    invoke-static {v11, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string v27, "noeffect"

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v30, v13

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v11, v26

    const/4 v13, -0x1

    invoke-direct {v2, v13, v7, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v12

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->makeup_ai_effect:I

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 216
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v30

    invoke-static {v6, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string/jumbo v27, "zhigan"

    const-string v29, "ai"

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v6, v26

    invoke-direct {v2, v12, v7, v8, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v9, 0x1

    aput-object v2, v20, v9

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_nativemuscle:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nativemuscle:I

    new-instance v25, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 220
    invoke-direct {v0, v3, v10, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v29

    invoke-static {v15, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v30

    const-string v26, "nativemuscle"

    const-string v28, "style_01"

    invoke-direct/range {v25 .. v30}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v25

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v22, 0x2

    aput-object v2, v20, v22

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_metrosexual:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_metrosexual:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "metrosexual"

    .line 224
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v32

    invoke-static {v13, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "metrosexual"

    const-string v11, "style_02"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v19

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_neptune:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_neptune:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v12, v23

    .line 228
    invoke-direct {v0, v3, v12, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v34

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "neptune"

    const-string v11, "style_03"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v21, 0x4

    aput-object v2, v20, v21

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_firstlove:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_firstlove:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "firstlove"

    .line 232
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v33

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "firstlove"

    const-string v11, "style_04"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v18

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_qianjin:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_qianjin:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "qianjin"

    .line 236
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v24

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "qianjin"

    const-string v11, "style_05"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v17

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_brown_venus:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_venus:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string/jumbo v9, "venus"

    .line 240
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v4, "style_06"

    invoke-static {v4, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string/jumbo v9, "venus"

    const-string v11, "style_06"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v16

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    const/4 v7, 0x2

    invoke-direct {v1, v7, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v2, 0x8

    aput-object v1, v20, v2

    goto/16 :goto_180

    :cond_4b8
    move-object v7, v10

    move-object/from16 v2, v24

    move-object v10, v8

    move-object v8, v12

    const/16 v12, 0x9

    .line 168
    new-array v12, v12, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-object/from16 v20, v12

    new-instance v12, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_no_effect:I

    move-object/from16 v33, v7

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p2, v8

    move-object/from16 v34, v10

    const/4 v10, 0x0

    new-array v8, v10, [Ljava/lang/String;

    .line 172
    invoke-static {v11, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string v27, "noeffect"

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v30, v8

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v26

    const/4 v11, -0x1

    invoke-direct {v12, v11, v2, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v12, v20, v10

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->makeup_ai_effect:I

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_autoai:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 176
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v30

    invoke-static {v6, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string/jumbo v27, "zhigan"

    const-string v29, "ai"

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v6, v26

    invoke-direct {v2, v10, v7, v8, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v25, 0x1

    aput-object v2, v20, v25

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_nude_color:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nude:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v8, "nude"

    .line 180
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v30

    invoke-static {v15, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string v27, "nude"

    const-string v29, "style_01"

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v26

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v22, 0x2

    aput-object v2, v20, v22

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_charmpurple:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_charmpurple:I

    new-instance v26, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v8, "charmpurple"

    .line 184
    invoke-direct {v0, v3, v8, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v30

    invoke-static {v13, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v31

    const-string v27, "charmpurple"

    const-string v29, "style_02"

    invoke-direct/range {v26 .. v31}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    move-object/from16 v8, v26

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v19

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_peacockblue:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_peacockblue:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "peacockblue"

    .line 188
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p2

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "peacockblue"

    const-string v11, "style_03"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v21, 0x4

    aput-object v2, v20, v21

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_nativemuscle:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_nativemuscle:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v10, v34

    .line 192
    invoke-direct {v0, v3, v10, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v33

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "nativemuscle"

    const-string v11, "style_04"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v18

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_qianjin:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_qianjin:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const-string v9, "qianjin"

    .line 196
    invoke-direct {v0, v3, v9, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v24

    invoke-static {v9, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "qianjin"

    const-string v11, "style_05"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v17

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_black_neptune:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->style_makeup_neptune:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 v12, v23

    .line 200
    invoke-direct {v0, v3, v12, v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItemPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v4, "style_06"

    invoke-static {v4, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(Ljava/lang/String;IZ)[F

    move-result-object v13

    const-string v9, "neptune"

    const-string v11, "style_06"

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v20, v16

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore:I

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    const/4 v7, 0x2

    invoke-direct {v1, v7, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v2, 0x8

    aput-object v1, v20, v2

    goto/16 :goto_180

    .line 288
    :goto_602
    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    if-nez v0, :cond_62a

    .line 289
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$$ExternalSyntheticLambda0;-><init>()V

    .line 290
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 291
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    array-length v1, v2

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    goto :goto_62b

    :cond_62a
    const/4 v9, 0x1

    .line 295
    :goto_62b
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/4 v10, 0x0

    invoke-direct {v0, v9, v2, v10}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    return-object v0
.end method


# virtual methods
.method public getItem(Ljava/lang/String;II)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 7

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem settingKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", regionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    const-string v0, "key_video_makeup_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getStyleMakeupItems(ZII)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    return-object p0
.end method
