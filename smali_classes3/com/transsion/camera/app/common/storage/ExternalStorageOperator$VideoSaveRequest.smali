.class Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/SaveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 14

    .line 568
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 569
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/SaveRequest;-><init>(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .registers 8

    .line 573
    const-string v0, " finish"

    const/4 v1, 0x0

    .line 575
    :try_start_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_48

    .line 576
    const-string v1, "insertDatabase"

    .line 577
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$mgetExternalVolumeNames(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 578
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, v3, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 579
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_45

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 581
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$mwriteVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    goto :goto_45

    :catchall_41
    move-exception p1

    goto :goto_81

    :catch_43
    move-exception p1

    goto :goto_5f

    .line 583
    :cond_45
    :goto_45
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_48} :catch_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_48} :catch_43
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_48} :catch_43
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_48} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_48} :catch_43
    .catchall {:try_start_3 .. :try_end_48} :catchall_41

    .line 592
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 590
    :goto_5f
    :try_start_5f
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p2, p2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_41

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_51

    :goto_81
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    throw p1
.end method


# virtual methods
.method public process()I
    .registers 6

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ContentValues is null, invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 602
    :cond_f
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3, v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$mgetFileExtFromMime(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$fgetmTempVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 606
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$fgetmTempVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$mcloseDescriptor(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)V

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$fputmTempVideoFile(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V

    goto :goto_75

    .line 610
    :cond_50
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->-$$Nest$fgetmCameraFolder(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    const-string v4, ".videorecorder"

    invoke-virtual {v3, v4}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    .line 613
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    :cond_75
    :goto_75
    return v1
.end method
