.class public Lcom/transsion/camera/app/SecureCameraActivity;
.super Lcom/transsion/camera/app/CameraActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sSecureAlbumId:I


# instance fields
.field private mFinished:Z

.field private mPath:Ljava/lang/String;

.field private mReceiverRegistered:Z

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecureItemArray:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$Ge-J3zmQ_OCvdbDfH7ilZJyS4Q0(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z
    .registers 4

    .line 502
    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Yfv4FKWFWA-EpdNGraCPmjxiKWI(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z
    .registers 4

    .line 430
    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$bvUwDlrk9Yt5IWiWfv2bV5TTPbs(Landroid/database/Cursor;)Ljava/util/List;
    .registers 4

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1f

    .line 511
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_d
    const/4 v1, 0x0

    .line 513
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1f
    return-object v0
.end method

.method public static synthetic $r8$lambda$fDwcCzzd-HIwZI0ZmeT8WKRKTIM(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->lambda$notifyNewMedia$3(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFinished(Lcom/transsion/camera/app/SecureCameraActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFinished(Lcom/transsion/camera/app/SecureCameraActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SecureCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity$1;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addSecureAlbumItem(Landroid/net/Uri;)V
    .registers 5

    .line 574
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSecureAlbumItem uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_19

    goto :goto_2f

    .line 578
    :cond_19
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 579
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private checkQcomLiveItem(Ljava/util/ArrayList;)V
    .registers 13

    .line 406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 411
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    sget-object v2, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkQcomLiveItem] albumCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_25
    if-lez v3, :cond_6b

    .line 414
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-static {v0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->-$$Nest$fgetmUri(Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_59

    if-eqz v5, :cond_5b

    .line 415
    :try_start_41
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4e

    if-eqz v0, :cond_5b

    .line 419
    :try_start_47
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_6c

    :catch_4b
    move-exception v0

    move v4, v3

    goto :goto_61

    :catchall_4e
    move-exception v0

    move-object v6, v0

    .line 414
    :try_start_50
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v0

    :try_start_55
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw v6

    :catch_59
    move-exception v0

    goto :goto_61

    :cond_5b
    if-eqz v5, :cond_68

    .line 419
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_59

    goto :goto_68

    .line 420
    :goto_61
    sget-object v5, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, "[checkQcomLiveItem] exception: "

    invoke-static {v5, v6, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_6b
    move v3, v4

    :goto_6c
    if-ge v2, v3, :cond_82

    .line 424
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-static {p0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->-$$Nest$fgetmId(Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 426
    :cond_82
    sget-object p0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkQcomLiveItem] live ids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " itemNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_aa

    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_b2

    .line 430
    :cond_aa
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 432
    :goto_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkQcomLiveItem] done. albumCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    .line 509
    new-instance p5, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {p5}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static/range {p0 .. p5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMedia(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyNewMedia$3(Landroid/net/Uri;)V
    .registers 2

    .line 570
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->addSecureAlbumItem(Landroid/net/Uri;)V

    return-void
.end method

.method private retainLiveItem(Ljava/util/ArrayList;)V
    .registers 13

    .line 437
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 438
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[retainLiveItem] albumCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 440
    :goto_21
    const-string v4, " OR "

    const-string v5, ")"

    if-ge v3, v0, :cond_55

    .line 441
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    if-nez v6, :cond_30

    goto :goto_52

    .line 446
    :cond_30
    const-string v7, "_id=("

    if-nez v3, :cond_42

    .line 447
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 449
    :cond_42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 452
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz v1, :cond_bd

    .line 455
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_bd

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 458
    :goto_85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b6

    const/16 v6, 0x3d

    .line 459
    const-string v7, "bucket_id"

    if-nez v0, :cond_a1

    .line 460
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 462
    :cond_a1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 465
    :cond_b6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bd
    move-object v6, v0

    .line 470
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    const-string v8, "_id DESC"

    .line 477
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 482
    :try_start_d5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_de} :catch_109

    if-eqz v3, :cond_10b

    .line 483
    :try_start_e0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_10b

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 485
    :cond_ec
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 486
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_fb
    .catchall {:try_start_e0 .. :try_end_fb} :catchall_fe

    if-nez v0, :cond_ec

    goto :goto_10b

    :catchall_fe
    move-exception v0

    move-object v2, v0

    .line 482
    :try_start_100
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    goto :goto_108

    :catchall_104
    move-exception v0

    :try_start_105
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_108
    throw v2

    :catch_109
    move-exception v0

    goto :goto_111

    :cond_10b
    :goto_10b
    if-eqz v3, :cond_118

    .line 489
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_110} :catch_109

    goto :goto_118

    .line 490
    :goto_111
    sget-object v2, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[retainLiveItem] exception: "

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    :cond_118
    :goto_118
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    if-nez v0, :cond_12f

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/SecureCameraActivity;->getLowQualityMediaFromDatabase(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    :cond_12f
    sget-object p0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[retainLiveItem] live ids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14f

    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_157

    .line 502
    :cond_14f
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 504
    :goto_157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[retainLiveItem] done. albumCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 8

    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 352
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 353
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_12
    if-ge v1, p2, :cond_32

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 357
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 358
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_29
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 363
    :cond_32
    const-string p2, "isCamera"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 364
    const-string p2, "isSecureCamera"

    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isSecureCamera()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    const-string p2, "secureAlbum"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 366
    const-string p2, "securePath"

    iget-object p3, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_54

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5e

    .line 368
    :cond_54
    const-string p2, "com.google.android.apps.photos.api.secure_mode_ids"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 369
    const-string p2, "com.google.android.apps.photos.api.secure_mode"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5e
    const p2, 0x888000

    .line 371
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    if-eqz p0, :cond_6f

    const/high16 p0, 0x10000000

    .line 374
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6f
    return-object p1
.end method

.method protected canShowPermissionsDialog()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isPowerScreenOn(Landroid/content/Context;)Z
    .registers 2

    .line 599
    const-string p0, "power"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 600
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method protected isSecureCamera()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public loadLatestThumbnail(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 545
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->preResumeTasks()V

    :cond_5
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;ZZ)V
    .registers 4

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    .line 570
    new-instance p2, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onCreateTasks(Landroid/os/Bundle;)V
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->preCreateTasks()V

    .line 159
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->postCreateTasks()V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 336
    invoke-interface {v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->clearBrowserGotoGalleryListener()V

    .line 338
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onDestroyTasks()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .registers 3

    .line 165
    invoke-super {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 168
    invoke-static {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    return-void
.end method

.method protected onPauseTasks()V
    .registers 1

    .line 307
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onPauseTasks()V

    return-void
.end method

.method protected onResumeTasks()V
    .registers 1

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->preResumeTasks()V

    .line 250
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onResumeTasks()V

    return-void
.end method

.method protected onStopTasks()V
    .registers 4

    .line 312
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onStopTasks()V

    .line 320
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFinishSecureCameraOnPause:Z

    if-eqz v0, :cond_3b

    .line 321
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseTasks mStartActivityFromCameraFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3b
    return-void
.end method

.method protected postCreateTasks()V
    .registers 13

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->registerScreenOff()V

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 206
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->launchFromAod(Landroid/app/Activity;)Z

    move-result v2

    goto :goto_10

    :cond_f
    move v2, v1

    .line 209
    :goto_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 211
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const-string v6, "shoulder_button_double_tap"

    const-string v7, "ai_key_double_tap"

    const-string v8, "lockscreen_affordance"

    const-string/jumbo v9, "underwater_volume_double_tap"

    const-string/jumbo v10, "volume_double_tap"

    const-string v11, "com.android.systemui.camera_launch_source"

    if-le v4, v5, :cond_62

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    .line 212
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 213
    :cond_3c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x4

    if-ne v5, v3, :cond_4a

    move-object v3, v10

    goto :goto_6a

    :cond_4a
    const/4 v5, 0x5

    if-ne v5, v3, :cond_4f

    move-object v3, v9

    goto :goto_6a

    :cond_4f
    const/4 v5, 0x3

    if-ne v5, v3, :cond_54

    move-object v3, v8

    goto :goto_6a

    :cond_54
    const/16 v5, 0x64

    if-ne v5, v3, :cond_5a

    move-object v3, v7

    goto :goto_6a

    :cond_5a
    const/16 v5, 0x65

    if-ne v5, v3, :cond_60

    move-object v3, v6

    goto :goto_6a

    :cond_60
    const/4 v3, 0x0

    goto :goto_6a

    .line 226
    :cond_62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    :goto_6a
    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 229
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 230
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 231
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_83

    :cond_82
    const/4 v1, 0x1

    .line 232
    :cond_83
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v1, :cond_9d

    .line 234
    invoke-virtual {p0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isPowerScreenOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9d

    const/16 v5, 0x23

    if-ge v4, v5, :cond_9d

    .line 235
    sget-object v4, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "isPowerScreenOn false"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 238
    :cond_9d
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v4

    if-nez v4, :cond_b3

    if-nez v1, :cond_a9

    if-nez v3, :cond_a9

    if-eqz v2, :cond_b3

    .line 239
    :cond_a9
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "isLockScreenOn false"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b3
    if-eqz v0, :cond_b8

    .line 243
    invoke-interface {v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->setBrowserGotoGalleryListener()V

    :cond_b8
    return-void
.end method

.method protected preCreateTasks()V
    .registers 3

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->preSecureCreateTasks(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_16

    .line 195
    sget v0, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    .line 197
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secure/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    return-void
.end method

.method protected preResumeTasks()V
    .registers 8

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_11

    .line 255
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void

    .line 257
    :cond_11
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->checkQcomLiveItem(Ljava/util/ArrayList;)V

    goto :goto_26

    .line 260
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->retainLiveItem(Ljava/util/ArrayList;)V

    .line 262
    :goto_26
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_36

    .line 264
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 266
    :cond_36
    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 267
    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    return-void

    .line 269
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 270
    invoke-virtual {v0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v1, :cond_ed

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_6d

    .line 274
    new-instance v1, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 275
    iget-object v3, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_6d
    move v1, v2

    .line 277
    :goto_6e
    sget-object v3, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLatestSecureItemDeleted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mThumbnailUri\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , getProcessStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_c4

    if-nez v1, :cond_c4

    .line 281
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_bc

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v3

    if-eqz v3, :cond_c4

    :cond_bc
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    .line 282
    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->isSameTypeUri(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 283
    :cond_c4
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v3

    if-eqz v3, :cond_dc

    if-eqz v1, :cond_e7

    .line 285
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto :goto_e7

    .line 288
    :cond_dc
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 292
    :cond_e7
    :goto_e7
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailFromAod()V

    .line 293
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    :cond_ed
    return-void
.end method

.method protected registerScreenOff()V
    .registers 4

    .line 525
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v1, "android.intent.action.CUSTOM_SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    return-void
.end method

.method protected showWaitPage()V
    .registers 5

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeNotSupportWaitPageMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 552
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable wait page by mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 555
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    const-string v1, "isSecureCamera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string v1, "caller"

    const-string v3, "camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v1, "flipOrientation"

    iget v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    :try_start_42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 561
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_42 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 563
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected unRegisterScreenOff()V
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    return-void
.end method
