.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolKitBlurManager"
.end annotation


# instance fields
.field private final mRadiusMax:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ToolKitBlurManager: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getPreferFactor()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    const/16 v0, 0x18

    .line 617
    iput v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;->mRadiusMax:I

    return-void

    :cond_18
    if-nez v0, :cond_1c

    const/16 v0, 0x10

    :cond_1c
    const/16 v1, 0xc

    .line 623
    div-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;->mRadiusMax:I

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 7

    .line 628
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 629
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "[ToolKitBlurManager] blur: inBitmap has been recycled yet"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 632
    :cond_10
    sget-object p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/BitmapPoolUtil;->get(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 633
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_31

    .line 638
    :cond_1f
    sget-object v1, Lcom/google/android/renderscript/Toolkit;->INSTANCE:Lcom/google/android/renderscript/Toolkit;

    const/16 v2, 0x19

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/renderscript/Toolkit;->blur(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p3, :cond_30

    .line 640
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/BitmapPoolUtil;->put(Landroid/graphics/Bitmap;)V

    :cond_30
    return-object p2

    .line 634
    :cond_31
    :goto_31
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "[ToolKitBlurManager] blur: blurBitmap has been recycled yet"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public destroy()V
    .registers 1

    .line 647
    sget-object p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->clearMemory()V

    return-void
.end method

.method public getRadiusDefault()I
    .registers 1

    const/16 p0, 0x18

    return p0
.end method

.method public getRadiusMax()I
    .registers 1

    .line 652
    iget p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;->mRadiusMax:I

    return p0
.end method

.method public getRadiusMin()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getRadiusStep()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
