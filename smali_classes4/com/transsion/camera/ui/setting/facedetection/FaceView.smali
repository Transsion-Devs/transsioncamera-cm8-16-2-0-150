.class public Lcom/transsion/camera/ui/setting/facedetection/FaceView;
.super Lcom/transsion/camera/app/ui/widget/FaceEyeView;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final faceRenderHelper:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;

.field private mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

.field private final mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

.field private mShowGender:Z


# direct methods
.method public static synthetic $r8$lambda$7MBtCk2B11kkgPjVCudUXdMqbhU(Lcom/transsion/camera/ui/setting/facedetection/FaceView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->lambda$setFaces$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    .line 37
    new-instance p2, Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    .line 38
    new-instance p2, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->faceRenderHelper:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;

    return-void
.end method

.method private synthetic lambda$setFaces$0()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    :goto_d
    const/16 v0, 0x8

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearFaces()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->clearGender()V

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 70
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->SHOW_ENHANCE_FACE_INFO:Z

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->faceRenderHelper:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;

    sget v1, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sOrientation:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->draw(Landroid/graphics/Canvas;I[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    goto/16 :goto_c2

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz v0, :cond_c2

    array-length v1, v0

    if-lez v1, :cond_c2

    .line 73
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_b7

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {v4}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    .line 76
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 77
    sget-object v6, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    const/4 v7, 0x5

    aget v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_47

    .line 78
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    :cond_47
    const/4 v7, 0x4

    .line 80
    aget v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5d

    .line 81
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    :cond_5d
    const/4 v7, 0x3

    .line 83
    aget v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_73

    .line 84
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 85
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    :cond_73
    const/4 v7, 0x2

    .line 86
    aget v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_89

    .line 87
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 88
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    :cond_89
    const/4 v7, 0x1

    .line 89
    aget v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_9f

    .line 90
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    .line 92
    :cond_9f
    aget v6, v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b3

    .line 93
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b3
    :goto_b3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 98
    :cond_b7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    if-eqz v0, :cond_c2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->drawGender(Landroid/graphics/Canvas;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    .line 103
    :cond_c2
    :goto_c2
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 3

    .line 42
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceView;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Ljava/lang/Runnable;)V
    .registers 6

    .line 52
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    sput-object p1, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz p2, :cond_23

    .line 56
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 58
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showGender(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    return-void
.end method
