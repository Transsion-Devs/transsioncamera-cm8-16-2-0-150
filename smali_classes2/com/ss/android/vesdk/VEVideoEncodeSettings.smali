.class public Lcom/ss/android/vesdk/VEVideoEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;,
        Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VEVideoEncodeSettings"

.field public static final USAGE_COMPILE:I = 0x2

.field public static final USAGE_IMPORT:I = 0x3

.field public static final USAGE_RECORD:I = 0x1


# instance fields
.field banExtraDataLoop:Z

.field private bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

.field private bps:I

.field public compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

.field private enableAvInterLeave:Z

.field private enableByteVCRemuxVideo:Z

.field private enableHwBufferEncode:Z

.field private enableInterLeave:Z

.field private enableRemuxVideo:Z

.field private enableRemuxVideoBitrate:I

.field private enableRemuxVideoFPS:I

.field private enableRemuxVideoForRotation:Z

.field private enableRemuxVideoForShoot:Z

.field private enableRemuxVideoRes:I

.field private encodeProfile:I

.field private encodeStandard:I

.field private externalSettingsJsonStr:Ljava/lang/String;

.field private fps:I

.field private frameRate:I

.field private gopSize:I

.field private hasBFrame:Z

.field private iFrameInterval:I

.field private isSupportHWEncoder:Z

.field private mComment:Ljava/lang/String;

.field private mCompileSoftInfo:Z

.field private mDescription:Ljava/lang/String;

.field private mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

.field public mKeyFramePoints:[I

.field private mOptRemuxWithCopy:Z

.field private mReEncodeOpt:Z

.field private mRecordingMp4:Z

.field private mResolutionAlign:I

.field private mTransitionKeyFrameMode:I

.field private mTransitionKeyFrameVersion:I

.field private mTransitionKeyframeEnable:Z

.field private mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

.field private mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

.field private mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

.field private mvStillFramesPublishFps:I

.field private mvStillFramesWatermarkFps:I

.field private outputSize:Lcom/ss/android/vesdk/VESize;

.field private publishFps:I

.field private resizeMode:I

.field private resizeX:F

.field private resizeY:F

.field private rotate:I

.field private speed:F

.field private swCRF:I

.field private swMaxrate:J

.field private swPreset:I

.field private swQP:I

.field private swQPOffset:D

.field private watermarkSize:Lcom/ss/android/vesdk/VESize;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 939
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    const/4 v1, 0x2

    .line 380
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 394
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 408
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/16 v2, 0x240

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 415
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 422
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 429
    sget-object v5, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v5, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    const/high16 v5, 0x400000

    .line 437
    iput v5, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    const/16 v6, 0x1e

    .line 442
    iput v6, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    const/4 v6, 0x1

    .line 447
    iput v6, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    const/16 v7, 0x13

    .line 456
    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 463
    iput-wide v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    const/16 v7, 0xf

    .line 472
    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 479
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 486
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 493
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 500
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    const/16 v7, 0x3c

    .line 507
    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 514
    sget-object v7, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 521
    sget-object v7, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 528
    sget-object v7, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    const-wide/32 v7, 0xe4e1c0

    .line 535
    iput-wide v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 585
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 593
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    .line 601
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    .line 623
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 679
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 688
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    .line 697
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    .line 705
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    .line 713
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    const/16 v7, 0x10

    .line 720
    iput v7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 727
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    .line 733
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 810
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iput v2, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 811
    iput v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 812
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    iput v4, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 813
    iput v4, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 814
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 815
    iput v5, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    .line 816
    iput-boolean v6, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    .line 817
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 818
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->initFromVEConfigCenter()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    const/4 v1, 0x2

    .line 380
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 394
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 408
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/16 v2, 0x240

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 415
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 422
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 429
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    const/high16 v3, 0x400000

    .line 437
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    const/16 v3, 0x1e

    .line 442
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    const/4 v3, 0x1

    .line 447
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    const/16 v4, 0x13

    .line 456
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 463
    iput-wide v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    const/16 v4, 0xf

    .line 472
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 479
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 486
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 493
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 500
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    const/16 v4, 0x3c

    .line 507
    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 514
    sget-object v4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 521
    sget-object v4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 528
    sget-object v4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    const-wide/32 v4, 0xe4e1c0

    .line 535
    iput-wide v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 585
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 593
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    .line 601
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    .line 623
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 679
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 688
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    .line 697
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    .line 705
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    .line 713
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    const/16 v2, 0x10

    .line 720
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 727
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    .line 733
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 838
    const-class v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 844
    const-class v1, Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VESize;

    iput-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 845
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VESize;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    .line 846
    const-class v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_12e

    move v1, v3

    goto :goto_12f

    :cond_12e
    move v1, v0

    :goto_12f
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_139

    move v1, v3

    goto :goto_13a

    :cond_139
    move v1, v0

    :goto_13a
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_144

    move v1, v3

    goto :goto_145

    :cond_144
    move v1, v0

    :goto_145
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_14f

    move v1, v3

    goto :goto_150

    :cond_14f
    move v1, v0

    :goto_150
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_15a

    move v1, v3

    goto :goto_15b

    :cond_15a
    move v1, v0

    :goto_15b
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableInterLeave:Z

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_165

    move v1, v3

    goto :goto_166

    :cond_165
    move v1, v0

    :goto_166
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_170

    move v1, v3

    goto :goto_171

    :cond_170
    move v1, v0

    :goto_171
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 867
    const-class v1, Lcom/ss/android/vesdk/VEWatermarkParam;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEWatermarkParam;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    .line 868
    const-class v1, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iput-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 869
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1af

    move v1, v3

    goto :goto_1b0

    :cond_1af
    move v1, v0

    :goto_1b0
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1c6

    move v1, v3

    goto :goto_1c7

    :cond_1c6
    move v1, v0

    :goto_1c7
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mCompileSoftInfo:Z

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1d1

    move v1, v3

    goto :goto_1d2

    :cond_1d1
    move v1, v0

    :goto_1d2
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1dc

    move v1, v3

    goto :goto_1dd

    :cond_1dc
    move v1, v0

    :goto_1dd
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1e7

    move v1, v3

    goto :goto_1e8

    :cond_1e7
    move v1, v0

    :goto_1e8
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1f7

    move v0, v3

    :cond_1f7
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 880
    const-class v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VESize;Z)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    const/4 v1, 0x2

    .line 380
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 394
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 408
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/16 v2, 0x240

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 415
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 422
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 429
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    const/high16 v3, 0x400000

    .line 437
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    const/16 v3, 0x1e

    .line 442
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    const/4 v3, 0x1

    .line 447
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    const/16 v3, 0x13

    .line 456
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 463
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    const/16 v3, 0xf

    .line 472
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 479
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 486
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 493
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 500
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    const/16 v3, 0x3c

    .line 507
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 514
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 521
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 528
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    const-wide/32 v3, 0xe4e1c0

    .line 535
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 585
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 593
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    .line 601
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    .line 623
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 679
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 688
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    .line 697
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    .line 705
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    .line 713
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    const/16 v2, 0x10

    .line 720
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 727
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    .line 733
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 747
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 748
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    .line 749
    sget-object p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 750
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->initFromVEConfigCenter()V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VESize;ZII)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    const/4 v1, 0x2

    .line 380
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 394
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 408
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/16 v2, 0x240

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 415
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 422
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 429
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    const/high16 v3, 0x400000

    .line 437
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    const/16 v3, 0x1e

    .line 442
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    const/4 v3, 0x1

    .line 447
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    const/16 v3, 0x13

    .line 456
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 463
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    const/16 v3, 0xf

    .line 472
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 479
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 486
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 493
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 500
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    const/16 v3, 0x3c

    .line 507
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 514
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 521
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 528
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    const-wide/32 v3, 0xe4e1c0

    .line 535
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 585
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 593
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    .line 601
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    .line 623
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 679
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 688
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    .line 697
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    .line 705
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    .line 713
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    const/16 v2, 0x10

    .line 720
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 727
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    .line 733
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 767
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 768
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    .line 769
    iput p3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 770
    iput p4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 771
    sget-object p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 772
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->initFromVEConfigCenter()V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VESize;ZIIIIZ)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    const/4 v1, 0x2

    .line 380
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    .line 394
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    iput v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    .line 408
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/16 v2, 0x240

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 415
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 422
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    .line 429
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    const/high16 v3, 0x400000

    .line 437
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    const/16 v3, 0x1e

    .line 442
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    const/4 v3, 0x1

    .line 447
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    const/16 v3, 0x13

    .line 456
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 463
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    const/16 v3, 0xf

    .line 472
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    .line 479
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 486
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    .line 493
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    .line 500
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    const/16 v3, 0x3c

    .line 507
    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 514
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 521
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    .line 528
    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    const-wide/32 v3, 0xe4e1c0

    .line 535
    iput-wide v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    .line 585
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 593
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    .line 601
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    .line 679
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    .line 688
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    .line 697
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    .line 705
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    .line 713
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    const/16 v2, 0x10

    .line 720
    iput v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    .line 727
    iput-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    .line 733
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 793
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    .line 794
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    .line 795
    iput p3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 796
    iput p4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    .line 797
    iput p5, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    .line 798
    iput p6, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    .line 799
    iput-boolean p7, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    .line 800
    sget-object p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 801
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->initFromVEConfigCenter()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    return p0
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    return p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    return p1
.end method

