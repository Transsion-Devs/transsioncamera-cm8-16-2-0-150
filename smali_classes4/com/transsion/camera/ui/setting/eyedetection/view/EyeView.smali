.class public Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;
.super Lcom/transsion/camera/app/ui/widget/FaceEyeView;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEyeRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->mEyeRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_a7

    .line 39
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 41
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 42
    sget-object v2, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    const/4 v3, 0x3

    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_41

    .line 43
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_41
    const/4 v3, 0x2

    .line 45
    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_57

    .line 46
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_57
    const/4 v3, 0x1

    .line 48
    aget v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_6d

    .line 49
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_82

    :cond_6d
    const/4 v3, 0x0

    .line 51
    aget v2, v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_82

    .line 52
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_82
    :goto_82
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw: factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", getVisibility = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public updateEye(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 6

    .line 20
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEye: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->mEyeRect:Landroid/graphics/Rect;

    if-nez p2, :cond_34

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/view/EyeView;->mEyeRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_29

    goto :goto_2e

    :cond_29
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_2e
    :goto_2e
    const/16 p1, 0x8

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    .line 29
    :cond_34
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 31
    :goto_37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
