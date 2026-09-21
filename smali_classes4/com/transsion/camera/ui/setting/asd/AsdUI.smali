.class public Lcom/transsion/camera/ui/setting/asd/AsdUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final BASE_SHOW_AUX_ZOOM_VALUE:I

.field private static final BASE_SHOW_AUX_ZOOM_VALUE_FOT_SUPER_NIGHT:I = 0xa

.field private static final MSG_UPDATE_ASD_RESULT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_RATIO_UNIT:F


# instance fields
.field private mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFakeAsdCameraVersion:I

.field private mForceHildeUI:Z

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsMacroEnable:Z

.field private mIsTeleCamera:Z

.field private mIsWideCamera:Z

.field private mNeedShowAsdUI:Z

.field private mResources:Landroid/content/res/Resources;

.field private mState:I

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

.field private mWarningType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmForceHildeUI(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mForceHildeUI:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/transsion/camera/ui/setting/asd/AsdUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForceHildeUI(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mForceHildeUI:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWarningType(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateAsdResult(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/feature/setting/asd/AsdResult;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->doUpdateAsdResult(Lcom/transsion/camera/feature/setting/asd/AsdResult;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAsdResult(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 90
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsdUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_14

    const/16 v0, 0xf

    goto :goto_16

    :cond_14
    const/16 v0, 0xa

    :goto_16
    sput v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->BASE_SHOW_AUX_ZOOM_VALUE:I

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_24

    const v0, 0x461c4000    # 10000.0f

    goto :goto_26

    :cond_24
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_26
    sput v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->ZOOM_RATIO_UNIT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 102
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 103
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 104
    iput v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    .line 106
    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    .line 107
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 108
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsTeleCamera:Z

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    .line 113
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mForceHildeUI:Z

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    .line 117
    sget v0, Lcom/transsion/camera/R$integer;->asd_night_scene_camera_version:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    .line 118
    new-instance p1, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-void
.end method

.method private checkWideMacroEnable()Z
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_macro"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 618
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    if-eqz p0, :cond_18

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private doUpdateAsdResult(Lcom/transsion/camera/feature/setting/asd/AsdResult;I)V
    .registers 16

    .line 232
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateAsdResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_22

    goto/16 :goto_49f

    :cond_22
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v3, :cond_344

    .line 242
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getAlgorithmResult()I

    move-result v5

    .line 243
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result v6

    .line 244
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDalgorithmResult(I)V

    .line 245
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDeffect(I)V

    const/4 v7, 0x2

    if-eq v5, v3, :cond_94

    if-eq v5, v7, :cond_70

    const/4 v8, 0x7

    if-eq v5, v8, :cond_5f

    const/16 v8, 0x9

    if-eq v5, v8, :cond_4d

    move v10, v1

    move-object v8, v4

    move-object v9, v8

    goto :goto_a5

    .line 267
    :cond_4d
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$drawable;->ic_asd_lowlight_hdr:I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 268
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$string;->asd_result_algorithm_night_hdr:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_5d
    move v10, v3

    goto :goto_a5

    .line 262
    :cond_5f
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$drawable;->ic_asd_lowlight_hdr:I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 263
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$string;->asd_result_algorithm_lowlight_hdr:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5d

    .line 253
    :cond_70
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$drawable;->ic_asd_hdr:I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 254
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v10, "Itel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 255
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$string;->asd_result_algorithm_hdr:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5d

    .line 257
    :cond_8b
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$string;->asd_result_algorithm_backlight:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5d

    .line 248
    :cond_94
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$drawable;->ic_asd_night:I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 249
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$string;->asd_dynamic_night:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5d

    :goto_a5
    const/16 v11, 0x32

    if-eq v6, v11, :cond_2f2

    const/16 v11, 0x33

    if-eq v6, v11, :cond_2e0

    packed-switch v6, :pswitch_data_4a0

    packed-switch v6, :pswitch_data_4c0

    goto/16 :goto_162

    .line 433
    :pswitch_b5
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_document:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 434
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_text:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_c5
    move-object v11, v10

    move v10, v3

    goto/16 :goto_304

    .line 428
    :pswitch_c9
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 429
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_dxo:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 423
    :pswitch_da
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_portrait:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 424
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_human:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 418
    :pswitch_eb
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 419
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_board:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 413
    :pswitch_fc
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 414
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_woodColor:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 408
    :pswitch_10d
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 409
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_pureColor:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 403
    :pswitch_11e
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 404
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_indoor:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 398
    :pswitch_12f
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 399
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_portrait_lawn:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c5

    .line 391
    :pswitch_140
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v11, "key_setting_barcode"

    invoke-interface {v6, v11}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "on"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_162

    .line 392
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 393
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_qrcode:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    :cond_162
    :goto_162
    move-object v6, v4

    move-object v11, v6

    goto/16 :goto_304

    .line 386
    :pswitch_166
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 387
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_lamplight:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 381
    :pswitch_178
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 382
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_ocean:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 376
    :pswitch_18a
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_landscape:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 377
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_lakes:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 371
    :pswitch_19c
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_firework:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 372
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_firework:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 366
    :pswitch_1ae
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_snow:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 367
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_snow:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 361
    :pswitch_1c0
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_landscape:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 362
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_landscape:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 356
    :pswitch_1d2
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_building:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 357
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_building:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 349
    :pswitch_1e4
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_night:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 350
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_night:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 344
    :pswitch_1f6
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_document:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 345
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_text:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 339
    :pswitch_208
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_sunset:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 340
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_sunrise:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 334
    :pswitch_21a
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_party:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 335
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_party:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 329
    :pswitch_22c
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_lawn:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 330
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_grass:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 324
    :pswitch_23e
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_beach:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 325
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_beach:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 319
    :pswitch_250
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_plant:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 320
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_plant:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 314
    :pswitch_262
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_street:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 315
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_street_view:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 309
    :pswitch_274
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_pet:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 310
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_pet:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 304
    :pswitch_286
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 305
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_mobileshops:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 299
    :pswitch_298
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_food:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 300
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_food:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 294
    :pswitch_2aa
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_flower:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 295
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_flower:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 289
    :pswitch_2bc
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_bluesky:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 290
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_sky:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 283
    :pswitch_2ce
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_portrait:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 284
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_portrait:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 443
    :cond_2e0
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 444
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_flare_radial:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 438
    :cond_2f2
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$drawable;->ic_asd_temp:I

    invoke-virtual {v6, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 439
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$string;->asd_dynamic_flare_common:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c5

    .line 450
    :goto_304
    iget v12, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    if-ne v12, v3, :cond_32d

    if-ne v5, v3, :cond_349

    .line 452
    iget v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v5, v3, :cond_31f

    if-eq v5, v7, :cond_311

    goto :goto_349

    .line 462
    :cond_311
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$string;->night_scene_camera_low_light:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 467
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_33f

    .line 454
    :cond_31f
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$string;->night_scene_camera_covered:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 459
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_33f

    .line 472
    :cond_32d
    iget v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v5, v3, :cond_332

    goto :goto_349

    .line 474
    :cond_332
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$string;->night_scene_camera_covered:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 479
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    :goto_33f
    move v10, v3

    move-object v6, v4

    move-object v8, v6

    move-object v11, v8

    goto :goto_349

    :cond_344
    move v10, v1

    move-object v6, v4

    move-object v8, v6

    move-object v9, v8

    move-object v11, v9

    .line 484
    :cond_349
    :goto_349
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->checkWideMacroEnable()Z

    move-result v5

    if-eqz v5, :cond_350

    move v10, v1

    :cond_350
    if-eqz v10, :cond_486

    .line 487
    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    if-eqz v5, :cond_486

    .line 488
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p2, :cond_49f

    if-eqz v9, :cond_362

    .line 490
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v9}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_367

    .line 492
    :cond_362
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    :goto_367
    if-eqz v8, :cond_36f

    .line 495
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_374

    .line 497
    :cond_36f
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_374
    if-eqz v11, :cond_37c

    .line 500
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v11}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_381

    .line 502
    :cond_37c
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    :goto_381
    if-eqz v6, :cond_389

    .line 505
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38e

    .line 507
    :cond_389
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_38e
    if-eqz v9, :cond_392

    if-nez v8, :cond_396

    :cond_392
    if-eqz v11, :cond_3a1

    if-eqz v6, :cond_3a1

    .line 510
    :cond_396
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 511
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_3a6

    .line 513
    :cond_3a1
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 515
    :goto_3a6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result p2

    if-eqz p2, :cond_408

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p2, :cond_408

    if-eqz p2, :cond_408

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 518
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p2, v0, :cond_408

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 519
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_408

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 520
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p2, v0, :cond_408

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 521
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_408

    goto/16 :goto_49f

    .line 525
    :cond_408
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->updateGuideUIState(Lcom/transsion/camera/feature/setting/asd/AsdResult;)V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p2, "key_camera_zoom"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 532
    sget p2, Lcom/transsion/camera/ui/setting/asd/AsdUI;->BASE_SHOW_AUX_ZOOM_VALUE:I

    sget v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->ZOOM_RATIO_UNIT:F

    float-to-int v1, v0

    mul-int/2addr p2, v1

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_465

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 534
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_470

    :cond_465
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 535
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isSuperNightGuideSupport()Z

    move-result v1

    if-eqz v1, :cond_470

    float-to-int p2, v0

    mul-int/lit8 p2, p2, 0xa

    .line 538
    :cond_470
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsTeleCamera:Z

    if-eqz v0, :cond_47c

    .line 539
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    :cond_47c
    if-gt p1, p2, :cond_49f

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 546
    :cond_486
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAsdUI:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult(Z)V

    if-nez p2, :cond_49f

    .line 548
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDalgorithmResult(I)V

    .line 549
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDeffect(I)V

    :cond_49f
    :goto_49f
    return-void

    :pswitch_data_4a0
    .packed-switch 0x1
        :pswitch_2ce
        :pswitch_2bc
        :pswitch_2aa
        :pswitch_298
        :pswitch_286
        :pswitch_274
        :pswitch_262
        :pswitch_250
        :pswitch_23e
        :pswitch_22c
        :pswitch_21a
        :pswitch_208
        :pswitch_1f6
        :pswitch_1e4
    .end packed-switch

    :pswitch_data_4c0
    .packed-switch 0x10
        :pswitch_1d2
        :pswitch_1c0
        :pswitch_1ae
        :pswitch_19c
        :pswitch_18a
        :pswitch_178
        :pswitch_166
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
        :pswitch_fc
        :pswitch_eb
        :pswitch_da
        :pswitch_c9
        :pswitch_b5
    .end packed-switch
.end method

.method private hideAsdResult(Z)V
    .registers 5

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_41

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    if-eqz p1, :cond_41

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->resetTwinkleGuide()V

    :cond_41
    return-void
.end method

.method private registerListenerToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterListenerToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 161
    const-string p0, "key_asd"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    const/16 v0, 0xed

    if-eq p1, v0, :cond_19

    const/16 v0, 0xee

    if-eq p1, v0, :cond_10

    return-void

    .line 564
    :cond_10
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    const/4 p1, 0x0

    .line 565
    iget v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mState:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->doUpdateAsdResult(Lcom/transsion/camera/feature/setting/asd/AsdResult;I)V

    return-void

    :cond_19
    const/4 p1, 0x0

    .line 559
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    .line 560
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult(Z)V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 177
    sget-object p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_c
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 182
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsTeleCamera:Z

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5b

    .line 188
    const-string p1, "key_fake_asd_camera_status"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    .line 189
    const-string p1, "key_macro_status"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 201
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult(Z)V

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1c

    .line 205
    const-string v0, "key_fake_asd_camera_status"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 206
    const-string v0, "key_macro_status"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 208
    :cond_1c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mNeedShowAsdUI:Z

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mForceHildeUI:Z

    .line 210
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method protected updateGuideUIState(Lcom/transsion/camera/feature/setting/asd/AsdResult;)V
    .registers 2

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
