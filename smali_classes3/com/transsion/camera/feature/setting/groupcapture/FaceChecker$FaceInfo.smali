.class Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceInfo"
.end annotation


# instance fields
.field mBounds:Landroid/graphics/Rect;

.field mId:I

.field mLeftEye:Landroid/graphics/Point;

.field mLeftMouth:Landroid/graphics/Point;

.field mNose:Landroid/graphics/Point;

.field mRightEye:Landroid/graphics/Point;

.field mRightMouth:Landroid/graphics/Point;

.field mScore:I

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;)V

    return-void
.end method

.method private calculateFaceYaw(Ljava/util/List;)F
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    const/4 v3, 0x1

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 198
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 199
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    float-to-double v6, v2

    float-to-double v4, v5

    .line 200
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v2

    .line 201
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x2

    .line 207
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 208
    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    .line 209
    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move v11, v1

    :goto_4a
    const/high16 v12, 0x40000000    # 2.0f

    if-ge v11, v5, :cond_94

    .line 212
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    .line 213
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    mul-float v15, v2, v13

    mul-float v16, v4, v14

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v2

    mul-float v17, v16, v10

    div-float v17, v17, v12

    add-float v15, v15, v17

    mul-float v17, v4, v9

    div-float v17, v17, v12

    add-float v15, v15, v17

    .line 214
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-float/2addr v13, v4

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    mul-float v14, v4, v10

    div-float/2addr v14, v12

    sub-float/2addr v13, v14

    mul-float v16, v16, v9

    div-float v16, v16, v12

    add-float v13, v13, v16

    .line 215
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    .line 218
    :cond_94
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v12

    .line 219
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v2, v1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v12

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_fb

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v0

    return v2

    :cond_fb
    const/high16 v0, 0x42b40000    # 90.0f

    return v0
.end method


# virtual methods
.method public getFaceType()I
    .registers 7

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mLeftEye:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mRightEye:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mNose:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mLeftMouth:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mRightMouth:Landroid/graphics/Point;

    filled-new-array {v1, v2, v3, v4, v5}, [Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->calculateFaceYaw(Ljava/util/List;)F

    move-result p0

    .line 183
    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$sfgetLARGE_FACE_RATIO_THRESHOLD()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_57

    .line 184
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$sfgetLARGE_FACE_YAW_THRESHOLD()F

    move-result v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_55

    const/4 p0, 0x1

    return p0

    :cond_55
    const/4 p0, 0x2

    return p0

    .line 189
    :cond_57
    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$sfgetFACE_RATIO_THRESHOLD()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->-$$Nest$sfgetYAW_THRESHOLD()F

    move-result v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_6d

    const/4 p0, 0x3

    return p0

    :cond_6d
    const/4 p0, -0x1

    return p0
.end method
