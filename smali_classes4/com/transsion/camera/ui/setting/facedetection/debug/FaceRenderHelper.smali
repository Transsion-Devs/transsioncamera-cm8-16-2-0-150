.class public Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final defaultColor:I

.field private final mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private final mFaceInfoView:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;->PAINT_COLOR_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->defaultColor:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_face_rect:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 20
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceInfoView:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 10

    if-nez p3, :cond_3

    goto :goto_6

    .line 25
    :cond_3
    array-length v0, p3

    if-nez v0, :cond_7

    :goto_6
    return-void

    .line 26
    :cond_7
    array-length v0, p3

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_53

    aget-object v2, p3, v1

    .line 27
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 29
    sget-object v3, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;->PAINT_COLOR_MAP:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2e

    .line 31
    iget v3, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->defaultColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    :cond_2e
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v2

    if-eqz v2, :cond_50

    .line 35
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 39
    :cond_53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->mFaceInfoView:Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceInfoView;->draw(Landroid/graphics/Canvas;I[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method
