.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$strImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 4

    .line 2286
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;->val$strImagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 5

    .line 2289
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2290
    iget-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;->val$strImagePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p2, p0}, Lcom/ss/android/medialib/common/ImageUtils;->saveBitmapWithPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    if-eqz p1, :cond_12

    .line 2292
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    return-void
.end method
