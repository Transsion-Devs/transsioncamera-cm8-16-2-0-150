.class interface abstract Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IBlurManager"
.end annotation


# virtual methods
.method public blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 719
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
.end method

.method public create()V
    .registers 1

    return-void
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public getPreferFactor()I
    .registers 4

    .line 728
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseRenderscriptToolkitPreferFactor:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 729
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferFactor: factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public abstract getRadiusDefault()I
.end method

.method public abstract getRadiusMax()I
.end method

.method public abstract getRadiusMin()I
.end method

.method public abstract getRadiusStep()I
.end method
