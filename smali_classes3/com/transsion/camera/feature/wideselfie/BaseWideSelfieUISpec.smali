.class public Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final WIDE_SELFIE_UI_TYPE_SMALL_THUMBNAIL:I = 0x1


# instance fields
.field mArrowHeight:I

.field mArrowHeightLand:I

.field mArrowTopMargin:I

.field mArrowTopMarginLand:I

.field mArrowWidth:I

.field mArrowWidthLand:I

.field public mHoverDownPreviewLandOffset:I

.field protected mPreviewRect:Landroid/graphics/Rect;

.field mTextMaxLineWidth:I

.field mThumbHeightConfig:I

.field mThumbHeightConfigLand:I

.field mTopIntervalExpanded:I

.field public mTopIntervalHover:I

.field mTopIntervalLand:I

.field mWideSelfieUIType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseWideSelfieUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$integer;->wide_selfie_ui_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 4

    .line 78
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;->onScreenFormChanged(I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->updateScreenFormDimension(I)V

    .line 80
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenFormChanged screenFormType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateScreenFormDimension(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_4e

    .line 64
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    if-ne v0, p1, :cond_3a

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_progressBarThumbHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mThumbHeightConfig:I

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_progressBarThumbHeight_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mThumbHeightConfigLand:I

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_top_interval:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTopIntervalExpanded:I

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_notify_arrow_marginTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowTopMargin:I

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_notify_arrow_marginTop_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowTopMarginLand:I

    return-void

    .line 71
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_notify_arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidth:I

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_fold_notify_arrow_land_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidthLand:I

    :cond_4e
    return-void
.end method
