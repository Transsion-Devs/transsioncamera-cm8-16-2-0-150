.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final LANDMARK_DOT_SIZE:F = 4.5f

.field private static final LANDMARK_STROKE_WIDTH:F = 2.0f


# instance fields
.field private mGradientColors:[I

.field private mHeight:I

.field private final mLinePaint:Landroid/graphics/Paint;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mPath:Landroid/graphics/Path;

.field private final mPointPaint:Landroid/graphics/Paint;

.field private final mRegionPaint:Landroid/graphics/Paint;

.field private mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

.field private mScaleFactor:F

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$4STMOBdZkQn31rm2lSIH-01kQt0(Landroid/graphics/Path;Landroid/graphics/Point;)V
    .registers 3

    .line 256
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$G6BcEdA4dtHim5pyML5j1plpl-c(Landroid/graphics/Point;)Ljava/lang/Integer;
    .registers 1

    .line 202
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IxmzeiPdcuc3oK4sf-Tt1q1qrRs(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->lambda$extractStrokes$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Su7snEA7jWKdyGnQZdd2B4JDdWI(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->lambda$extractStrokes$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VGx0iwIRnxYsDleLmGjJC-5j2NY(Landroid/graphics/Point;)Ljava/lang/Integer;
    .registers 1

    .line 201
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bcJrw-8PAYP_HLKTDvabMF024Xs(Landroid/graphics/Point;)Ljava/lang/Integer;
    .registers 1

    .line 200
    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$et0CzibpYzEMmEPhk4hYOjdHP4Q(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 4

    .line 214
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-eq v0, v1, :cond_8

    sub-int/2addr v0, v1

    return v0

    :cond_8
    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$kDVt-r0Hsy4kgN2Bl6CyaN1Xks0(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->lambda$extractStrokes$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nAh-gcYPjjSKEzmectCCInUkNnY(Landroid/graphics/Point;)Ljava/lang/Integer;
    .registers 1

    .line 199
    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wQFAVIUSs_nfZ-BaFJw-ei9gUU8(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Landroid/graphics/Canvas;Ljava/util/List;Lcom/google/mediapipe/tasks/components/containers/Connection;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->lambda$drawStroke$0(Landroid/graphics/Canvas;Ljava/util/List;Lcom/google/mediapipe/tasks/components/containers/Connection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yM0Yo0RiM2Zvz3p42IIWldBX85g(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->lambda$extractStrokes$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mLinePaint:Landroid/graphics/Paint;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPointPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mRegionPaint:Landroid/graphics/Paint;

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->initPaints(Landroid/content/Context;)V

    return-void
.end method

.method private static cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 6

    .line 242
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p0

    mul-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v1

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private drawRegion(Landroid/graphics/Canvas;)V
    .registers 11

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMinX:I

    int-to-float v2, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMaxY:I

    int-to-float v3, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMaxX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMinY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mGradientColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .registers 9

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    if-nez v0, :cond_5

    goto :goto_52

    .line 106
    :cond_5
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;->landmarks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 109
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float/2addr v4, v5

    .line 110
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v3

    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x40900000    # 4.5f

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPointPaint:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1d

    .line 115
    :cond_47
    sget-object v2, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;->HAND_CONNECTIONS:Ljava/util/Set;

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Landroid/graphics/Canvas;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_d

    :cond_52
    :goto_52
    return-void
.end method

.method private extractStrokes()Landroid/graphics/Path;
    .registers 8

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;->landmarks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 194
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v5

    iget v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 195
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v3

    iget v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 194
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 199
    :cond_52
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 200
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 204
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->findConvexHull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 206
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->pointToPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static findConvexHull(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    return-object p0

    .line 214
    :cond_8
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 219
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_57

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    invoke-static {v4, v5, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v4

    if-gtz v4, :cond_57

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    .line 223
    :cond_57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 226
    :cond_5b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_67
    if-ltz v2, :cond_a2

    .line 228
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 229
    :goto_6f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v1, :cond_9c

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-static {v5, v6, v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v5

    if-gtz v5, :cond_9c

    .line 231
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6f

    .line 233
    :cond_9c
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_67

    .line 236
    :cond_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method private initPaints(Landroid/content/Context;)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$color;->ai_art_museum_hand_marker_gradient_start_color:I

    .line 86
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$color;->ai_art_museum_hand_marker_gradient_end_color:I

    .line 87
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mGradientColors:[I

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private synthetic lambda$drawStroke$0(Landroid/graphics/Canvas;Ljava/util/List;Lcom/google/mediapipe/tasks/components/containers/Connection;)V
    .registers 12

    .line 117
    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/components/containers/Connection;->start()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 118
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float v3, v0, v1

    .line 119
    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/components/containers/Connection;->start()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 120
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float v4, v0, v1

    .line 121
    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/components/containers/Connection;->end()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 122
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float v5, v0, v1

    .line 123
    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/components/containers/Connection;->end()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 124
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result p2

    iget p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    mul-float v6, p2, p3

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 116
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$extractStrokes$2(Ljava/lang/Integer;)V
    .registers 2

    .line 199
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMinX:I

    return-void
.end method

.method private synthetic lambda$extractStrokes$4(Ljava/lang/Integer;)V
    .registers 2

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMaxX:I

    return-void
.end method

.method private synthetic lambda$extractStrokes$6(Ljava/lang/Integer;)V
    .registers 2

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMinY:I

    return-void
.end method

.method private synthetic lambda$extractStrokes$8(Ljava/lang/Integer;)V
    .registers 2

    .line 202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mMaxY:I

    return-void
.end method

.method private static pointToPath(Ljava/util/List;)Landroid/graphics/Path;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    if-eqz p0, :cond_39

    .line 246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_39

    .line 250
    :cond_a
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 251
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 252
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Path;)V

    .line 256
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_39
    :goto_39
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->drawRegion(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public update(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 146
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;->landmarks()Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_4f

    .line 149
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    if-lez p2, :cond_4f

    if-gtz p3, :cond_16

    goto :goto_4f

    .line 160
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    if-ne v0, p2, :cond_26

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    if-eq v0, p3, :cond_5c

    .line 163
    :cond_26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    .line 164
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    .line 165
    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mScaleFactor:F

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->extractStrokes()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPath:Landroid/graphics/Path;

    goto :goto_66

    .line 150
    :cond_4f
    :goto_4f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    if-nez p1, :cond_5d

    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    if-nez p1, :cond_5d

    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    return-void

    .line 153
    :cond_5d
    :goto_5d
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mResult:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mWidth:I

    .line 155
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mHeight:I

    .line 157
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->mPath:Landroid/graphics/Path;

    .line 174
    :goto_66
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
