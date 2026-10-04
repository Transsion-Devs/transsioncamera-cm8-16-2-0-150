.class public abstract Lcom/transsion/camera/app/ui/widget/FaceEyeView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field protected static final AREA_THRESHOLD:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mFaceIndicators:[Landroid/graphics/drawable/Drawable;

.field private mOverrideSize:Landroid/util/Size;

.field protected mPreviewRectArea:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceEyeView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [F

    fill-array-data v0, :array_12

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    return-void

    :array_12
    .array-data 4
        0x3bb43958    # 0.0055f
        0x3c23d70a    # 0.01f
        0x3c75c28f    # 0.015f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object p2, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    array-length p2, p2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p2, v3

    .line 28
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p2, v3

    .line 29
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, p2, v3

    .line 30
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_3:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, p2, v3

    .line 31
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_4:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, p2, v3

    .line 32
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_5:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, p2, v3

    .line 33
    const-string p2, "string"

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v3, "override_mode_screen_size"

    invoke-virtual {v0, v3, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5c

    goto :goto_60

    :cond_5c
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    :goto_60
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mOverrideSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    .line 40
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mOverrideSize:Landroid/util/Size;

    if-eqz v1, :cond_1e

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mOverrideSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 44
    :cond_1e
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    .line 45
    sget-object v0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewRect mPreviewRectArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", previewViewRect: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
