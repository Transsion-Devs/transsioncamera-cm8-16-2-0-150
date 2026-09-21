.class public abstract Lcom/transsion/camera/app/ui/widget/FaceEyeView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field protected static final AREA_THRESHOLD:[F


# instance fields
.field protected final mFaceIndicators:[Landroid/graphics/drawable/Drawable;

.field protected mPreviewRectArea:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 15
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    return-void

    nop

    :array_a
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
    .registers 5

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object p2, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->AREA_THRESHOLD:[F

    array-length p2, p2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mFaceIndicators:[Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 22
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 23
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_1:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    .line 24
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_2:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, p2, v1

    .line 25
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_3:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, p2, v1

    .line 26
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_4:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, p2, v1

    .line 27
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_face_rect_layer_5:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, p2, p1

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->mPreviewRectArea:I

    return-void
.end method
