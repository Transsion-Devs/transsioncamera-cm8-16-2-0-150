.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V
    .registers 3

    .line 2329
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 6

    .line 2332
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->setIsDuringScreenshot(Z)V

    if-eqz p1, :cond_1f

    .line 2333
    array-length v0, p1

    if-lez v0, :cond_1f

    if-lez p2, :cond_1f

    if-lez p3, :cond_1f

    .line 2334
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2335
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    if-eqz p0, :cond_29

    .line 2336
    invoke-interface {p0, p1, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;->onResult(Landroid/graphics/Bitmap;I)V

    return-void

    .line 2339
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;->val$pictureCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;

    if-eqz p0, :cond_29

    const/4 p1, 0x0

    const/16 p2, -0xbb8

    .line 2340
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;->onResult(Landroid/graphics/Bitmap;I)V

    :cond_29
    return-void
.end method
