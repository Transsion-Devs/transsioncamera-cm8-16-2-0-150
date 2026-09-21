.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPictureToBitmap(ZLcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

.field final synthetic val$degree:I

.field final synthetic val$directBitMap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;ILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 3047
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$degree:I

    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    iput-object p4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage([III)V
    .registers 12

    if-eqz p1, :cond_44

    .line 3050
    array-length v0, p1

    if-lez v0, :cond_44

    if-lez p2, :cond_44

    if-lez p3, :cond_44

    .line 3051
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$degree:I

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_1b

    .line 3052
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 3054
    :cond_1b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3055
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3056
    iget p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$degree:I

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3057
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

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

    .line 3058
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_44
    if-nez p1, :cond_82

    const/4 v0, -0x1

    if-ne p2, v0, :cond_82

    if-ne p3, v0, :cond_82

    .line 3061
    iget p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$degree:I

    rem-int/lit16 p1, p1, 0x168

    if-nez p1, :cond_59

    .line 3062
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-interface {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 3064
    :cond_59
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3065
    iget p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$degree:I

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3066
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    .line 3067
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_82
    if-nez p1, :cond_9a

    .line 3070
    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive a null data!"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onImage(Landroid/graphics/Bitmap;)V

    .line 3073
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$directBitMap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_9a

    .line 3074
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9a
    return-void
.end method

.method public onResult(II)V
    .registers 3

    .line 3081
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;->val$callback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onResult(II)V

    return-void
.end method
