.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnIndices"
.end annotation


# instance fields
.field final mDataIndex:I

.field final mDateTakenIndex:I

.field final mDisplayNameIndex:I

.field final mHeightIndex:I

.field final mIdIndex:I

.field final mLatitudeIndex:I

.field final mLongitudeIndex:I

.field final mMimeTypeIndex:I

.field final mOrientationIndex:I

.field final mTitleIndex:I

.field final mWidthIndex:I

.field final mXmpIndex:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mIdIndex:I

    .line 1776
    const-string v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDateTakenIndex:I

    .line 1777
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mTitleIndex:I

    .line 1778
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDisplayNameIndex:I

    .line 1779
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mMimeTypeIndex:I

    .line 1780
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mWidthIndex:I

    .line 1781
    const-string v0, "height"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mHeightIndex:I

    .line 1782
    const-string v0, "orientation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mOrientationIndex:I

    .line 1783
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mDataIndex:I

    .line 1784
    const-string v0, "latitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mLatitudeIndex:I

    .line 1785
    const-string v0, "longitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mLongitudeIndex:I

    .line 1786
    const-string/jumbo v0, "xmp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$ColumnIndices;->mXmpIndex:I

    return-void
.end method
