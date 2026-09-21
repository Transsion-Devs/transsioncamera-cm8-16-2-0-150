.class Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoHDRInfo([Landroid/hardware/camera2/params/Face;[IZ)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_e2

    .line 99
    array-length v1, p1

    if-lez v1, :cond_e2

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmVideoHDRParameterConfigure(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_e6

    .line 102
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmVideoHDRParameterConfigure(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Landroid/graphics/Rect;)V

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v2, v1

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v3}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Landroid/graphics/Rect;)V

    .line 106
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/RectF;

    move v2, v0

    .line 107
    :goto_65
    array-length v3, p1

    if-ge v2, v3, :cond_de

    .line 108
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 109
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 110
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 111
    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v8}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v8}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 112
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v8}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 113
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 116
    :cond_de
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setFaceInfo([Landroid/graphics/RectF;)V

    goto :goto_e6

    :cond_e2
    const/4 p1, 0x0

    .line 119
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setFaceInfo([Landroid/graphics/RectF;)V

    :cond_e6
    :goto_e6
    if-eqz p2, :cond_f0

    .line 121
    array-length p1, p2

    if-lez p1, :cond_f0

    .line 122
    aget p1, p2, v0

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setTranssionBrightness(I)V

    .line 124
    :cond_f0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fgetmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Z

    move-result p1

    if-eq p1, p3, :cond_100

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    invoke-static {p0, p3}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->-$$Nest$fputmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V

    .line 126
    invoke-static {p3}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setFlashFired(Z)V

    :cond_100
    return-void
.end method
