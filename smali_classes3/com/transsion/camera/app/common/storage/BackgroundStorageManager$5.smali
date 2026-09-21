.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->doSaveHighQualityJpeg(JLandroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/net/Uri;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

.field final synthetic val$jpeg:[B

.field final synthetic val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field final synthetic val$livePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

.field final synthetic val$timestamp:J

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 8

    .line 506
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    iput-wide p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$timestamp:J

    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    iput-object p5, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$values:Landroid/content/ContentValues;

    iput-object p6, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$jpeg:[B

    iput-object p7, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$livePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .registers 10

    if-nez p2, :cond_12

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    new-instance v1, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$timestamp:J

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-static {v0, v1, p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$monSaveHighQualityJpeg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;ILcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void

    .line 513
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onFileSaved: save failed, retry"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$values:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$jpeg:[B

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;->val$livePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    new-instance v5, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5$1;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$5;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method
