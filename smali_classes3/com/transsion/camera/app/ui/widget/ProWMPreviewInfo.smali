.class public Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

.field private mCurStyleIndex:I

.field private mCurrentModeName:Ljava/lang/String;

.field private mHideDeviceInfo:Z

.field private mLocationSelected:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mStyles:Ljava/util/List;

.field private mStylesCountMoreThanOne:Z

.field private mTimeSelected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWMPreviewInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->init()V

    return-void
.end method

.method private currentAIArtMuseumMode()Z
    .registers 2

    .line 520
    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentAIGCMode()Z
    .registers 2

    .line 516
    const-string v0, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentLongExposureMode()Z
    .registers 2

    .line 524
    const-string v0, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBl1CenterVertical()Z
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1OnCenterVertical:Z

    return p0
.end method

.method public getBl1PaddingRight()I
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1PaddingRight:I

    return p0
.end method

.method public getBl1Res()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1Res:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBl1Show()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1Show:Z

    return p0
.end method

.method public getBl1Size()I
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1SSize:I

    return p0
.end method

.method public getBrandColor()I
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifColor:I

    return p0
.end method

.method public getBrandCoorX()I
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDCoorX:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSCoorX:I

    return p0
.end method

.method public getBrandCoorY()I
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDCoorY:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSCoorY:I

    return p0
.end method

.method public getBrandFont()Landroid/graphics/Typeface;
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandFont:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 272
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "default brand font"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    const-string p0, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 275
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "custom brand font"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandFont:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getBrandOnLeft()Z
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandOnLeft:Z

    return p0
.end method

.method public getBrandRes()Ljava/lang/String;
    .registers 5

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mHideDeviceInfo:Z

    if-eqz v0, :cond_7

    .line 281
    const-string p0, "XXX"

    return-object p0

    .line 284
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkBrandCustomize:Z

    if-eqz v0, :cond_3f

    .line 285
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    const-string v0, "brand_res"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 287
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "watermarkCustomize_proWatermarkPreview:getBrandWatermark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p0, v0, v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 290
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 293
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandRes:Ljava/lang/String;

    return-object p0
.end method

.method public getBrandShow()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mHideDeviceInfo:Z

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandShow:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public getBrandSize()I
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSSize:I

    return p0
.end method

.method public getCurStyleIndex()I
    .registers 1

    .line 492
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyleIndex:I

    return p0
.end method

.method public getExifColor()I
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifColor:I

    return p0
.end method

.method public getExifCoorX()I
    .registers 2

    .line 367
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDCoorX:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSCoorX:I

    return p0
.end method

.method public getExifCoorY()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationLeftOfTime()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 371
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    if-eqz v0, :cond_f

    goto :goto_14

    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSCoorY:I

    return p0

    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDCoorY:I

    return p0

    .line 373
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_22

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDCoorY:I

    return p0

    :cond_22
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSCoorY:I

    return p0
.end method

.method public getExifFont()Landroid/graphics/Typeface;
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifFont:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 322
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "default exif font"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    const-string p0, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 325
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "custom exif font"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifFont:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getExifOnLeft()Z
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifOnLeft:Z

    return p0
.end method

.method public getExifRes()Ljava/lang/String;
    .registers 3

    .line 330
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIGCMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_aigc_portrait:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 332
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIArtMuseumMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_ai_art_museum:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 334
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentLongExposureMode()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v1, "key_long_exposure_scene"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    goto :goto_6c

    :sswitch_38
    const-string v1, "lightpainting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 348
    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_light_painting:I

    goto :goto_6e

    .line 337
    :sswitch_43
    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6c

    :sswitch_4a
    const-string v1, "flowingwater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 345
    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_flowing_water:I

    goto :goto_6e

    .line 337
    :sswitch_55
    const-string/jumbo v1, "traffic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 342
    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_traffic:I

    goto :goto_6e

    .line 337
    :sswitch_61
    const-string v1, "stellartrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 339
    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_stellar_track:I

    goto :goto_6e

    .line 352
    :cond_6c
    :goto_6c
    sget v0, Lcom/transsion/camera/R$string;->gold_watermark_setting_preview_star:I

    .line 355
    :goto_6e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifRes:Ljava/lang/String;

    return-object p0

    :sswitch_data_7a
    .sparse-switch
        -0x7e5d776a -> :sswitch_61
        -0x3f9dde03 -> :sswitch_55
        -0x3a4e425d -> :sswitch_4a
        0x360652 -> :sswitch_43
        0x533119da -> :sswitch_38
    .end sparse-switch
.end method

.method public getExifShow()Z
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifShow:Z

    return p0
.end method

.method public getExifSize()I
    .registers 2

    .line 377
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSSize:I

    return p0
.end method

.method public getLocationAlignLeft()Z
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationAlignLeft:Z

    return p0
.end method

.method public getLocationColor()I
    .registers 1

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationColor:I

    return p0
.end method

.method public getLocationCoorX()I
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDCoorX:I

    return p0
.end method

.method public getLocationCoorY()I
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDCoorY:I

    return p0
.end method

.method public getLocationFont()Landroid/graphics/Typeface;
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationFont:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 440
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "default location font"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    const-string p0, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 443
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "custom location font"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationFont:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getLocationLeftOfTime()Z
    .registers 1

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationLeftOfTime:Z

    return p0
.end method

.method public getLocationShow()Z
    .registers 2

    .line 435
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationShow:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getLocationSize()I
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDSize:I

    return p0
.end method

