.class public Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VEAVFileInfo"
.end annotation


# static fields
.field public static final MAX_AUDIO_NUM:I = 0x4

.field public static final TEAVFileType_Audio:I = 0x2

.field public static final TEAVFileType_AudioVideo:I = 0x0

.field public static final TEAVFileType_Camera:I = 0x4

.field public static final TEAVFileType_Color:I = 0x5

.field public static final TEAVFileType_Image:I = 0x3

.field public static final TEAVFileType_ImageVideo:I = 0x6

.field public static final TEAVFileType_Unknown:I = -0x1

.field public static final TEAVFileType_Video:I = 0x1


# instance fields
.field public audioStreamInfos:[Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

.field public dataRate:I

.field public duration:I

.field public isHdr:Z

.field public numAudioStreams:I

.field public numVideoStreams:I

.field public type:I

.field public videoStreamInfo:Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->videoStreamInfo:Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;

    const/4 v0, 0x4

    .line 424
    new-array v0, v0, [Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->audioStreamInfos:[Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

    return-void
.end method
