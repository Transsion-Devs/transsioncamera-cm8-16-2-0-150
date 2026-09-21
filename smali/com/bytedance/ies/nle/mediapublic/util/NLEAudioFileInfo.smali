.class public final Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channelSize:I

.field private duration:I

.field private sampleFormat:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChannelSize()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->channelSize:I

    return p0
.end method

.method public final getDuration()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->duration:I

    return p0
.end method

.method public final getSampleFormat()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->sampleFormat:I

    return p0
.end method

.method public final getSampleRate()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->sampleRate:I

    return p0
.end method

.method public final setChannelSize(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->channelSize:I

    return-void
.end method

.method public final setDuration(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->duration:I

    return-void
.end method

.method public final setSampleFormat(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->sampleFormat:I

    return-void
.end method

.method public final setSampleRate(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->sampleRate:I

    return-void
.end method
