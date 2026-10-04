.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowQualityColumnIndices"
.end annotation


# instance fields
.field final mBucketIdIndex:I

.field final mDataIndex:I

.field final mDateAddedIndex:I

.field final mDateModifiedIndex:I

.field final mDateTakenIndex:I

.field final mDisplayNameIndex:I

.field final mHeightIndex:I

.field final mIdIndex:I

.field final mIsFavoriteIndex:I

.field final mMimeTypeIndex:I

.field final mOrientationIndex:I

.field final mSizeIndex:I

.field final mWidthIndex:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    .line 1805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1806
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIdIndex:I

    .line 1807
    const-string v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mBucketIdIndex:I

    .line 1808
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDisplayNameIndex:I

    .line 1809
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mMimeTypeIndex:I

    .line 1810
    const-string v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateTakenIndex:I

    .line 1811
    const-string v0, "date_added"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateAddedIndex:I

    .line 1812
    const-string v0, "date_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDateModifiedIndex:I

    .line 1813
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mDataIndex:I

    .line 1814
    const-string v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mSizeIndex:I

    .line 1815
    const-string v0, "is_favorite"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mIsFavoriteIndex:I

    .line 1816
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mWidthIndex:I

    .line 1817
    const-string v0, "height"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mHeightIndex:I

    .line 1818
    const-string v0, "orientation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$LowQualityColumnIndices;->mOrientationIndex:I

    return-void
.end method
