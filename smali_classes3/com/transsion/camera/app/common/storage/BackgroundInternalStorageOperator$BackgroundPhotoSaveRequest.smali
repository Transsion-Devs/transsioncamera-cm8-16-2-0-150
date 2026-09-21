.class Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundPhotoSaveRequest"
.end annotation


# instance fields
.field private final mHelper:Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;

.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 8

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    .line 28
    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;->mHelper:Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;

    return-void
.end method


# virtual methods
.method protected writeJpegFileFromUri()Z
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;->mHelper:Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;

    iget-object v2, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->writeJpegFileFromUri(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/storage/SaveRequest;)Z

    move-result p0

    return p0
.end method
