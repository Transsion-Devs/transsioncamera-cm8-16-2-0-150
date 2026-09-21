.class final enum Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScreenManager5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UIScaleInfo"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

.field public static final enum H760:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

.field public static final enum H800:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

.field public static final enum H880:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

.field public static final enum UNKNOW:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;


# instance fields
.field private mHeight:I

.field private final mModePickerMarginBottomScale:D

.field private final mModePickerMarginTopScale:D

.field private final mPreviewMoveDistanceScale:Ljava/util/Map;

.field private final mShutterBarMarginBottomScale:D

.field private final mToolBarMarginBottomScale:D

.field private final mToolBarMarginTopScale:D

.field private mWidth:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    .registers 4

    .line 290
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H760:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    sget-object v1, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H800:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    sget-object v2, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H880:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    sget-object v3, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->UNKNOW:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 17

    .line 291
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    const-wide v11, 0x3fc27d028a1dfb94L    # 0.14444

    .line 292
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfo()Ljava/util/Map;

    move-result-object v13

    const-string v1, "H760"

    const/4 v2, 0x0

    const-wide v3, 0x3fb8a71de69ad42cL    # 0.0963

    const-wide v5, 0x3fb64840e1719f80L    # 0.08704

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;-><init>(Ljava/lang/String;IDDDDDLjava/util/Map;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H760:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    .line 293
    new-instance v1, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    const-wide v12, 0x3fca8cbd1244a622L    # 0.20742

    .line 294
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfo()Ljava/util/Map;

    move-result-object v14

    const-string v2, "H800"

    const/4 v3, 0x1

    const-wide v4, 0x3fbdde15ca6ca03cL    # 0.11667

    const-wide v6, 0x3fb91fb3fa6defc8L    # 0.09814

    const-wide v8, 0x3f9111f0c34c1a8bL    # 0.01667

    const-wide/16 v10, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;-><init>(Ljava/lang/String;IDDDDDLjava/util/Map;)V

    sput-object v1, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H800:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    .line 295
    new-instance v2, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    const-wide v13, 0x3fd2f694467381d8L    # 0.2963

    .line 297
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfo()Ljava/util/Map;

    move-result-object v15

    const-string v3, "H880"

    const/4 v4, 0x2

    const-wide v5, 0x3fc999999999999aL    # 0.2

    const-wide v7, 0x3fc01e7967caea74L    # 0.12593

    const-wide v9, 0x3fa110a137f38c54L    # 0.03333

    const-wide v11, 0x3f76c61522a6f3f5L    # 0.00556

    invoke-direct/range {v2 .. v15}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;-><init>(Ljava/lang/String;IDDDDDLjava/util/Map;)V

    sput-object v2, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H880:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    .line 298
    new-instance v3, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    const-wide v14, 0x3fca8cbd1244a622L    # 0.20742

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfo()Ljava/util/Map;

    move-result-object v16

    const-string v4, "UNKNOW"

    const/4 v5, 0x3

    const-wide v6, 0x3fbdde15ca6ca03cL    # 0.11667

    const-wide v8, 0x3fb91fb3fa6defc8L    # 0.09814

    const-wide v10, 0x3f9111f0c34c1a8bL    # 0.01667

    const-wide/16 v12, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;-><init>(Ljava/lang/String;IDDDDDLjava/util/Map;)V

    sput-object v3, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->UNKNOW:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    .line 290
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->$values()[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->$VALUES:[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDDDDDLjava/util/Map;)V
    .registers 14

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 319
    iput-wide p3, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mToolBarMarginTopScale:D

    .line 320
    iput-wide p5, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mToolBarMarginBottomScale:D

    .line 322
    iput-wide p9, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mModePickerMarginTopScale:D

    .line 323
    iput-wide p7, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mModePickerMarginBottomScale:D

    .line 325
    iput-wide p11, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mShutterBarMarginBottomScale:D

    .line 326
    iput-object p13, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mPreviewMoveDistanceScale:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(II)Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    .registers 6

    int-to-float v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 330
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 331
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UIScaleInfo] getInstance: heightBase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x2f8

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x320

    if-eq v0, v1, :cond_38

    const/16 v1, 0x370

    if-eq v0, v1, :cond_35

    .line 340
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->UNKNOW:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->setSize(II)Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    move-result-object p0

    return-object p0

    .line 338
    :cond_35
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H880:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-object p0

    .line 336
    :cond_38
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H800:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-object p0

    .line 334
    :cond_3b
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->H760:Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-object p0
.end method

.method private static getPreviewMoveDistanceInfo()Ljava/util/Map;
    .registers 14

    const-wide v10, 0x3fa73eab367a0f91L    # 0.0454

    const-wide v12, 0x3fbac710cb295e9eL    # 0.1046

    const-wide v0, 0x3fb189374bc6a7f0L    # 0.0685

    const-wide v2, 0x3fa73eab367a0f91L    # 0.0454

    const-wide v4, 0x3fbac710cb295e9eL    # 0.1046

    const-wide v6, 0x3fc5566cf41f212dL    # 0.1667

    const-wide v8, 0x3fb8e219652bd3c3L    # 0.0972

    .line 403
    invoke-static/range {v0 .. v13}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfo(DDDDDDD)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPreviewMoveDistanceInfo(DDDDDDD)Ljava/util/Map;
    .registers 18

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 418
    const-string v2, ""

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 417
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 422
    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 421
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object p0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 426
    const-string p1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 425
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object p2, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 430
    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    .line 429
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string p1, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    .line 434
    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    .line 433
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string p1, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    .line 438
    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 437
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string p1, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    .line 442
    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {p10, p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 441
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string p1, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    .line 446
    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p0

    .line 447
    invoke-static/range {p12 .. p13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 445
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;
    .registers 3

    .line 454
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 455
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 457
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    .registers 2

    .line 290
    const-class v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    .registers 1

    .line 290
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->$VALUES:[Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    return-object v0
.end method


# virtual methods
.method public getModePickerHeightScale()D
    .registers 3

    const-wide v0, 0x3fc3e963dc486ad3L    # 0.15556

    return-wide v0
.end method

.method public getModePickerMarginBottomScale()D
    .registers 7

    .line 373
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 374
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, -0x40d8d64ac4f24cccL    # -1.76719067464326E-4

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3feef3bad035a8e6L    # 0.967252165469543

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x40941971960731afL    # 1286.36092387429

    sub-double/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    .line 373
    :cond_2b
    :goto_2b
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mModePickerMarginBottomScale:D

    return-wide v0
.end method

.method public getPopSettingUIHeightScale()D
    .registers 3

    const-wide v0, 0x3fc7775b81301648L    # 0.18333

    return-wide v0
.end method

.method public getPopSettingUIMarginBottomScale()D
    .registers 3

    const-wide v0, 0x3fa2046c764adff8L    # 0.03519

    return-wide v0
.end method

.method public getPopSettingUIMarginTopScale()D
    .registers 3

    const-wide v0, 0x3f96c0d6f544bb1bL    # 0.02222

    return-wide v0
.end method

.method public getPreviewMoveDistanceScale()Ljava/util/Map;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mPreviewMoveDistanceScale:Ljava/util/Map;

    return-object p0
.end method

.method public getShutterBarHeightScale()D
    .registers 3

    const-wide v0, 0x3fc7775b81301648L    # 0.18333

    return-wide v0
.end method

.method public getShutterBarMarginBottomScale()D
    .registers 7

    .line 382
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 383
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, -0x40c7f00a8ac1e5a8L    # -3.6716215731084E-4

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    int-to-double v2, v2

    const-wide v4, 0x40020adfc16d5130L    # 2.25530959238872

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x40a808f9ad057a9eL    # 3076.48764817354

    sub-double/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    .line 382
    :cond_2b
    :goto_2b
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mShutterBarMarginBottomScale:D

    return-wide v0
.end method

.method public getToolBarHeightScale()D
    .registers 3

    const-wide v0, 0x3fbc71b4784230fdL    # 0.11111

    return-wide v0
.end method

.method public getToolBarMarginBottomScale()D
    .registers 7

    .line 360
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 361
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f1173771c9e7b48L    # 6.6570420271789E-5

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fcaf6e22fc19ca6L    # 0.210659287756447

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x406c86de3e87f931L    # 228.214629426549

    add-double/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    .line 360
    :cond_2b
    :goto_2b
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mToolBarMarginBottomScale:D

    return-wide v0
.end method

.method public getToolBarMarginTopScale()D
    .registers 7

    .line 355
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 356
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f3aeb1484787ff7L    # 4.10740384241492E-4

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3ffb384ac56ecf87L    # 1.70124318239411

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x409cd9ad60742bc5L    # 1846.41931325452

    add-double/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    .line 355
    :cond_2b
    :goto_2b
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mToolBarMarginTopScale:D

    return-wide v0
.end method

.method public setSize(II)Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    .registers 4

    const/16 v0, 0x438

    .line 345
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mWidth:I

    mul-int/2addr p2, v0

    .line 346
    div-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->mHeight:I

    return-object p0
.end method
