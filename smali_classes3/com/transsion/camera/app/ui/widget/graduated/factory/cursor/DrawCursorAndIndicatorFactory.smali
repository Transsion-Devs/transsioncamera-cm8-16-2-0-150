.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;
.source "SourceFile"


# instance fields
.field private mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

.field protected mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V
    .registers 11

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 35
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_width:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_height:I

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 40
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_stroke_border:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 42
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_round_corner:I

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 45
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_cursor_color:I

    const/4 v4, 0x0

    .line 46
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 47
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    .line 48
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 50
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cursor_and_text_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 51
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cursor_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 53
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    int-to-float v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIFII)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    const/4 p2, 0x2

    .line 55
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    .line 57
    new-instance p2, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    div-int/lit8 v0, v2, 0x2

    add-int/2addr v7, v0

    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p2, v7, v6, p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    const/high16 p1, 0x3fc00000    # 1.5f

    int-to-float p2, v2

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->setExceptedHeight(F)V

    return-void
.end method


# virtual methods
.method public createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
    .registers 3

    .line 65
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method