.method public getRootBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mRootBackground:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedIndexByValue(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 116
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    :cond_1e
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getSelectedIndexByValue not found, return 0 "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getSl1BottomAlignBrandText()Z
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1BottomAlignBrandText:Z

    return p0
.end method

.method public getSl1CoorY()I
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1DCoorY:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1SCoorY:I

    return p0
.end method

.method public getSl1PaddingLeft()I
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1PaddingLeft:I

    return p0
.end method

.method public getSl1Res()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1Res:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSl1Show()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mHideDeviceInfo:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1Show:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getSl1Size()I
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1DSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1SSize:I

    return p0
.end method

.method public getSl2PaddingRight()I
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2PaddingRight:I

    return p0
.end method

.method public getSl2Res()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2Res:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSl2Show()Z
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2Show:Z

    return p0
.end method

.method public getSl2Size()I
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2DSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2SSize:I

    return p0
.end method

.method public getSl3CoorY()I
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3DCoorY:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3SCoorY:I

    return p0
.end method

.method public getSl3MarginLeft()I
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3MarginLeft:I

    return p0
.end method

.method public getSl3Res()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3Res:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSl3RightOfSl1()Z
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3RightOfSl1:Z

    return p0
.end method

.method public getSl3Show()Z
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3Show:Z

    return p0
.end method

.method public getSl3Size()I
    .registers 2

    .line 219
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3DSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3SSize:I

    return p0
.end method

.method public getSl4BetweenTimeAndLocation()Z
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4betweenTimeAndLocation:Z

    return p0
.end method

.method public getSl4CoorY()I
    .registers 2

    .line 247
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4DCoorY:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4SCoorY:I

    return p0
.end method

.method public getSl4Res()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4Res:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSl4Show()Z
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4Show:Z

    return p0
.end method

.method public getSl4Size()I
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4DSize:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4SSize:I

    return p0
.end method

.method public getStyleNameFor(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_16

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    .line 508
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleName:Ljava/lang/String;

    return-object p0

    .line 505
    :cond_16
    :goto_16
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! getStylesCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStylesCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    const-string p0, "White"

    return-object p0
.end method

.method public getStyleTabFor(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-ltz p1, :cond_1d

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_1d

    .line 500
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleTabResId:I

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 497
    :cond_1d
    :goto_1d
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! getStylesCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStylesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$drawable;->prowm_style_white:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getStyleValue()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleValue:Ljava/lang/String;

    return-object p0
.end method

.method public getStylesCount()I
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .registers 5

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 406
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy.MM.dd HH:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_21

    .line 408
    :cond_17
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy.MM.dd hh:mm a"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 410
    :goto_21
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 411
    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeColor()I
    .registers 1

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeColor:I

    return p0
.end method

.method public getTimeCoorX()I
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDCoorX:I

    return p0
.end method

.method public getTimeCoorY()I
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDCoorY:I

    return p0
.end method

.method public getTimeFont()Landroid/graphics/Typeface;
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeFont:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 390
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "default time font"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    const-string p0, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 393
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "custom time font"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeFont:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getTimeOnLeft()Z
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeOnLeft:Z

    return p0
.end method

.method public getTimeRes()Ljava/lang/String;
    .registers 1

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSystemTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeShow()Z
    .registers 2

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeShow:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getTimeSize()I
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDSize:I

    return p0
.end method

.method public init()V
    .registers 8

    .line 54
    const-string v0, "prowm_styles"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :try_start_4
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getArrayId(Ljava/lang/String;)I

    move-result v3

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkStylesCustomize:Z

    if-eqz v4, :cond_3f

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 60
    sget-object v4, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "watermarkCustomize_proWatermarkStyles: wmOptionalResNames = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v3, v0, v5}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_3f

    :catchall_3a
    move-exception p0

    goto/16 :goto_d1

    :catch_3d
    move-exception v0

    goto :goto_a5

    .line 65
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    move v0, v1

    .line 66
    :goto_46
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_84

    .line 67
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_63

    if-ne v3, v4, :cond_56

    goto :goto_63

    .line 79
    :cond_56
    new-instance v4, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;-><init>(Landroid/content/Context;I)V

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 69
    :cond_63
    :goto_63
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 71
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->getStyleId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_81

    if-eq v3, v4, :cond_81

    .line 74
    new-instance v4, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;-><init>(Landroid/content/Context;I)V

    .line 75
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 85
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 86
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "init error, no style found! use default style."

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$style;->prowm_default:I

    invoke-direct {v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;-><init>(Landroid/content/Context;I)V

    .line 88
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a1} :catch_3d
    .catchall {:try_start_4 .. :try_end_a1} :catchall_3a

    .line 94
    :cond_a1
    :goto_a1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_be

    .line 91
    :goto_a5
    :try_start_a5
    sget-object v3, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProWMPreviewInfo init error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_a5 .. :try_end_bb} :catchall_3a

    if-eqz v2, :cond_be

    goto :goto_a1

    .line 98
    :cond_be
    :goto_be
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_c8

    move v1, v2

    :cond_c8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStylesCountMoreThanOne:Z

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mHideDeviceInfo:Z

    return-void

    :goto_d1
    if-eqz v2, :cond_d6

    .line 94
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    :cond_d6
    throw p0
.end method

.method public onLocationClicked(Z)V
    .registers 2

    .line 480
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mLocationSelected:Z

    return-void
.end method

.method public onTimeClicked(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mTimeSelected:Z

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 528
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public stylesCountMoreThanOne()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStylesCountMoreThanOne:Z

    return p0
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateSelectedStyle(I)V
    .registers 3

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->stylesCountMoreThanOne()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const/4 p1, 0x0

    .line 110
    :cond_13
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyleIndex:I

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->mCurStyle:Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;

    return-void
.end method