.method static synthetic access$1200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return p0
.end method

.method static synthetic access$1302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return p1
.end method

.method static synthetic access$1400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    return p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    return p1
.end method

.method static synthetic access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    return p1
.end method

.method static synthetic access$1902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    return p0
.end method

.method static synthetic access$2402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    return p1
.end method

.method static synthetic access$2500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    return p0
.end method

.method static synthetic access$2502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    return p1
.end method

.method static synthetic access$2600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    return p0
.end method

.method static synthetic access$2602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    return p1
.end method

.method static synthetic access$2700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)J
    .registers 3

    .line 44
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    return p1
.end method

.method static synthetic access$2902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEWatermarkParam;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mCompileSoftInfo:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    return p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)D
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    return p0
.end method

.method static synthetic access$4502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I

    return p1
.end method

.method static synthetic access$4600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    return p0
.end method

.method static synthetic access$4602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I

    return p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    return p1
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    return p1
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    return p1
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    return p1
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    return p1
.end method

.method private bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F
    .registers 10

    .line 1339
    const-string p0, "VEVideoEncodeSettings"

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 1341
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1343
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/16 v3, 0x2cc

    const v4, 0x45dac000    # 7000.0f

    if-ge v3, p4, :cond_44

    const/16 v3, 0x2d4

    if-ge p4, v3, :cond_44

    if-eqz p2, :cond_32

    .line 1347
    const-string p1, "720P_HD"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_6c

    :catch_30
    move-exception p1

    goto :goto_86

    :cond_32
    cmpl-float p1, p3, v4

    if-nez p1, :cond_3d

    .line 1351
    const-string p1, "720P_Base_7Mb"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_6c

    .line 1353
    :cond_3d
    const-string p1, "720P"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_6c

    :cond_44
    const/16 p2, 0x434

    if-ge p2, p4, :cond_53

    const/16 p2, 0x441

    if-ge p4, p2, :cond_53

    .line 1358
    const-string p1, "1080P"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_6c

    :cond_53
    const/16 p2, 0x23c

    if-ge p2, p4, :cond_6c

    const/16 p2, 0x244

    if-ge p4, p2, :cond_6c

    cmpl-float p1, p3, v4

    if-nez p1, :cond_66

    .line 1362
    const-string p1, "576P_Base_7Mb"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_6c

    .line 1364
    :cond_66
    const-string p1, "576P"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :cond_6c
    :goto_6c
    if-nez p1, :cond_75

    .line 1368
    const-string p1, "bitrateRange json parse failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1371
    :cond_75
    :goto_75
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v1, p2, :cond_85

    .line 1372
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p2

    double-to-float p2, p2

    aput p2, v0, v1
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_82} :catch_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_85
    return-object v0

    .line 1376
    :goto_86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bitrateRange json str parse error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private get_adaptive_encode_bitrate(IIIIIFF[FF)F
    .registers 42

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    const/high16 v7, -0x40800000    # -1.0f

    .line 1400
    const-string v8, "VEVideoEncodeSettings"

    const/16 v9, 0x11

    if-eq v3, v9, :cond_20

    const/16 v10, 0x12

    if-eq v3, v10, :cond_20

    .line 1401
    const-string v0, "compileProbe pre_crf illegal"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_20
    move/from16 v10, p5

    .line 1405
    div-int/lit16 v10, v10, 0x3e8

    int-to-double v10, v10

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    double-to-int v10, v10

    .line 1406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compileProbe parameters encode_type ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pre_crf ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pre_maxrate ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pre_bitrate ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " pre_psnr ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " bitrate_base ="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " inlength ="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " outlength ="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x23c

    const v16, -0x42333333    # -0.1f

    const v17, 0x3e4ccccd    # 0.2f

    const/16 v18, 0x5

    const v19, 0x3ca3d70a    # 0.02f

    const v20, 0x3f828f5c    # 1.02f

    const/high16 v21, 0x3f800000    # 1.0f

    const v22, 0x3e3851ec    # 0.18f

    move/from16 p0, v7

    const/4 v7, 0x6

    const/16 v23, 0x0

    move/from16 v24, v9

    const/4 v9, 0x4

    const p5, 0x3f83d70a    # 1.03f

    const/4 v14, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x0

    const v27, 0x3f90a3d7    # 1.13f

    const/4 v15, 0x1

    if-ge v11, v0, :cond_114

    const/16 v11, 0x244

    if-ge v0, v11, :cond_114

    .line 1427
    new-array v11, v7, [F

    const v28, 0x3e6147ae    # 0.22f

    aput v28, v11, v26

    aput v17, v11, v15

    aput v22, v11, v25

    const v17, 0x3dcccccd    # 0.1f

    aput v17, v11, v14

    aput v19, v11, v9

    aput v16, v11, v18

    move/from16 v28, v15

    .line 1428
    new-array v15, v9, [F

    const v16, 0x3f6147ae    # 0.88f

    aput v16, v15, v26

    aput v21, v15, v28

    aput v27, v15, v25

    const v16, 0x3fa66666    # 1.3f

    aput v16, v15, v14

    .line 1429
    new-array v7, v9, [F

    const v16, -0x40e3d70a    # -0.61f

    aput v16, v7, v26

    aput v23, v7, v28

    const v16, 0x3f2147ae    # 0.63f

    aput v16, v7, v25

    const/high16 v16, 0x3fa00000    # 1.25f

    aput v16, v7, v14

    .line 1430
    new-array v9, v14, [F

    aput v20, v9, v26

    aput p5, v9, v28

    aput v20, v9, v25

    .line 1431
    new-array v1, v14, [F

    const v16, 0x3e23d70a    # 0.16f

    aput v16, v1, v26

    aput v22, v1, v28

    const v16, 0x3e570a3d    # 0.21f

    aput v16, v1, v25

    move/from16 v30, v14

    const/4 v14, 0x4

    .line 1432
    new-array v14, v14, [F

    const v16, 0x451c4000    # 2500.0f

    aput v16, v14, v26

    const v16, 0x455ac000    # 3500.0f

    aput v16, v14, v28

    const v16, 0x458ca000    # 4500.0f

    aput v16, v14, v25

    const v16, 0x45abe000    # 5500.0f

    aput v16, v14, v30

    move/from16 v16, v23

    goto/16 :goto_20b

    :cond_114
    move/from16 v30, v14

    move/from16 v28, v15

    const/16 v1, 0x2cc

    const v7, 0x3f9eb852    # 1.24f

    if-ge v1, v0, :cond_193

    const/16 v1, 0x2d4

    if-ge v0, v1, :cond_193

    const/4 v1, 0x6

    .line 1442
    new-array v11, v1, [F

    aput v17, v11, v26

    aput v22, v11, v28

    const v1, 0x3e19999a    # 0.15f

    aput v1, v11, v25

    const v9, 0x3c54fdf4    # 0.013f

    aput v9, v11, v30

    const/4 v14, 0x4

    aput v19, v11, v14

    aput v16, v11, v18

    .line 1443
    new-array v15, v14, [F

    const v9, 0x3f63d70a    # 0.89f

    aput v9, v15, v26

    aput v21, v15, v28

    aput v27, v15, v25

    const v9, 0x3fa3d70a    # 1.28f

    aput v9, v15, v30

    .line 1444
    new-array v9, v14, [F

    const v14, -0x40e66666    # -0.6f

    aput v14, v9, v26

    aput v23, v9, v28

    const v14, 0x3f1c28f6    # 0.61f

    aput v14, v9, v25

    aput v7, v9, v30

    move/from16 v7, v30

    .line 1445
    new-array v14, v7, [F

    const v16, 0x3f8147ae    # 1.01f

    aput v16, v14, v26

    aput v21, v14, v28

    const v16, 0x3f7d70a4    # 0.99f

    aput v16, v14, v25

    move/from16 p0, v1

    .line 1446
    new-array v1, v7, [F

    aput v22, v1, v26

    aput p0, v1, v28

    aput v22, v1, v25

    const/4 v7, 0x4

    .line 1447
    new-array v7, v7, [F

    const/high16 v16, 0x457a0000    # 4000.0f

    aput v16, v7, v26

    const v16, 0x459c4000    # 5000.0f

    aput v16, v7, v28

    const v16, 0x45bb8000    # 6000.0f

    aput v16, v7, v25

    const v17, 0x45dac000    # 7000.0f

    const/16 v30, 0x3

    aput v17, v7, v30

    move-object/from16 v31, v14

    move-object v14, v7

    move-object v7, v9

    move-object/from16 v9, v31

    goto/16 :goto_20b

    :cond_193
    const/16 v1, 0x434

    if-ge v1, v0, :cond_30a

    const/16 v1, 0x441

    if-ge v0, v1, :cond_30a

    const/4 v1, 0x6

    .line 1458
    new-array v11, v1, [F

    aput v19, v11, v26

    const v1, 0x3c23d70a    # 0.01f

    aput v1, v11, v28

    aput v23, v11, v25

    const/4 v1, 0x3

    aput v23, v11, v1

    const v9, -0x430a3d71    # -0.03f

    const/4 v14, 0x4

    aput v9, v11, v14

    const v9, -0x425c28f6    # -0.08f

    aput v9, v11, v18

    .line 1459
    new-array v15, v14, [F

    const v9, 0x3f5c28f6    # 0.86f

    aput v9, v15, v26

    aput v21, v15, v28

    const v9, 0x3f8ccccd    # 1.1f

    aput v9, v15, v25

    aput v7, v15, v1

    .line 1460
    new-array v7, v14, [F

    const v9, -0x40eb851f    # -0.58f

    aput v9, v7, v26

    aput v23, v7, v28

    const v9, 0x3ef5c28f    # 0.48f

    aput v9, v7, v25

    aput v21, v7, v1

    .line 1461
    new-array v9, v1, [F

    aput v20, v9, v26

    aput p5, v9, v28

    aput v20, v9, v25

    .line 1462
    new-array v14, v1, [F

    const v1, 0x3e75c28f    # 0.24f

    aput v1, v14, v26

    const/high16 v1, 0x3e800000    # 0.25f

    aput v1, v14, v28

    const v1, 0x3e8f5c29    # 0.28f

    aput v1, v14, v25

    const/4 v1, 0x4

    .line 1463
    new-array v1, v1, [F

    const v16, 0x4604d000    # 8500.0f

    aput v16, v1, v26

    const v16, 0x46147000    # 9500.0f

    aput v16, v1, v28

    const v16, 0x46241000    # 10500.0f

    aput v16, v1, v25

    const v17, 0x4633b000    # 11500.0f

    const/16 v30, 0x3

    aput v17, v1, v30

    move-object/from16 v31, v14

    move-object v14, v1

    move-object/from16 v1, v31

    :goto_20b
    const/4 v0, 0x7

    .line 1477
    new-array v0, v0, [F

    fill-array-data v0, :array_310

    add-int/lit8 v3, v3, -0x11

    .line 1479
    aget v15, v15, v3

    mul-float/2addr v4, v15

    .line 1480
    aget v7, v7, v3

    add-float/2addr v5, v7

    move/from16 v7, v28

    if-ne v2, v7, :cond_22b

    .line 1483
    aget v2, v9, v3

    mul-float/2addr v4, v2

    .line 1484
    aget v1, v1, v3

    add-float/2addr v5, v1

    const/16 v29, 0x6

    .line 1485
    aget v1, v0, v29

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1487
    :cond_22b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileProbe according to encoder_type the calculation pre_bitrate= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v1, p1, p2

    .line 1489
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_25a

    .line 1492
    array-length v1, v6

    const/16 v28, 0x1

    add-int/lit8 v1, v1, -0x1

    aget v1, v6, v1

    .line 1493
    aget v2, v6, v26

    move-object v14, v6

    goto :goto_26a

    :cond_25a
    const/16 v28, 0x1

    .line 1496
    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget v1, v14, v1

    .line 1497
    aget v2, v14, v26

    int-to-float v3, v10

    .line 1498
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move/from16 v13, v16

    :goto_26a
    sub-float v2, v1, v2

    int-to-float v3, v10

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move/from16 v2, v26

    const/4 v3, 0x6

    :goto_275
    if-ge v2, v3, :cond_289

    .line 1504
    aget v4, v0, v2

    cmpl-float v4, v5, v4

    if-lez v4, :cond_28c

    add-int/lit8 v4, v2, 0x1

    aget v4, v0, v4

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_28c

    .line 1505
    aget v0, v11, v2

    mul-float v23, v13, v0

    :cond_289
    move/from16 v0, v23

    goto :goto_28f

    :cond_28c
    add-int/lit8 v2, v2, 0x1

    goto :goto_275

    .line 1509
    :goto_28f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileProbe bitrate_offset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-float/2addr v1, v0

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileProbe before trans_bitrate= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    aget v0, v14, v26

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2bf

    goto :goto_2f3

    .line 1516
    :cond_2bf
    array-length v0, v14

    const/16 v28, 0x1

    add-int/lit8 v0, v0, -0x1

    aget v0, v14, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2ce

    .line 1517
    array-length v0, v14

    add-int/lit8 v26, v0, -0x1

    goto :goto_2f3

    :cond_2ce
    move/from16 v0, v26

    .line 1519
    :goto_2d0
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2f3

    .line 1520
    aget v2, v14, v0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2f0

    add-int/lit8 v3, v0, 0x1

    aget v4, v14, v3

    cmpg-float v5, v1, v4

    if-gez v5, :cond_2f0

    sub-float v2, v1, v2

    sub-float/2addr v4, v1

    cmpg-float v1, v2, v4

    if-gez v1, :cond_2ed

    move/from16 v26, v0

    goto :goto_2f3

    :cond_2ed
    move/from16 v26, v3

    goto :goto_2f3

    :cond_2f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d0

    .line 1532
    :cond_2f3
    :goto_2f3
    aget v0, v6, v26

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileProbe  trans_bitrate= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1473
    :cond_30a
    const-string v0, "compileProbe input resolution error"

    invoke-static {v8, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :array_310
    .array-data 4
        0x0
        0x42280000    # 42.0f
        0x42340000    # 45.0f
        0x42380000    # 46.0f
        0x42400000    # 48.0f
        0x42480000    # 50.0f
        0x42ca0000    # 101.0f
    .end array-data
.end method

.method private initFromVEConfigCenter()V
    .registers 6

    .line 822
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_enable_compile_buffer_hw_encode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_ENABLE_BUFFER_HW_COMPILE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VEVideoEncodeSettings"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v4, "ve_ban_hw_extra_data_loop"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AB isBanExtraDataLoop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "remux_video_res"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 827
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_94

    .line 828
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 829
    iput v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remuxVideoRes = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 832
    :cond_94
    const-string v0, "No remux video resolution config"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adjustVideoCompileEncodeSetting(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_3c

    .line 3221
    :cond_7
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    if-eqz p1, :cond_d

    .line 3222
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 3224
    :cond_d
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 3225
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 3226
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p0, p1, Lcom/ss/android/vesdk/VESize;->height:I

    return-void

    .line 3212
    :cond_22
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    if-eqz p1, :cond_28

    .line 3213
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 3215
    :cond_28
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 3216
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 3217
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p0, p1, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBitrateMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    .registers 1

    .line 1017
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0
.end method

.method public getBitrateValue()I
    .registers 3

    .line 1027
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$2;->$SwitchMap$com$ss$android$vesdk$VEVideoEncodeSettings$ENCODE_BITRATE_MODE:[I

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 1035
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result p0

    return p0

    .line 1037
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CompileTime BUG by SDK. Unhandled ENCODE_BITRATE_MODE enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1033
    :cond_23
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwQP()I

    move-result p0

    return p0

    .line 1031
    :cond_28
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwCRF()I

    move-result p0

    return p0

    .line 1029
    :cond_2d
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result p0

    return p0
.end method

.method public getBps()I
    .registers 1

    .line 1049
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return p0
.end method

.method public getComment()Ljava/lang/String;
    .registers 1

    .line 1847
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;

    return-object p0
.end method

.method public getCompileType()Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;
    .registers 1

    .line 957
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 1838
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableRemuxVideoRes()I
    .registers 1

    .line 1798
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    return p0
.end method

.method public getEncodeProfile()I
    .registers 1

    .line 1206
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    return p0
.end method

.method public getEncodeStandard()I
    .registers 1

    .line 1882
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    return p0
.end method

.method public getExternalSettingsJsonStr()Ljava/lang/String;
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    return-object p0
.end method

.method public getFitMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
    .registers 1

    .line 1914
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    return-object p0
.end method

.method public getFps()I
    .registers 1

    .line 978
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    return p0
.end method

.method public getFrameRate()I
    .registers 1

    .line 1057
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    return p0
.end method

.method public getGopSize()I
    .registers 1

    .line 1186
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    return p0
.end method

.method public getHwAdaptiveBitrate(ILcom/ss/android/vesdk/VECompileProbeResult;FLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/VEOptBitrate;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v2, p5

    .line 1552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compileProbe getHwAdaptiveBitrate  encode_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pre_crf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pre_maxrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pre_psnr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " pre_bitrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " inputsize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bitrate_base = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " compileProbeJSON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v13, "VEVideoEncodeSettings"

    invoke-static {v13, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v14, "compileProbe parse bitrate_Range : "

    if-eqz v2, :cond_12e

    .line 1568
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1569
    const-string v2, "compile"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1571
    const-string v9, "hw"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v15, "bitrate"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 1572
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v7, "full_hd_bitrate_ratio"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1573
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "sd_bitrate_ratio"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1574
    div-int/lit16 v8, v8, 0x3e8

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compileProbe bitratebase_HD= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "full_hd_bitrate_ratio= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "sd_bitrate_ratio= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x23c

    const/16 v9, 0x244

    if-le v1, v15, :cond_d0

    if-ge v1, v9, :cond_d0

    int-to-double v2, v8

    mul-double/2addr v2, v5

    double-to-float v2, v2

    .line 1584
    const-string v3, "compileProbe  576P_HD is not use optBitrate! "

    invoke-static {v13, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v1

    move v3, v2

    const/16 v15, 0x434

    goto/16 :goto_135

    :cond_d0
    const/16 v2, 0x434

    const/16 v5, 0x43c

    if-le v1, v2, :cond_df

    if-ge v1, v5, :cond_df

    int-to-double v6, v8

    mul-double/2addr v6, v3

    double-to-float v3, v6

    const/4 v4, 0x1

    const/16 v16, 0x2d0

    goto :goto_ee

    :cond_df
    const/16 v3, 0x2cc

    if-le v1, v3, :cond_ec

    const/16 v3, 0x2d4

    if-ge v1, v3, :cond_ec

    int-to-float v3, v8

    :goto_e8
    move/from16 v16, v1

    const/4 v4, 0x1

    goto :goto_ee

    :cond_ec
    const/4 v3, 0x0

    goto :goto_e8

    .line 1595
    :goto_ee
    invoke-direct {v0, v12, v4, v3, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F

    move-result-object v8

    const/4 v6, 0x0

    .line 1596
    :goto_f3
    array-length v7, v8

    if-ge v6, v7, :cond_10f

    .line 1597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v8, v6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x434

    goto :goto_f3

    :cond_10f
    move v2, v9

    move v9, v3

    .line 1599
    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    move v6, v4

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    move/from16 v17, v5

    iget v5, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    move v7, v6

    iget v6, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    move/from16 v18, v7

    iget v7, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    move/from16 v19, v2

    move/from16 v2, p1

    const/16 v15, 0x434

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->get_adaptive_encode_bitrate(IIIIIFF[FF)F

    move-result v2

    move v3, v2

    move v2, v9

    goto :goto_135

    :cond_12e
    const/16 v15, 0x434

    const/high16 v2, -0x40800000    # -1.0f

    move/from16 v16, v1

    move v3, v2

    .line 1607
    :goto_135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compileProbe bitrate_base_HD= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "transBitrate_HD= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-le v1, v15, :cond_15c

    const/16 v5, 0x43c

    if-ge v1, v5, :cond_15c

    const/16 v15, 0x2d0

    :goto_159
    const/16 v4, 0x23c

    goto :goto_15f

    :cond_15c
    move/from16 v15, v16

    goto :goto_159

    :goto_15f
    if-le v1, v4, :cond_183

    const/16 v9, 0x244

    if-ge v1, v9, :cond_183

    const v4, 0x45c4e000    # 6300.0f

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_172

    const/high16 v4, 0x45af0000    # 5600.0f

    cmpl-float v4, v11, v4

    if-nez v4, :cond_174

    :cond_172
    const/4 v4, 0x0

    goto :goto_17a

    :cond_174
    const/4 v4, 0x0

    .line 1620
    invoke-direct {v0, v12, v4, v11, v15}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F

    move-result-object v5

    goto :goto_181

    :goto_17a
    const v5, 0x45dac000    # 7000.0f

    .line 1618
    invoke-direct {v0, v12, v4, v5, v15}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F

    move-result-object v5

    :goto_181
    move-object v8, v5

    goto :goto_189

    :cond_183
    const/4 v4, 0x0

    .line 1623
    invoke-direct {v0, v12, v4, v11, v15}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F

    move-result-object v5

    goto :goto_181

    .line 1626
    :goto_189
    array-length v5, v8

    if-ge v4, v5, :cond_1a3

    .line 1627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v8, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_189

    .line 1629
    :cond_1a3
    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    move v5, v3

    move v3, v4

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    move v6, v5

    iget v5, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    move v7, v6

    iget v6, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    move v9, v7

    iget v7, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    move v12, v9

    move v9, v11

    move v11, v2

    move v2, v15

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->get_adaptive_encode_bitrate(IIIIIFF[FF)F

    move-result v0

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileProbe bitrate_base= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "transBitrate= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget v1, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->bitrateStrategy:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e8

    cmpl-float v1, v9, v0

    if-lez v1, :cond_1e0

    move v0, v9

    :cond_1e0
    cmpl-float v1, v11, v12

    if-lez v1, :cond_1e6

    :goto_1e4
    move v2, v11

    goto :goto_1f5

    :cond_1e6
    move v2, v12

    goto :goto_1f5

    :cond_1e8
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e6

    cmpg-float v1, v9, v0

    if-gez v1, :cond_1f0

    move v0, v9

    :cond_1f0
    cmpg-float v1, v11, v12

    if-gez v1, :cond_1e6

    goto :goto_1e4

    :goto_1f5
    cmpl-float v1, v0, v9

    if-ltz v1, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    move v9, v0

    :goto_1fb
    cmpl-float v1, v2, v11

    if-ltz v1, :cond_200

    goto :goto_201

    :cond_200
    move v11, v2

    .line 1663
    :goto_201
    new-instance v1, Lcom/ss/android/vesdk/VEOptBitrate;

    invoke-direct {v1, v9, v0, v11, v2}, Lcom/ss/android/vesdk/VEOptBitrate;-><init>(FFFF)V

    .line 1665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compileProbe parameters  min_transBitrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " transBitrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " min_transBitrate_HD = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " transBitrate_HD = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getIFrameInterval()I
    .registers 1

    .line 1065
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    return p0
.end method

.method public getKeyFramePoints()[I
    .registers 1

    .line 1891
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    return-object p0
.end method

.method public getMVStillFramesPublishFps()I
    .registers 1

    .line 998
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    return p0
.end method

.method public getMVStillFramesWatermarkFps()I
    .registers 1

    .line 1008
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    return p0
.end method

.method public getPublishFps()I
    .registers 1

    .line 988
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    return p0
.end method

.method public getResizeMode()I
    .registers 1

    .line 1138
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    return p0
.end method

.method public getResizeX()F
    .registers 1

    .line 1142
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    return p0
.end method

.method public getResizeY()F
    .registers 1

    .line 1146
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    return p0
.end method

.method public getResolutionAlignment()I
    .registers 1

    .line 1899
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    return p0
.end method

.method public getRotate()I
    .registers 1

    .line 1134
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    return p0
.end method

.method public getSpeed()F
    .registers 1

    .line 968
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    return p0
.end method

.method public getSwCRF()I
    .registers 1

    .line 1075
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    return p0
.end method

.method public getSwMaxRate()J
    .registers 3

    .line 1094
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    return-wide v0
.end method

.method public getSwPreset()I
    .registers 1

    .line 1196
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    return p0
.end method

.method public getSwQP()I
    .registers 1

    .line 1085
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    return p0
.end method

.method public getVideoCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 1

    .line 1230
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-object p0
.end method

.method public getVideoRes()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 1104
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getWatermarkCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 1

    .line 1220
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-object p0
.end method

.method public getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;
    .registers 1

    .line 1210
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    return-object p0
.end method

.method public getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 1114
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public isBanExtraDataLoop()Z
    .registers 1

    .line 1907
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    return p0
.end method

.method public isCompileSoftInfo()Z
    .registers 1

    .line 1857
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mCompileSoftInfo:Z

    return p0
.end method

.method public isEnableAvInterLeave()Z
    .registers 1

    .line 3172
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    return p0
.end method

.method public isEnableByteVCRemuxVideo()Z
    .registers 1

    .line 1176
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z

    return p0
.end method

.method public isEnableHwBufferEncode()Z
    .registers 1

    .line 1166
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    return p0
.end method

.method public isEnableInterLeave()Z
    .registers 1

    .line 3153
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableInterLeave:Z

    return p0
.end method

.method public isEnableRemuxVideo()Z
    .registers 1

    .line 3093
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    return p0
.end method

.method public isEnableRemuxVideoForRotation()Z
    .registers 1

    .line 3102
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    return p0
.end method

.method public isEnableRemuxVideoForShoot()Z
    .registers 1

    .line 3111
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    return p0
.end method

.method public isEnableRemuxVideoRes()I
    .registers 1

    .line 3121
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    return p0
.end method

.method public isHasBFrame()Z
    .registers 1

    .line 3163
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    return p0
.end method

.method public isOptRemuxWithCopy()Z
    .registers 1

    .line 1829
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z

    return p0
.end method

.method public isReEncodeOpt()Z
    .registers 1

    .line 1873
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    return p0
.end method

.method public isRecordingMp4()Z
    .registers 1

    .line 1865
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    return p0
.end method

.method public isSupportHwEnc()Z
    .registers 1

    .line 1156
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    return p0
.end method

.method public setBps(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2948
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_VBR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 2949
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return-void
.end method

.method public setCompileType(Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;)V
    .registers 2

    .line 3264
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    return-void
.end method

.method public setEnableAvInterLeave(Z)V
    .registers 2

    .line 3143
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    return-void
.end method

.method public setEnableInterLeave(Z)V
    .registers 2

    .line 3132
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableInterLeave:Z

    return-void
.end method

.method public setEnableRemuxVideo(Z)V
    .registers 2

    .line 3046
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    return-void
.end method

.method public setEnableRemuxVideo(ZZ)V
    .registers 3

    .line 3060
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    .line 3061
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    return-void
.end method

.method public setEnableRemuxVideoBitrate(I)V
    .registers 2

    .line 1818
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoBitrate:I

    return-void
.end method

.method public setEnableRemuxVideoFPS(I)V
    .registers 2

    .line 1808
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoFPS:I

    return-void
.end method

.method public setEnableRemuxVideoForRotation(Z)V
    .registers 2

    .line 3073
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    return-void
.end method

.method public setEnableRemuxVideoForShoot(Z)V
    .registers 2

    .line 3084
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    return-void
.end method

.method public setEnableRemuxVideoRes(I)V
    .registers 2

    .line 1788
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoRes:I

    return-void
.end method

.method public setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)V
    .registers 2

    .line 3253
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    return-void
.end method

.method public setFitMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;)V
    .registers 2

    .line 3342
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    return-void
.end method

.method public setFps(I)V
    .registers 2

    .line 2886
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    const/4 p1, -0x1

    .line 2887
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    return-void
.end method

.method public setFps(II)V
    .registers 3

    if-lez p2, :cond_9

    if-ge p2, p1, :cond_9

    .line 2899
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    .line 2900
    iput p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    return-void

    .line 2902
    :cond_9
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    const/4 p1, -0x1

    .line 2903
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    return-void
.end method

.method public setGopSize(I)V
    .registers 2

    .line 3183
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    return-void
.end method

.method public setMVStillFramesPublishFps(I)V
    .registers 2

    .line 2914
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    return-void
.end method

.method public setMVStillFramesWatermarkFps(I)V
    .registers 2

    .line 2924
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    return-void
.end method

.method public setQP(I)V
    .registers 3

    .line 3333
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 3334
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    return-void
.end method

.method public setResizeMode(I)V
    .registers 2

    .line 2998
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    return-void
.end method

.method public setResizeX(F)V
    .registers 2

    .line 3010
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    return-void
.end method

.method public setResizeY(F)V
    .registers 2

    .line 3022
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    return-void
.end method

.method public setRotate(I)V
    .registers 2

    .line 2986
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    return-void
.end method

.method public setSWCRF(I)V
    .registers 3

    .line 3318
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 3319
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    .line 2935
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    return-void
.end method

.method public setSupportHwEnc(Z)V
    .registers 2

    .line 3034
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    return-void
.end method

.method public setSwPreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)V
    .registers 2

    .line 3242
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    return-void
.end method

.method public setVideoBitrate(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;I)V
    .registers 4

    .line 3277
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 3279
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$2;->$SwitchMap$com$ss$android$vesdk$VEVideoEncodeSettings$ENCODE_BITRATE_MODE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    .line 3296
    iput p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return-void

    .line 3301
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CompileTime BUG by sdk. Unhandled bitrateMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3291
    :cond_21
    iput p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    return-void

    .line 3286
    :cond_24
    iput p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    return-void

    .line 3281
    :cond_27
    iput p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    return-void
.end method

.method public setVideoHWoptBitrate(IFZ)F
    .registers 16

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compileProbe setVideoHWoptBitrate start! optBitrate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEVideoEncodeSettings"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v2, p2, v0

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_23

    .line 1269
    const-string p0, "compileProbe HW setVideoHWoptBitrate optBitrate error"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1273
    :cond_23
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iget v4, v2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1274
    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1275
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v4, p1, v2

    .line 1276
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x2d4

    const/16 v6, 0x2cc

    const/16 v7, 0x244

    const/16 v8, 0x23c

    const/16 v9, 0x8

    if-le p1, v8, :cond_41

    if-lt p1, v7, :cond_45

    :cond_41
    if-le p1, v6, :cond_4d

    if-ge p1, v5, :cond_4d

    :cond_45
    if-le v4, v9, :cond_4d

    .line 1280
    const-string p0, "compileProbe 576P || 720P: output resolution is not as expected"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4d
    const/16 v10, 0x441

    const/16 v11, 0x434

    if-le p1, v11, :cond_68

    if-ge p1, v10, :cond_68

    const/4 p1, 0x1

    if-ne p3, p1, :cond_60

    if-le v4, v9, :cond_68

    .line 1288
    const-string p0, "compileProbe 1080P_HD: output resolution is not as expected"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_60
    if-ge v4, v9, :cond_68

    .line 1293
    const-string p0, "compileProbe 1080P: output resolution is not as expected"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_68
    const/high16 p1, 0x447a0000    # 1000.0f

    if-le v2, v6, :cond_7b

    if-ge v2, v5, :cond_7b

    .line 1302
    iget-object p3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object p3, p3, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, p3, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float p3, v2

    :goto_78
    sub-float v0, p2, p3

    goto :goto_a8

    :cond_7b
    if-le v2, v8, :cond_98

    if-ge v2, v7, :cond_98

    if-nez p3, :cond_8f

    float-to-double p2, p2

    .line 1306
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v0, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    div-double/2addr p2, v2

    double-to-float p2, p2

    .line 1307
    iget-wide v2, v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    :goto_8c
    long-to-float p3, v2

    div-float/2addr p3, p1

    goto :goto_78

    .line 1309
    :cond_8f
    iget-object p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object p2, p2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide p2, p2, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-float p2, p2

    div-float/2addr p2, p1

    goto :goto_a8

    :cond_98
    if-le v2, v11, :cond_cd

    if-ge v2, v10, :cond_cd

    float-to-double p2, p2

    .line 1313
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v0, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    div-double/2addr p2, v2

    double-to-float p2, p2

    .line 1314
    iget-wide v2, v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_8c

    :goto_a8
    mul-float/2addr p2, p1

    .line 1322
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object p0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    float-to-long v2, p2

    iput-wide v2, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    .line 1323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "compileProbe HW setVideoHWoptBitrate end! optBitrate= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " diff_bitrate ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1317
    :cond_cd
    const-string p0, "compileProbe output resolution error"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public setVideoHWoptBitrate(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VECompileProbeResult;Ljava/lang/String;)Lcom/ss/android/vesdk/VEAdaptionResult;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileProbe setVideoHWoptBitrate  encode_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pre_crf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pre_maxrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pre_psnr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " pre_bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " inputWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " inputHeigh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "VEVideoEncodeSettings"

    invoke-static {v11, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    new-instance v12, Lcom/ss/android/vesdk/VEAdaptionResult;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v12, v2, v2}, Lcom/ss/android/vesdk/VEAdaptionResult;-><init>(FF)V

    .line 1689
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iget v3, v2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1690
    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1691
    new-instance v4, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v4, v3, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 1694
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1695
    iget v3, v1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v13, 0x244

    const/16 v14, 0x23c

    if-le v1, v14, :cond_8a

    if-ge v1, v13, :cond_8a

    .line 1698
    iget-boolean v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->enableHD:Z

    if-eqz v3, :cond_8a

    .line 1699
    const-string v0, "compileProbe 576P_useHd do not support hw adaptation"

    invoke-static {v11, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 1703
    :cond_8a
    iget-object v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v3, v3, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v3, v3, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v3, v3

    .line 1705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compileProbe mbitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-boolean v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->enableHD:Z

    move-object/from16 v5, p3

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateRangeSettingsJsonStr(Ljava/lang/String;ZFI)[F

    move-result-object v8

    if-nez v8, :cond_b8

    .line 1709
    const-string v0, "compileProbe parse bitrateRangeSettingsJsonStr fail"

    invoke-static {v11, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_b8
    const/4 v3, 0x0

    .line 1712
    :goto_b9
    array-length v4, v8

    if-ge v3, v4, :cond_d5

    .line 1713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compileProbe parse bitrate_Range : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v8, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    :cond_d5
    const/16 v15, 0x441

    const/16 v3, 0x434

    if-ge v14, v2, :cond_e9

    if-ge v2, v13, :cond_e9

    .line 1718
    iget-object v4, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v4, v4, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v5, v4, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-double v5, v5

    iget-wide v13, v4, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    :goto_e6
    mul-double/2addr v5, v13

    double-to-float v4, v5

    goto :goto_107

    :cond_e9
    const/16 v4, 0x2cc

    if-ge v4, v2, :cond_f9

    const/16 v4, 0x2d4

    if-ge v2, v4, :cond_f9

    .line 1720
    iget-object v4, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v4, v4, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v4, v4, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-float v4, v4

    goto :goto_107

    :cond_f9
    if-ge v3, v2, :cond_1b0

    if-ge v2, v15, :cond_1b0

    .line 1722
    iget-object v4, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v4, v4, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v5, v4, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-double v5, v5

    iget-wide v13, v4, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    goto :goto_e6

    :goto_107
    const/high16 v13, 0x447a0000    # 1000.0f

    div-float v9, v4, v13

    move v4, v3

    .line 1729
    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    move v5, v4

    iget v4, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    move v6, v5

    iget v5, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    move v7, v6

    iget v6, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    move v14, v7

    iget v7, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->get_adaptive_encode_bitrate(IIIIIFF[FF)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_129

    .line 1733
    const-string v0, "compileProbe get adaptive encode bitrate error"

    invoke-static {v11, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 1739
    :cond_129
    iget v3, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->bitrateStrategy:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_134

    cmpl-float v3, v9, v1

    if-lez v3, :cond_13c

    goto :goto_13a

    :cond_134
    if-ne v3, v4, :cond_13c

    cmpg-float v3, v9, v1

    if-gez v3, :cond_13c

    :goto_13a
    move v3, v9

    goto :goto_13d

    :cond_13c
    move v3, v1

    :goto_13d
    sub-float v6, v3, v9

    .line 1750
    new-instance v7, Lcom/ss/android/vesdk/VEAdaptionResult;

    invoke-direct {v7, v3, v6}, Lcom/ss/android/vesdk/VEAdaptionResult;-><init>(FF)V

    const/16 v3, 0x23c

    if-ge v3, v2, :cond_155

    const/16 v3, 0x244

    if-ge v2, v3, :cond_155

    .line 1753
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v2, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v2, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    :goto_152
    double-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_160

    :cond_155
    if-ge v14, v2, :cond_160

    if-ge v2, v15, :cond_160

    .line 1756
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v2, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v2, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    goto :goto_152

    .line 1760
    :cond_160
    :goto_160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileProbe before optBitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-float/2addr v1, v13

    .line 1764
    iget v2, v10, Lcom/ss/android/vesdk/VECompileProbeResult;->bitrateStrategy:I

    if-ne v2, v5, :cond_186

    .line 1765
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v2, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v2, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-float v4, v2

    cmpl-float v4, v4, v1

    if-lez v4, :cond_194

    :goto_184
    long-to-float v1, v2

    goto :goto_194

    :cond_186
    if-ne v2, v4, :cond_194

    .line 1769
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v2, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-wide v2, v2, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    long-to-float v4, v2

    cmpg-float v4, v4, v1

    if-gez v4, :cond_194

    goto :goto_184

    .line 1774
    :cond_194
    :goto_194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileProbe  optBitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v0, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object v0, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    return-object v7

    .line 1724
    :cond_1b0
    const-string v0, "compileProbe output resolution error"

    invoke-static {v11, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public setVideoHwEnc(Z)Z
    .registers 3

    .line 1241
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-boolean v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->isSupportHWEncoder:Z

    if-eqz v0, :cond_9

    .line 1242
    iput-boolean p1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    .line 1244
    iput-boolean p1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    .line 1247
    :goto_c
    iget-boolean p0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    return p0
.end method

.method public setVideoRes(II)V
    .registers 3

    .line 2961
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2962
    iput p2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method public setVideoSWOptCrf(I)V
    .registers 2

    .line 1257
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    iget-object p0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iput p1, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    return-void
.end method

.method public setWatermark(Lcom/ss/android/vesdk/VEWatermarkParam;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 3192
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEWatermarkParam;->getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3193
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    goto :goto_10

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p1, 0x0

    .line 3198
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public setWatermarkVideoRes(II)V
    .registers 3

    .line 2974
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2975
    iput p2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEVideoEncodeSettings{compileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resizeX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resizeY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", outputSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watermarkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swCRF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swQPOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", swQP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publishFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvStillFramesPublishFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvStillFramesWatermarkFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gopSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swMaxrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportHWEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableHwBufferEncode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRemuxVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRemuxVideoForRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableRemuxVideoForShoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableByteVCRemuxVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableInterLeave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableInterLeave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableAvInterLeave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasBFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWatermarkParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoWatermarkCompileEncodeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoCompileEncodeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOptRemuxWithCopy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReEncodeOpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDescripiton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFitMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 887
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 888
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 891
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 892
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 893
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 894
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 895
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 896
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 903
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 909
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 910
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 911
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 912
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableInterLeave:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 913
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 914
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 915
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 917
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 918
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 919
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 921
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mCompileSoftInfo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 924
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 925
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 926
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 927
    iget v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 929
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 930
    iget p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
