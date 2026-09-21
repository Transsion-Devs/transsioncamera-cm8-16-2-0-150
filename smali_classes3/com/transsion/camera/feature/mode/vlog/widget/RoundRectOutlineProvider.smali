.class Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field private final mRadius:F

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(F)V
    .registers 3

    .line 24
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;->mRadius:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;->mRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
