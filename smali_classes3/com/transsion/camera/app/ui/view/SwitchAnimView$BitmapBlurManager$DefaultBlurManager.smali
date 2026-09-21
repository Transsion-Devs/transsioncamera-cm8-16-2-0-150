.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$DefaultBlurManager;
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
    name = "DefaultBlurManager"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "DefaultBlurManager: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 682
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPreferFactor()I
    .registers 1

    .line 707
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x8

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getRadiusDefault()I
    .registers 1

    .line 702
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x8

    return p0

    :cond_b
    const/4 p0, 0x4

    return p0
.end method

.method public getRadiusMax()I
    .registers 1

    const/16 p0, 0x32

    return p0
.end method

.method public getRadiusMin()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public getRadiusStep()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method
