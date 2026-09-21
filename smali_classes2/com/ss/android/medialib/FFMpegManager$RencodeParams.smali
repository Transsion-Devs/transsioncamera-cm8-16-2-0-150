.class public Lcom/ss/android/medialib/FFMpegManager$RencodeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/FFMpegManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RencodeParams"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public encoderListener:Lcom/ss/android/medialib/FFMpegManager$EncoderListener;

.field public fillBackgroundColor:I

.field public fullFrame:Z

.field public fullScreen:Z

.field public gop:I

.field public height:I

.field public inpoint:J

.field public isCPUEncode:Z

.field public maxrate:I

.field public minDurationInMs:I

.field public outpoint:J

.field public outputWav:Ljava/lang/String;

.field public pos:I

.field public preset:I

.field public quality:I

.field public readfrom:Ljava/lang/String;

.field public rotateAngle:I

.field public saveto:Ljava/lang/String;

.field public screenWidth:I

.field public segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private speed:F

.field public userDevice:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->readfrom:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->saveto:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->outputWav:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->inpoint:J

    .line 108
    iput-wide v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->outpoint:J

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->screenWidth:I

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->fullScreen:Z

    .line 114
    iput v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->pos:I

    .line 116
    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->userDevice:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->comment:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 122
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->speed:F

    .line 124
    iput-boolean v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->fullFrame:Z

    const/16 v0, 0xbb8

    .line 126
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->minDurationInMs:I

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->width:I

    .line 130
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->height:I

    .line 132
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->quality:I

    .line 134
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->gop:I

    .line 136
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->preset:I

    .line 138
    iput v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->maxrate:I

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->isCPUEncode:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->encoderListener:Lcom/ss/android/medialib/FFMpegManager$EncoderListener;

    .line 151
    iput v1, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->fillBackgroundColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/FFMpegManager$RencodeParams;)F
    .registers 1

    .line 98
    iget p0, p0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->speed:F

    return p0
.end method
