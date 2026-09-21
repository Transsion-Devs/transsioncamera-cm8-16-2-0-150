.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;
.source "SourceFile"


# instance fields
.field protected mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V
    .registers 10

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_cursor_width:I

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 35
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_cursor_height:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 38
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_stroke_border:I

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 40
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_cursor_round_corner:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 43
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_cursor_color:I

    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 45
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    .line 46
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 48
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    int-to-float v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIFII)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    const/high16 p1, 0x3fc00000    # 1.5f

    int-to-float p2, v2

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->setExceptedHeight(F)V

    return-void
.end method


# virtual methods
.method public createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method
