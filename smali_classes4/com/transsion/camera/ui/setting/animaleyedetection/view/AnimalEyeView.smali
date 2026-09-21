.class public Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;
.super Lcom/transsion/camera/app/ui/widget/FaceEyeView;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEyeRect:Landroid/graphics/Rect;

.field private mIsAnimalEye:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSmartFocusDebugSupport()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mEyeRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_b5

    .line 48
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 50
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 51
    sget-object v2, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    const/4 v3, 0x3

    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_41

    .line 52
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_41
    const/4 v3, 0x2

    .line 54
    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_57

    .line 55
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 56
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_57
    const/4 v3, 0x1

    .line 57
    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_6d

    .line 58
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 59
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_6d
    const/4 v3, 0x0

    .line 60
    aget v2, v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_82

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    :cond_82
    :goto_82
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSmartFocusDebugSupport()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 65
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mIsAnimalEye:Z

    if-eqz v2, :cond_8f

    const-string v2, "Animal Eye"

    goto :goto_91

    :cond_8f
    const-string v2, "Animal Face"

    :goto_91
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    :cond_9c
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw: factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public updateFaceEye(Landroid/graphics/Rect;Z)V
    .registers 6

    .line 32
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFaceEye] rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimalEye = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mIsAnimalEye:Z

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mEyeRect:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/view/AnimalEyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_31

    goto :goto_36

    :cond_31
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b

    :cond_36
    :goto_36
    const/16 p1, 0x8

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
