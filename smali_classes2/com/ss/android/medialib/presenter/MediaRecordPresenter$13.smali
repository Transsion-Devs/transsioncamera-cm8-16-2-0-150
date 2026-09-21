.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

.field final synthetic val$degree:I


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;I)V
    .registers 4

    .line 3006
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    iput p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$degree:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage([III)V
    .registers 12

    if-eqz p1, :cond_42

    .line 3009
    array-length v0, p1

    if-lez v0, :cond_42

    if-lez p2, :cond_42

    if-gtz p3, :cond_a

    goto :goto_42

    .line 3012
    :cond_a
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$degree:I

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_1c

    .line 3013
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 3015
    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3016
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3017
    iget p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$degree:I

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3018
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 3010
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResult(II)V
    .registers 3

    .line 3025
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onResult(II)V

    return-void
.end method
