.class public Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

.field private final mOrigin16MMBottomRegionHeightRatio:F

.field private final mOrigin16MMLeftRegionWidthRatio:F

.field private final mOrigin16MMRightRegionWidthRatio:F

.field private final mOrigin16MMTopRegionHeightRatio:F

.field private final mOrigin35MMLeftRightRegionWidthRatio:F

.field private final mOrigin35MMTopBottomRegionHeightRatio:F

.field private final mOrigin8MMBottomRegionHeightRatio:F

.field private final mOrigin8MMLeftRightRegionWidthRatio:F

.field private final mOrigin8MMTopRegionHeightRatio:F

.field private mPreviewHeight:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewWidth:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    .line 33
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x14a

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 36
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMTopRegionHeightRatio:F

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v2, v1

    .line 37
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMLeftRightRegionWidthRatio:F

    const/16 v1, 0xa0

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 38
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMBottomRegionHeightRatio:F

    const/16 v0, 0xf00

    .line 41
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result v1

    const/16 v2, 0x12c

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 46
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMTopRegionHeightRatio:F

    const/16 v2, 0x28

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 47
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMLeftRegionWidthRatio:F

    const/16 v2, 0x3c

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 48
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMRightRegionWidthRatio:F

    const/16 v1, 0x168

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 49
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMBottomRegionHeightRatio:F

    const/16 v0, 0x77e

    .line 52
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result v1

    const/16 v2, 0x55

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 55
    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMTopBottomRegionHeightRatio:F

    const/16 v0, 0x32

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMLeftRightRegionWidthRatio:F

    return-void
.end method

.method private calculate16MMRestrictRect()Landroid/graphics/Rect;
    .registers 7

    .line 82
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewHeight:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMTopRegionHeightRatio:F

    mul-float/2addr v1, v0

    .line 83
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMLeftRegionWidthRatio:F

    mul-float/2addr v3, v4

    int-to-float v2, v2

    .line 84
    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMRightRegionWidthRatio:F

    mul-float/2addr v2, v4

    .line 85
    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMBottomRegionHeightRatio:F

    mul-float/2addr v0, v4

    .line 86
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v3, v3

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v5, p0, Landroid/graphics/Rect;->top:I

    float-to-int v1, v1

    add-int/2addr v5, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    float-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-direct {v4, v3, v5, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private calculate2_35_1RestrictRect()Landroid/graphics/Rect;
    .registers 6

    .line 66
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewHeight:F

    const v1, 0x40166666    # 2.35f

    div-float/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private calculate35MMRestrictRect()Landroid/graphics/Rect;
    .registers 7

    .line 92
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewHeight:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMTopBottomRegionHeightRatio:F

    mul-float/2addr v0, v1

    .line 93
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMLeftRightRegionWidthRatio:F

    mul-float/2addr v1, v2

    .line 94
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/graphics/Rect;->top:I

    float-to-int v0, v0

    add-int/2addr v4, v0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private calculate8MMRestrictRect()Landroid/graphics/Rect;
    .registers 7

    .line 74
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewHeight:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMTopRegionHeightRatio:F

    mul-float/2addr v1, v0

    .line 75
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMLeftRightRegionWidthRatio:F

    mul-float/2addr v2, v3

    .line 76
    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMBottomRegionHeightRatio:F

    mul-float/2addr v0, v3

    .line 77
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v2, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    float-to-int v1, v1

    iget v5, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    float-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-direct {v3, v4, v1, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private calculateOriginFrameWidth(I)I
    .registers 2

    const/high16 p0, 0x3f100000    # 0.5625f

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private defaultRestrictArea()Landroid/graphics/Rect;
    .registers 2

    .line 100
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public on3ATouchAreaListener(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

    return-void
.end method

.method public postRectRestrictionArea(I)Landroid/graphics/Rect;
    .registers 3

    .line 104
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mType:I

    if-eq v0, p1, :cond_6

    .line 105
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mType:I

    :cond_6
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_17

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->defaultRestrictArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 119
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate35MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate16MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 113
    :cond_21
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate8MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 110
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate2_35_1RestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public setItemType(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mType:I

    :cond_8
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewRect:Landroid/graphics/Rect;

    .line 131
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewWidth:I

    .line 132
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mPreviewHeight:F

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;

    if-eqz p1, :cond_1e

    .line 134
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->postRectRestrictionArea(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$on3ATouchAreaListener;->on3ATouchAreaChanged(Landroid/graphics/Rect;)V

    :cond_1e
    return-void
.end method
