.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotHDScreen(Z[IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;ZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$directBitMap:Landroid/graphics/Bitmap;

.field final synthetic val$isSyncShotScreen:Z

.field final synthetic val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Landroid/graphics/Bitmap;Z)V
    .registers 5

    .line 2377
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$directBitMap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$isSyncShotScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 2381
    array-length v1, p1

    if-lez v1, :cond_18

    if-lez p2, :cond_18

    if-lez p3, :cond_18

    .line 2382
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2383
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    if-eqz p0, :cond_44

    .line 2384
    invoke-interface {p0, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;->onResult(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_18
    const/4 v1, -0x1

    if-ne p2, v1, :cond_29

    if-ne p3, v1, :cond_29

    if-nez p1, :cond_29

    .line 2388
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    if-eqz p1, :cond_44

    .line 2389
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-interface {p1, p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;->onResult(Landroid/graphics/Bitmap;I)V

    return-void

    .line 2392
    :cond_29
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    if-eqz p1, :cond_33

    const/4 p2, 0x0

    const/16 p3, -0xbb8

    .line 2393
    invoke-interface {p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;->onResult(Landroid/graphics/Bitmap;I)V

    .line 2395
    :cond_33
    iget-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$isSyncShotScreen:Z

    if-eqz p1, :cond_44

    .line 2396
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_44

    .line 2397
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;->val$directBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_44
    return-void
.end method
