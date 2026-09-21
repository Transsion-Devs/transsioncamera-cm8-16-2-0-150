.class public interface abstract Lcom/transsion/camera/app/ui/IThumbnailUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# virtual methods
.method public abstract cancelPendingClick()V
.end method

.method public abstract getCurrentMode()Ljava/lang/String;
.end method

.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailView()Landroid/view/View;
.end method

.method public abstract hideRecommendPopupTips()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isPendingClick()Z
.end method

.method public abstract isUpdateThumbnail()Z
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract performPendingClick()V
.end method

.method public abstract playThumbLottieAnimation()V
.end method

.method public abstract restoreRecommendPopupTips()V
.end method

.method public abstract setClickable(Z)V
.end method

.method public abstract setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setThumbnailClickable(Z)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract showRecommendPopupTips(I)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;Z)V
.end method

.method public abstract updateThumbnailDefaultView(Ljava/lang/String;Ljava/lang/String;)V
.end method
