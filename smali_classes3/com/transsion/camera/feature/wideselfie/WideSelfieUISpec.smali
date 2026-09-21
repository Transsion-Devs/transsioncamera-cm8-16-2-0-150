.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;
.super Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TEXT_MAX_LINE_WIDTH_LAND_RATIO:F = 0.5833f

.field public static final TEXT_MAX_LINE_WIDTH_RATIO:F = 0.5833f

.field public static final THUMB_HEIGHT_LAND_RATIO:F = 0.2093f

.field public static final THUMB_HEIGHT_RATIO:F = 0.2083f


# instance fields
.field mBgBorder:Z

.field mBgBorderColor:I

.field private final mHoverDownPreviewLand:I

.field public mRatio:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WideSelfieUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 5

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidth:I

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowHeight:I

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidthLand:I

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowHeightLand:I

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalHover:I

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalLand:I

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_hover_down_preivew_land_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mHoverDownPreviewLand:I

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->line_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->wideselfie_bg_border_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorderColor:I

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_preview_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_bg_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorder:Z

    .line 60
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->updateScreenFormDimension(I)V

    return-void
.end method


# virtual methods
.method public calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V
    .registers 15

    if-eqz p1, :cond_27a

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    goto/16 :goto_27a

    .line 69
    :cond_8
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 73
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, p1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    .line 76
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v4, v0

    div-float/2addr v1, v4

    .line 77
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xb4

    const/4 v5, 0x1

    if-eq p3, v2, :cond_3e

    if-eqz p3, :cond_3e

    if-eq p3, v4, :cond_3e

    move v2, v5

    goto :goto_3f

    :cond_3e
    move v2, v3

    .line 84
    :goto_3f
    iget-object v6, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    if-ne v6, v5, :cond_5d

    iget v6, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    if-ne v5, v6, :cond_5d

    if-nez v2, :cond_55

    .line 87
    iget v6, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mThumbHeightConfig:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    goto :goto_82

    .line 89
    :cond_55
    iget v1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mThumbHeightConfigLand:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    goto :goto_82

    :cond_5d
    if-nez v2, :cond_71

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v6, 0x3e554c98    # 0.2083f

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    goto :goto_82

    .line 95
    :cond_71
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v6, 0x3e5652bd    # 0.2093f

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 99
    :goto_82
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    rem-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_8b

    sub-int/2addr v1, v5

    .line 100
    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 103
    :cond_8b
    iput v3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mHoverDownPreviewLandOffset:I

    const v1, 0x3f155326    # 0.5833f

    .line 104
    const-string v3, "on"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v2, :cond_175

    .line 105
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int v8, p1, v2

    div-int/2addr v8, v0

    iput v8, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int/2addr v8, v7

    .line 107
    iput v8, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 108
    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, v8

    shr-int/2addr p1, v5

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3df79a6b    # 0.1209f

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    const v0, 0x3deb50b1    # 0.1149f

    if-ne p1, v5, :cond_117

    .line 113
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    if-ne v5, p1, :cond_ea

    if-nez p3, :cond_d5

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalExpanded:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto/16 :goto_169

    :cond_d5
    if-ne p3, v4, :cond_169

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float p3, p3

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalExpanded:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    sub-float/2addr p3, v0

    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float p2, p2

    sub-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto/16 :goto_169

    :cond_ea
    if-nez p3, :cond_fd

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_169

    :cond_fd
    if-ne p3, v4, :cond_169

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p3, v0

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_169

    .line 126
    :cond_117
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v7, :cond_130

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_169

    .line 128
    :cond_130
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v6, :cond_169

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3e4db8bb    # 0.2009f

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_169

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-double p2, p2

    const-wide v2, 0x3fbc63f1370a3d71L    # 0.110899997651577

    mul-double/2addr p2, v2

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    float-to-double v2, v0

    div-double/2addr p2, v2

    double-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 135
    :cond_169
    :goto_169
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTextMaxLineWidth:I

    return-void

    .line 137
    :cond_175
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int v4, v0, v2

    .line 138
    div-int/2addr v4, p1

    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 140
    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    mul-int/2addr v4, v7

    .line 141
    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    const v4, 0x3dddcc64    # 0.1083f

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-ne p3, v8, :cond_19d

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    iget v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v9, v4

    float-to-int v4, v9

    iput v4, v2, Landroid/graphics/Point;->x:I

    goto :goto_1b2

    :cond_19d
    if-ne p3, v7, :cond_1b2

    .line 146
    iget-object v9, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int v2, p1, v2

    iget-object v10, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    iget v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v10, v4

    float-to-int v4, v10

    sub-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 149
    :cond_1b2
    :goto_1b2
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    if-ne v2, v5, :cond_208

    .line 150
    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    if-ne v5, v2, :cond_1db

    if-ne p3, v8, :cond_1cb

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalLand:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Point;->x:I

    goto/16 :goto_242

    :cond_1cb
    if-ne p3, v7, :cond_242

    .line 154
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalLand:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->x:I

    goto :goto_242

    :cond_1db
    const v2, 0x3d79db23    # 0.061f

    if-ne p3, v8, :cond_1f1

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Point;->x:I

    goto :goto_242

    :cond_1f1
    if-ne p3, v7, :cond_242

    .line 161
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->x:I

    goto :goto_242

    .line 165
    :cond_208
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p3

    const/4 v2, 0x4

    const v4, 0x3e561e4f    # 0.2091f

    if-ne p3, v2, :cond_225

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v4

    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Point;->x:I

    goto :goto_242

    .line 167
    :cond_225
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p3

    const/4 v2, 0x5

    if-ne p3, v2, :cond_242

    .line 168
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 172
    :cond_242
    :goto_242
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v0, p3

    shr-int/lit8 p3, v0, 0x1

    iput p3, p1, Landroid/graphics/Point;->y:I

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v6, :cond_26e

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26e

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mHoverDownPreviewLand:I

    int-to-float v2, v0

    div-float/2addr v2, p2

    sub-float/2addr p3, v2

    mul-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mHoverDownPreviewLandOffset:I

    int-to-float p3, v0

    div-float/2addr p3, p2

    float-to-int p2, p3

    .line 176
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 179
    :cond_26e
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTextMaxLineWidth:I

    return-void

    .line 65
    :cond_27a
    :goto_27a
    sget-object p2, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateThumbnailSize previewSize or mPreviewRect is null, previewSize:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mPreviewRect:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
