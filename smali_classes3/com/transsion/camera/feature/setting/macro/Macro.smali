.class public Lcom/transsion/camera/feature/setting/macro/Macro;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final RATIO_1_1:D = 1.0

.field private static final RATIO_4_3:D = 1.3333333333333333

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final GROUP_SIZE:I

.field private final MACRO_THRESHOLD:F

.field private mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mCount:I

.field private mIsDistortionNeedShow:Z

.field private mIsMacroActive:Z

.field private mIsMacroSupportZoom:Z

.field private mIsMacroTorchSupport:Z

.field private mIsWideCamUISupport:Z

.field private mIsWideOrMacroCamera:Z

.field private mMacroData:[F

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method public static synthetic $r8$lambda$dSrbcExZzBNX_diI-kYx-i8SdrY(Lcom/transsion/camera/feature/setting/macro/Macro;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/macro/Macro;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsWideOrMacroCamera(Lcom/transsion/camera/feature/setting/macro/Macro;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Macro"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    const/16 v1, 0xa

    .line 67
    iput v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->GROUP_SIZE:I

    .line 68
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroData:[F

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCount:I

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroActive:Z

    const/high16 v0, 0x40c00000    # 6.0f

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->MACRO_THRESHOLD:F

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/setting/macro/Macro$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/macro/Macro$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/macro/Macro;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 184
    new-instance v0, Lcom/transsion/camera/feature/setting/macro/Macro$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/macro/Macro$1;-><init>(Lcom/transsion/camera/feature/setting/macro/Macro;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private addFlashOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 297
    const-string p0, "key_flash"

    const-string v0, "off"

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string p0, "key_flash_facade"

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 311
    const-string p0, "key_hdr"

    const-string v0, "off"

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private addMacroTorchOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 285
    const-string p0, "key_macro_torch"

    const-string v0, "off"

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 323
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    const-string/jumbo v0, "value_zoom_support_macro_active"

    const-string v1, "key_camera_zoom"

    if-eqz p0, :cond_11

    .line 324
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_1:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 326
    :cond_11
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_2:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private getAverage([F)F
    .registers 5

    .line 407
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_b

    aget v2, p1, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 410
    :cond_b
    array-length p0, p1

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getCurrentRatio()D
    .registers 3

    .line 267
    const-string v0, "key_picture_size"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x78

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz v1, :cond_2f

    if-nez p0, :cond_24

    goto :goto_2f

    .line 274
    :cond_24
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    div-int/2addr v0, p0

    int-to-double v0, v0

    return-wide v0

    :cond_2f
    :goto_2f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getVariance([F)F
    .registers 12

    .line 397
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->getAverage([F)F

    move-result p0

    .line 399
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_19

    aget v3, p1, v2

    float-to-double v4, v1

    sub-float/2addr v3, p0

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 400
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 402
    :cond_19
    array-length p0, p1

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private handlerRestriction(Z)V
    .registers 5

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlerRestriction] isWideCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMacroTorchSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " getValue():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsDistortionNeedShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_e5

    .line 208
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    const-string v0, "head_value_on_distortion_off"

    const-string v1, "on"

    const/4 v2, 0x0

    if-eqz p1, :cond_88

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 210
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    if-eqz p1, :cond_58

    .line 211
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_62

    .line 213
    :cond_58
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_on_distortion_off_2m"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 215
    :goto_62
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 216
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    if-eqz v0, :cond_bc

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addFlashOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreMacroTorchRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_bc

    .line 221
    :cond_70
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_off"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 223
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    if-eqz v0, :cond_bc

    .line 224
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreFlashRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addMacroTorchOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_bc

    .line 231
    :cond_88
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 232
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 233
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addHdrOffRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_bc

    .line 235
    :cond_9e
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_off_distortion_off"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_b9

    .line 238
    :cond_af
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_value_off_distortion_on"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 240
    :goto_b9
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_bc
    :goto_bc
    if-eqz p1, :cond_fb

    .line 245
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_df

    .line 247
    const-string v0, "key_volume_key"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 248
    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 250
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_df

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 254
    :cond_df
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void

    .line 257
    :cond_e5
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    if-eqz p1, :cond_fb

    .line 258
    invoke-static {}, Lcom/transsion/camera/feature/setting/macro/MacroRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "head_macro_torch_off"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_fb
    return-void
.end method

.method private isCameraFacingFront(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    .line 119
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_1a

    .line 123
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 124
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 126
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    return v0

    :catch_1a
    :cond_1a
    return p0
.end method

.method private isFullScreen()Z
    .registers 7

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getCurrentRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v0, v2

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v2, v4

    if-ltz p0, :cond_25

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 74
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    .line 75
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->onMacroDataCallback(F)V

    return-void
.end method

.method private restoreFlashRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 304
    const-string p0, "key_flash"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string p0, "key_flash_facade"

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private restoreHdrRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 317
    const-string p0, "key_hdr"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private restoreMacroTorchRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 291
    const-string p0, "key_macro_torch"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private setMacroCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V
    .registers 5

    .line 355
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setMacroCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 359
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 139
    const-string p0, "key_macro"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 134
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDistortionNeedShow:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsDistortionNeedShow:Z

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamUISupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideCamUISupport:Z

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoom:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroSupportZoom:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,cameraId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMacroCameraId()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5a

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v1, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v1, v3

    :goto_5b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    if-eqz p1, :cond_a4

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_66

    goto :goto_a4

    .line 105
    :cond_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/macro/Macro;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 106
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 108
    :cond_73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public onMacroDataCallback(F)V
    .registers 5

    .line 375
    iget v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCount:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-lt v0, v1, :cond_9

    .line 376
    iput v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCount:I

    .line 378
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroData:[F

    iget v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCount:I

    aput p1, v0, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 379
    iput v1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mCount:I

    .line 380
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getVariance([F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mMacroData:[F

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getAverage([F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    move v2, p1

    .line 387
    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroActive:Z

    if-eq v0, v2, :cond_33

    .line 388
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroActive:Z

    .line 389
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/setting/macro/Macro;->refreshToUI(ZZ)V

    :cond_33
    return-void

    .line 392
    :cond_34
    sget-object p0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "it is dirty data, we need drop it."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 10

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/Macro;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged MacroParameterConfig requestChangeCommand value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/Macro;->handlerRestriction(Z)V

    .line 164
    const-string p1, "on"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_50

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :cond_50
    move p1, v0

    :goto_51
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->refreshToUI(ZZ)V

    :cond_54
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-nez p2, :cond_6

    return-void

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsWideOrMacroCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->handlerRestriction(Z)V

    return-void
.end method

.method protected refreshToUI(ZZ)V
    .registers 4

    .line 364
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 367
    invoke-interface {p0, v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void

    :cond_d
    const/4 p1, -0x1

    .line 369
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_11
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 336
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isMacroTorchSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro;->mIsMacroTorchSupport:Z

    .line 337
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 90
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
