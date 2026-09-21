.class Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScreenManager5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIInfo"
.end annotation


# instance fields
.field private final mModePickerHeight:I

.field private final mModePickerMarginBottom:I

.field private final mModePickerMarginTop:I

.field private final mPopSettingUIHeight:I

.field private final mPopSettingUIMarginBottom:I

.field private final mPopSettingUIMarginTop:I

.field private final mPreviewMoveDistance:Ljava/util/Map;

.field private final mShutterBarHeight:I

.field private final mShutterBarMarginBottom:I

.field private final mToolBarHeight:I

.field private final mToolBarMarginBottom:I

.field private final mToolBarMarginTop:I


# direct methods
.method constructor <init>(II)V
    .registers 14

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    .line 181
    invoke-static {}, Lcom/transsion/camera/app/ui/ScreenManager5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIInfo: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getInstance(II)Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;

    move-result-object v0

    int-to-double v1, p1

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getToolBarHeightScale()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarHeight:I

    .line 184
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getToolBarMarginTopScale()D

    move-result-wide v4

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarMarginTop:I

    .line 185
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getToolBarMarginBottomScale()D

    move-result-wide v5

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarMarginBottom:I

    .line 187
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getShutterBarHeightScale()D

    move-result-wide v6

    mul-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mShutterBarHeight:I

    .line 188
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getShutterBarMarginBottomScale()D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mShutterBarMarginBottom:I

    .line 190
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPopSettingUIHeightScale()D

    move-result-wide v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPopSettingUIHeight:I

    .line 191
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPopSettingUIMarginTopScale()D

    move-result-wide v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPopSettingUIMarginTop:I

    .line 192
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPopSettingUIMarginBottomScale()D

    move-result-wide v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPopSettingUIMarginBottom:I

    .line 194
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getModePickerHeightScale()D

    move-result-wide v8

    mul-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerHeight:I

    .line 195
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getModePickerMarginBottomScale()D

    move-result-wide v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerMarginBottom:I

    sub-int/2addr p2, v3

    sub-int/2addr p2, v4

    sub-int/2addr p2, v5

    sub-int/2addr p2, v8

    sub-int/2addr p2, v9

    sub-int/2addr p2, v6

    sub-int/2addr p2, v7

    mul-int/lit8 p1, p1, 0x4

    .line 197
    div-int/lit8 p1, p1, 0x3

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerMarginTop:I

    .line 201
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->getPreviewMoveDistanceScale()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_ed
    return-void
.end method


# virtual methods
.method public final getModePickerHeight()I
    .registers 1

    .line 211
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerHeight:I

    return p0
.end method

.method public final getModePickerMarginBottom()I
    .registers 1

    .line 236
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerMarginBottom:I

    return p0
.end method

.method public getModePickerMarginTop()I
    .registers 1

    .line 232
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mModePickerMarginTop:I

    return p0
.end method

.method public getPopSettingUIHeight()I
    .registers 1

    .line 219
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPopSettingUIHeight:I

    return p0
.end method

.method public getPopSettingUIMarginTop()I
    .registers 1

    .line 244
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPopSettingUIMarginTop:I

    return p0
.end method

.method public final getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I
    .registers 9

    const/4 v0, 0x0

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 253
    invoke-static {p1, p2, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 254
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-eq p4, p1, :cond_18

    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 255
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    const-string p1, ""

    invoke-static {p1, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto/16 :goto_b6

    :cond_29
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 257
    invoke-static {p1, p2, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 258
    const-string p1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 259
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-eq p4, p1, :cond_41

    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 261
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_b6

    .line 263
    :cond_4f
    const-string p1, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 264
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_b6

    .line 267
    :cond_69
    const-string p1, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 268
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_b6

    .line 271
    :cond_83
    const-string p1, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 272
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_b6

    .line 275
    :cond_9d
    const-string p1, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 276
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p4, p1, :cond_b6

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mPreviewMoveDistance:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;->-$$Nest$smgetPreviewMoveDistanceInfoKey(Ljava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    :cond_b6
    :goto_b6
    if-nez v1, :cond_b9

    return v0

    .line 282
    :cond_b9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getShutterBarHeight()I
    .registers 1

    .line 215
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mShutterBarHeight:I

    return p0
.end method

.method public final getShutterBarMarginBottom()I
    .registers 1

    .line 240
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mShutterBarMarginBottom:I

    return p0
.end method

.method public final getToolBarHeight()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarHeight:I

    return p0
.end method

.method public final getToolBarMarginBottom()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarMarginBottom:I

    return p0
.end method

.method public final getToolBarMarginTop()I
    .registers 1

    .line 223
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->mToolBarMarginTop:I

    return p0
.end method
