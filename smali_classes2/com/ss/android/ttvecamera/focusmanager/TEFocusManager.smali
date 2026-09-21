.class public Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOCUS_BLOCK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final FOCUS_AREA_DELTA:F

.field protected final FOCUS_RADIUS:I

.field protected final METERING_AREA_DELTA:F

.field mCameraFacing:I

.field private mCameraType:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
    .end annotation
.end field

.field private mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->FOCUS_BLOCK_LIST:Ljava/util/List;

    .line 32
    const-string v1, "multilaser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "ms40"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    .line 19
    iput v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->FOCUS_RADIUS:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->FOCUS_AREA_DELTA:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    iput v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->METERING_AREA_DELTA:F

    .line 37
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mCameraType:I

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mFocusAreas:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mMeteringAreas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public calculateFocusArea(IIFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFIII",
            "Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    const/high16 v4, 0x42b40000    # 90.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 104
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->calculateTapArea(IIFFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mFocusAreas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1c

    .line 107
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mFocusAreas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 110
    :cond_1c
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mFocusAreas:Ljava/util/List;

    new-instance p3, Landroid/hardware/Camera$Area;

    const/16 p4, 0x3e8

    invoke-direct {p3, p1, p4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mFocusAreas:Ljava/util/List;

    return-object p0
.end method

.method public calculateMeteringArea(IIFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFIII",
            "Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    const/high16 v4, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 117
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->calculateTapArea(IIFFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1c

    .line 119
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 122
    :cond_1c
    iget-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mMeteringAreas:Ljava/util/List;

    new-instance p3, Landroid/hardware/Camera$Area;

    const/16 p4, 0x3e8

    invoke-direct {p3, p1, p4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mMeteringAreas:Ljava/util/List;

    return-object p0
.end method

.method public calculateTapArea(IIFFIIILcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Landroid/graphics/Rect;
    .registers 11

    mul-float/2addr p3, p4

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    .line 129
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    mul-int/lit16 p5, p5, 0x7d0

    int-to-float p4, p5

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p4, p5

    int-to-float p1, p1

    div-float/2addr p4, p1

    float-to-int p1, p4

    const/16 p4, 0x3e8

    sub-int/2addr p1, p4

    mul-int/lit16 p6, p6, 0x7d0

    int-to-float p6, p6

    mul-float/2addr p6, p5

    int-to-float p2, p2

    div-float/2addr p6, p2

    float-to-int p2, p6

    sub-int/2addr p2, p4

    .line 132
    iget p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mCameraFacing:I

    const/4 p5, 0x1

    if-ne p0, p5, :cond_2a

    sget-object p0, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    if-ne p8, p0, :cond_2a

    neg-int p1, p1

    .line 135
    :cond_2a
    div-int/lit8 p0, p3, 0x2

    sub-int/2addr p1, p0

    const/16 p5, -0x3e8

    invoke-static {p1, p5, p4}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result p1

    sub-int/2addr p2, p0

    .line 136
    invoke-static {p2, p5, p4}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result p0

    .line 137
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 138
    new-instance p6, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v1, p0

    add-int/2addr p1, p3

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p1

    int-to-float p1, p1

    add-int/2addr p0, p3

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p6, v0, v1, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p6, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p3, p6, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v0, p6, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p6, p6, Landroid/graphics/RectF;->bottom:F

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    invoke-direct {p0, p1, p3, v0, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p5, p5, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    sget-object p3, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    if-ne p8, p3, :cond_8b

    .line 142
    invoke-static {p7, p1, p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 143
    new-instance p2, Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p4

    iget p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    iget p5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p4

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    invoke-direct {p2, p1, p3, p5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9c

    .line 144
    :cond_8b
    sget-object p1, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->ORIGINAL_FRAME:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    if-ne p8, p1, :cond_9c

    .line 145
    new-instance p2, Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, p1, p3, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    :cond_9c
    :goto_9c
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 148
    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 149
    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 150
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(I)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-object p2
.end method

.method public isSupportedFocus(Landroid/hardware/Camera$Parameters;)Z
    .registers 3

    if-eqz p1, :cond_18

    .line 80
    sget-object p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->FOCUS_BLOCK_LIST:Ljava/util/List;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 82
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .registers 3

    .line 87
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->isSupportedFocus(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportedMetering(ILandroid/hardware/Camera$Parameters;)Z
    .registers 3
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
        .end annotation
    .end param

    if-eqz p2, :cond_a

    .line 98
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public selectFocusMode(ILandroid/hardware/Camera$Parameters;Z)Ljava/lang/String;
    .registers 7
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
        .end annotation
    .end param

    .line 46
    const-string v0, ""

    if-nez p2, :cond_5

    return-object v0

    .line 51
    :cond_5
    iput p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusManager;->mCameraFacing:I

    .line 53
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x1

    .line 54
    const-string v1, "auto"

    const-string v2, "continuous-video"

    if-ne p1, p2, :cond_2b

    if-eqz p3, :cond_1b

    .line 56
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return-object v2

    .line 62
    :cond_1b
    const-string p1, "macro"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    return-object p1

    .line 64
    :cond_24
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return-object v1

    .line 68
    :cond_2b
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    return-object v2

    .line 70
    :cond_32
    const-string p1, "continuous-picture"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    return-object p1

    .line 72
    :cond_3b
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return-object v1

    :cond_42
    return-object v0
.end method
