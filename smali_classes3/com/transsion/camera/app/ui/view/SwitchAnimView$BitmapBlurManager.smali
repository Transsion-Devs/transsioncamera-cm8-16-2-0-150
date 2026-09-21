.class abstract Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapBlurManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;,
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$DefaultBlurManager;
    }
.end annotation


# direct methods
.method static newInstance()Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;
    .registers 1

    .line 597
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    if-eqz v0, :cond_e

    .line 598
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$ToolKitBlurManager;-><init>()V

    return-object v0

    .line 600
    :cond_e
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$DefaultBlurManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager$DefaultBlurManager;-><init>()V

    return-object v0
.end method
