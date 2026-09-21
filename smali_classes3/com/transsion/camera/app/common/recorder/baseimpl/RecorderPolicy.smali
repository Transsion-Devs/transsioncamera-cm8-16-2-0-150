.class public Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mOrientation:I

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecorderPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLeftSpace()J
    .registers 3

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez p0, :cond_e

    .line 98
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getLeftSpace mStorageOperator is null, no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 101
    :cond_e
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkPermitBeforeStart()Z
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 82
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkStorageSpace mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 86
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->getLeftSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_2e

    .line 88
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorageSpace space in not enough, can not record video., leftSpace: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public createFileSpec()Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 7

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    new-instance p2, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 48
    iget p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mOrientation:I

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v2, 0x0

    if-nez p1, :cond_1b

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 56
    :cond_1b
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 57
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 58
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z

    move-result p1

    if-nez p1, :cond_2c

    return-object v2

    .line 62
    :cond_2c
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 64
    sget-object p1, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaInfo time "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mOrientation:I

    return-void
.end method

.method public videoFileInfo()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method
