.class public Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 14

    .line 13
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 15

    .line 19
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator$BackgroundPhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundInternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method
